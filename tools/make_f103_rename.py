#!/usr/bin/env python3
"""把打好补丁的两个 dex 和应用清单升级为 F1.0.3 / versionCode 195。

改动点
  classes2.dex   F1.0.2 -> F1.0.3（2 处）
  classes3.dex   RikkaHub F1.0.2 #194 -> RikkaHub F1.0.3 #195，其余 F1.0.2 -> F1.0.3
  AndroidManifest.xml  字符串池 F1.0.2 -> F1.0.3，versionCode 194 -> 195

全部等长替换，dex 字符串池的排序位置与相邻字符串的相对次序不变。
改完重算 dex 头的 SHA-1 与 Adler32。建议再用 dexlib 校验乱序计数为 0。

用法：
    python3 make_f103_rename.py <工作目录> <AndroidManifest.xml 路径>

工作目录里需要有 classes2_patched_fix.dex 与 classes3_patched.dex。
"""
import hashlib
import os
import shutil
import struct
import sys
import zlib

WORK = sys.argv[1] if len(sys.argv) > 1 else "."
MF = sys.argv[2] if len(sys.argv) > 2 else os.path.join(WORK, "AndroidManifest.xml")

OLD_VER = b"F1.0.2"
NEW_VER = b"F1.0.3"


def fix_dex(src, dst, extra=None):
    shutil.copyfile(src, dst)
    d = bytearray(open(dst, "rb").read())
    if extra:
        old, new = extra
        assert len(old) == len(new), "额外替换必须等长"
        c = d.count(old)
        d = bytearray(bytes(d).replace(old, new))
        print("  额外替换 %r -> %r：%d 处" % (old, new, c))
    c = d.count(OLD_VER)
    d = bytearray(bytes(d).replace(OLD_VER, NEW_VER))
    print("  版本号替换 %r -> %r：%d 处" % (OLD_VER, NEW_VER, c))
    d[12:32] = hashlib.sha1(bytes(d[32:])).digest()
    struct.pack_into("<I", d, 8, zlib.adler32(bytes(d[12:])) & 0xFFFFFFFF)
    open(dst, "wb").write(bytes(d))
    print("  写出 %s（%d 字节）" % (dst, len(d)))


print("=== classes2.dex ===")
fix_dex(os.path.join(WORK, "classes2_patched_fix.dex"), os.path.join(WORK, "classes2_f103.dex"))

print("=== classes3.dex ===")
fix_dex(os.path.join(WORK, "classes3_patched.dex"), os.path.join(WORK, "classes3_f103.dex"),
        extra=(b"RikkaHub F1.0.2 #194", b"RikkaHub F1.0.3 #195"))

print("=== AndroidManifest.xml ===")
d = bytearray(open(MF, "rb").read())
old16 = "F1.0.2".encode("utf-16-le")
new16 = "F1.0.3".encode("utf-16-le")
cnt = bytes(d).count(old16)
print("  UTF-16 版本号出现 %d 处" % cnt)
assert cnt == 1, "预期字符串池里只有一处版本号，实际 %d 处" % cnt
d = bytearray(bytes(d).replace(old16, new16))

# versionCode 属性位于 manifest 起始元素内，data 字段偏移 0x3694（本 APK）
OFF = 0x3694
old_vc = struct.unpack_from("<I", d, OFF)[0]
print("  versionCode 原值 %d @0x%x" % (old_vc, OFF))
assert old_vc == 194, "versionCode 不是 194 而是 %d，偏移可能不适用于这个清单" % old_vc
struct.pack_into("<I", d, OFF, 195)

out = os.path.join(WORK, "AndroidManifest_f103.xml")
open(out, "wb").write(bytes(d))
print("  写出 %s，versionCode=195 versionName=F1.0.3" % out)

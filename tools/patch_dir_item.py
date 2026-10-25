#!/usr/bin/env python3
"""修复四：让空目录不再写入备份清单。

把 UbuntuEnvironmentBackup.collect 里的空目录判定
    if-nez v0, :cond_1b      (opcode 0x39, 2 code units)
改成无条件跳转
    goto/16 :cond_1b         (opcode 0x29, 2 code units)

两者长度相同、操作数位置相同。这里寄存器正好是 v0，
满足 goto/16 对 AA 必须为 0 的要求，所以只改 1 个字节，
代码长度与全部偏移不变，只需重算 dex 头的 SHA-1 与 Adler32。

用法：
    python3 patch_dir_item.py 输入dex 输出dex [文件偏移]
文件偏移默认 0xdde3d4，对应 F1.0.2 / F1.0.3 的 classes2.dex。
换 dex 时先用 dexlib 之类工具定位该方法，再传偏移。
"""
import hashlib
import struct
import sys
import zlib

SRC = sys.argv[1] if len(sys.argv) > 1 else "classes2.dex"
DST = sys.argv[2] if len(sys.argv) > 2 else "classes2_patched_fix.dex"
OFF = int(sys.argv[3], 0) if len(sys.argv) > 3 else 0xDDE3D4

EXPECT = bytes([0x39, 0x00, 0xA1, 0xFF])

d = bytearray(open(SRC, "rb").read())
cur = bytes(d[OFF:OFF + 4])
print("偏移 0x%x 原始字节: %s" % (OFF, cur.hex()))
if cur != EXPECT:
    sys.exit("字节不匹配，期望 %s。偏移可能不适用于这个 dex。" % EXPECT.hex())

d[OFF] = 0x29
print("已改: %s （if-nez -> goto/16）" % bytes(d[OFF:OFF + 4]).hex())

d[12:32] = hashlib.sha1(bytes(d[32:])).digest()
struct.pack_into("<I", d, 8, zlib.adler32(bytes(d[12:])) & 0xFFFFFFFF)

open(DST, "wb").write(bytes(d))
print("写出 %s，%d 字节，signature 与 checksum 已重算" % (DST, len(d)))

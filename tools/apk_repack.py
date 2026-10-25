#!/usr/bin/env python3
"""按原顺序重打包 APK：保留每条目的压缩方式，剔除旧签名，可替换指定条目。

为什么不用 zip 工具手工重打：APK 要求 resources.arsc 不压缩、条目顺序稳定，
重打后还要 zipalign 和 apksigner。这个脚本只负责「换内容、保结构」。

用法：
  python3 apk_repack.py --src in.apk --out out.apk \
      [--replace classes3.dex=/path/classes3_new.dex] \
      [--replace AndroidManifest.xml=/path/patched.xml] \
      [--keep-v1]

输出：out.apk（未对齐、未签名，接着跑 zipalign 与 apksigner）
"""
import argparse
import os
import sys
import zipfile

SIG_SUFFIX = ('.SF', '.RSA', '.DSA', '.EC')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--src', required=True)
    ap.add_argument('--out', required=True)
    ap.add_argument('--replace', action='append', default=[], metavar='NAME=PATH')
    ap.add_argument('--keep-v1', action='store_true', help='保留旧 META-INF 签名文件（一般不要）')
    args = ap.parse_args()

    repl = {}
    for item in args.replace:
        name, path = item.split('=', 1)
        repl[name] = path

    src = zipfile.ZipFile(args.src)
    missing = set(repl) - set(src.namelist())
    if missing:
        print('源包里没有这些条目：%s' % sorted(missing))
        return 2

    done = set()
    with zipfile.ZipFile(args.out, 'w') as out:
        for info in src.infolist():
            name = info.filename
            if not args.keep_v1:
                if name.startswith('META-INF/') and name.endswith(SIG_SUFFIX):
                    continue
                if name == 'META-INF/MANIFEST.MF':
                    continue
            if name in repl:
                data = open(repl[name], 'rb').read()
                done.add(name)
                print('替换 %s <- %s (%d 字节)' % (name, repl[name], len(data)))
            else:
                data = src.read(name)
            zi = zipfile.ZipInfo(name, date_time=(1981, 1, 1, 1, 1, 0))
            zi.compress_type = info.compress_type
            zi.external_attr = info.external_attr
            zi.internal_attr = info.internal_attr
            zi.create_system = 0
            out.writestr(zi, data)

    not_used = set(repl) - done
    if not_used:
        print('这些替换项没被使用：%s' % sorted(not_used))
        return 3
    print('写盘 %s（%d 字节）' % (args.out, os.path.getsize(args.out)))
    print('下一步：')
    print('  zipalign -f -p 4 %s aligned.apk' % args.out)
    print('  apksigner sign --ks KEY.jks --ks-key-alias ALIAS --ks-pass pass:PASS '
          '--key-pass pass:PASS --v1-signing-enabled false --v2-signing-enabled true '
          '--v3-signing-enabled true --out signed.apk aligned.apk')
    return 0


if __name__ == '__main__':
    sys.exit(main())

"""Build v5b: applicationId -> me.test.rikkahub (length differs, so the AXML
string pool is rebuilt), classes3.dex rebuilt by smali (authority rename +
BubbleStylePicker AndroidView nop), classes2.dex carries the DeepSeek dedupe.

编写时间：2026-10-21 08:50
输入：../rikkahub-2.0.01-arm64-v8a.apk
输出：../build/rikkahub-F1.0.2-fuiviokd-unsigned.apk
"""
import os
import struct
import sys
import zipfile

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from axml import StringPool

SRC = '../rikkahub-2.0.01-arm64-v8a.apk'
OUTDIR = '../build'
OUT = os.path.join(OUTDIR, 'rikkahub-F1.0.2-fuiviokd-unsigned.apk')

OLD = 'me.rerere.rikkahub'
NEW = 'fuiviokd.re.rikka'

MANIFEST_TARGETS = [
    'me.rerere.rikkahub',
    'me.rerere.rikkahub.androidx-startup',
    'me.rerere.rikkahub.documents',
    'me.rerere.rikkahub.fileprovider',
    'me.rerere.rikkahub.fx.provider',
    'me.rerere.rikkahub.jlatexmathinitprovider',
    'me.rerere.rikkahub.mlkitinitprovider',
    'me.rerere.rikkahub.shizuku',
    'me.rerere.rikkahub.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION',
]

REPLACE_FROM_FILE = {
    'classes2.dex': 'classes2_v8.dex',
    'classes3.dex': 'classes3_v8.dex',
}

SIG_SUFFIX = ('.SF', '.RSA', '.DSA', '.EC')


def _uleb128(v):
    out = bytearray()
    while True:
        b = v & 0x7F
        v >>= 7
        if v:
            out.append(b | 0x80)
        else:
            out.append(b)
            return bytes(out)


def pool_raw_entry(data, entry_off, utf8):
    """返回该字符串的原始字节段（含长度前缀与结尾 0）。"""
    p = entry_off
    if utf8:
        n = data[p]
        p += 2 if (n & 0x80) else 1
        n2 = data[p]
        p += 2 if (n2 & 0x80) else 1
        end = data.index(b'\x00', p)
        return bytes(data[entry_off:end + 1])
    n = struct.unpack_from('<H', data, p)[0]
    p += 2
    if n & 0x8000:
        n2 = struct.unpack_from('<H', data, p)[0]
        p += 2
        n = ((n & 0x7FFF) << 16) | n2
    end = p + 2 * n
    if data[end:end + 2] != b'\x00\x00':
        raise SystemExit('字符串结尾不是 0x0000，解析错位')
    return bytes(data[entry_off:end + 2])


def encode_utf16_entry(s):
    units = s.encode('utf-16-le')
    n = len(units) // 2
    if n > 0x7FFF:
        head = struct.pack('<HH', (n >> 16) | 0x8000, n & 0xFFFF)
    else:
        head = struct.pack('<H', n)
    return head + units + b'\x00\x00'


def patch_manifest(data):
    data = bytearray(data)
    typ, hsize, size = struct.unpack_from('<HHI', data, 0)
    if typ != 0x0003:
        raise SystemExit('not AXML')
    pool_off = 8
    ptyp, phsize, psize = struct.unpack_from('<HHI', data, pool_off)
    if ptyp != 0x0001:
        raise SystemExit('no string pool')
    count, style_count, flags, strings_start, styles_start = struct.unpack_from(
        '<IIIII', data, pool_off + 8)
    if style_count != 0:
        raise SystemExit('string pool has styles, 未实现')
    utf8 = bool(flags & 0x100)
    if utf8:
        raise SystemExit('manifest pool 是 UTF-8，未实现')
    offsets = list(struct.unpack_from('<%dI' % count, data, pool_off + phsize))
    base = pool_off + strings_start

    strings = []
    raws = []
    for i in range(count):
        off = base + offsets[i]
        raw = pool_raw_entry(data, off, utf8)
        n = struct.unpack_from('<H', data, off)[0]
        p = off + 2
        if n & 0x8000:
            n2 = struct.unpack_from('<H', data, p)[0]
            p += 2
            n = ((n & 0x7FFF) << 16) | n2
        s = bytes(data[p:p + 2 * n]).decode('utf-16-le')
        strings.append(s)
        raws.append(raw)

    changed = 0
    for i, s in enumerate(strings):
        if s in MANIFEST_TARGETS:
            new_s = NEW + s[len(OLD):]
            raws[i] = encode_utf16_entry(new_s)
            strings[i] = new_s
            changed += 1
    print('  manifest strings replaced: %d' % changed)

    data_area = bytearray()
    new_offsets = []
    for raw in raws:
        new_offsets.append(len(data_area))
        data_area += raw
    while len(data_area) % 4:
        data_area.append(0)

    new_strings_start = 28 + 4 * count
    new_pool_size = new_strings_start + len(data_area)
    new_pool = bytearray()
    new_pool += struct.pack('<HHI', 0x0001, 28, new_pool_size)
    new_pool += struct.pack('<IIIII', count, 0, flags & ~1, new_strings_start, 0)
    new_pool += struct.pack('<%dI' % count, *new_offsets)
    new_pool += data_area

    old_pool_size = psize
    rest = data[pool_off + old_pool_size:]
    new_total = 8 + len(new_pool) + len(rest)
    out = bytearray()
    out += struct.pack('<HHI', 0x0003, 8, new_total)
    out += new_pool
    out += rest
    print('  manifest: %d -> %d bytes' % (len(data), len(out)))
    # versionName 2.0.01 -> F1.0.2（等长，原地替换）
    pool2 = StringPool(out)  # 必须用同一个 bytearray，replace 才写回
    idxs = pool2.find('2.0.01')
    if len(idxs) != 1:
        raise SystemExit('versionName occurrence != 1: %r' % idxs)
    pool2.replace(idxs[0], 'F1.0.2')
    print('  versionName -> F1.0.2')
    return bytes(out)


def patch_arsc(data):
    data = bytearray(data)
    needle = OLD.encode('utf-16-le')
    if data.count(needle) != 1:
        raise SystemExit('unexpected arsc occurrence count')
    off = data.find(needle)
    # 定位最近的 ResTable_package（0x0200）chunk 头
    p = off
    hdr = None
    while p >= 0:
        if struct.unpack_from('<H', data, p)[0] == 0x0200:
            hdr = p
            break
        p -= 1
    if hdr is None or off != hdr + 12:
        raise SystemExit('package name 不在 package 头固定字段里，位置 %d' % off)
    field = 256
    name = NEW.encode('utf-16-le')
    if len(name) >= field:
        raise SystemExit('新包名超长')
    data[hdr + 12:hdr + 12 + field] = name + b'\x00' * (field - len(name))
    return bytes(data)


def main():
    os.makedirs(OUTDIR, exist_ok=True)
    zin = zipfile.ZipFile(SRC)
    with zipfile.ZipFile(OUT, 'w') as zout:
        for info in zin.infolist():
            name = info.filename
            if name.startswith('META-INF/') and name.endswith(SIG_SUFFIX):
                continue
            if name == 'META-INF/MANIFEST.MF':
                continue
            if name in REPLACE_FROM_FILE:
                data = open(REPLACE_FROM_FILE[name], 'rb').read()
                print('  %s <- %s (%d bytes)' % (name, REPLACE_FROM_FILE[name], len(data)))
            else:
                data = zin.read(name)
            if name == 'AndroidManifest.xml':
                print('patching manifest')
                data = patch_manifest(data)
            elif name == 'resources.arsc':
                print('patching arsc')
                data = patch_arsc(data)
            zi = zipfile.ZipInfo(name, date_time=(1981, 1, 1, 1, 1, 0))
            zi.compress_type = info.compress_type
            zi.external_attr = info.external_attr
            zi.internal_attr = info.internal_attr
            zi.create_system = 0
            zout.writestr(zi, data)
    print('output', OUT, os.path.getsize(OUT))


if __name__ == '__main__':
    main()

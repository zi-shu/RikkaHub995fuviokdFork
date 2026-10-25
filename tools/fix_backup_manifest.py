#!/usr/bin/env python3
# 用途：修含 Linux 环境的大备份（清单条目数与实际不符）
# 做法：manifest.json 是 zip 最后一条，只重写“manifest 条目 + 中央目录 + EOCD”，前面数据不动
# 用法：python3 fix_backup_manifest.py 源.zip 目标.zip
# 注意：只删清单里 name 以 / 结尾的目录记录，zip 内实体条目保留（恢复时本就被跳过）
import sys, os, json, zlib, struct

SRC = sys.argv[1] if len(sys.argv) > 1 else "/workspace/修bug前大备份.zip"
DST = sys.argv[2] if len(sys.argv) > 2 else "/workspace/修bug前大备份_修复版.zip"

f = open(SRC, "rb")
size = os.path.getsize(SRC)

# 找 EOCD（末尾最多 65557 字节内）
tail_len = min(65557, size)
f.seek(size - tail_len)
tail = f.read(tail_len)
pos = tail.rfind(b"PK\x05\x06")
if pos < 0:
    sys.exit("找不到 EOCD")
eocd_off = size - tail_len + pos
eocd = tail[pos:pos + 22]
(sig, disk, cd_disk, n_this, n_total, cd_size, cd_off, comment_len) = struct.unpack("<IHHHHIIH", eocd)
print(f"EOCD: 条目 {n_total} 中央目录 size={cd_size} off={cd_off} 注释={comment_len}")
if n_total == 0xFFFF or cd_off == 0xFFFFFFFF:
    sys.exit("疑似 zip64，未处理")

f.seek(cd_off)
cd = f.read(cd_size)

# 遍历中央目录，切出每个条目并找 manifest.json
recs = []
p = 0
manifest_idx = None
while p < len(cd):
    if cd[p:p + 4] != b"PK\x01\x02":
        sys.exit(f"中央目录签名异常 @{p}")
    (vsig, vmade, vneed, flags, method, mtime, mdate, crc, csize, usize,
     nlen, elen, clen, dstart, iattr, eattr, lho) = struct.unpack("<IHHHHHHIIIHHHHHII", cd[p:p + 46])
    name = cd[p + 46:p + 46 + nlen].decode("utf-8", "replace")
    extra = cd[p + 46 + nlen:p + 46 + nlen + elen]
    cmt = cd[p + 46 + nlen + elen:p + 46 + nlen + elen + clen]
    recs.append(dict(p=p, name=name, flags=flags, method=method, mtime=mtime, mdate=mdate,
                     crc=crc, csize=csize, usize=usize, extra=extra, cmt=cmt, lho=lho,
                     vmade=vmade, vneed=vneed, dstart=dstart, iattr=iattr, eattr=eattr, nlen=nlen))
    if name == "manifest.json":
        manifest_idx = len(recs) - 1
    p += 46 + nlen + elen + clen

print(f"中央目录条目解析 {len(recs)} 条，manifest 索引 {manifest_idx}")
if manifest_idx is None:
    sys.exit("没找到 manifest.json")
if manifest_idx != len(recs) - 1:
    sys.exit(f"manifest 不是最后一条（索引 {manifest_idx}/{len(recs)-1}），本脚本假定它在末尾，终止")

mrec = recs[manifest_idx]
L = mrec["lho"]
print(f"manifest 本地头偏移 {L}，原压缩大小 {mrec['csize']} 未压缩 {mrec['usize']}")

# 读原 manifest
f.seek(L)
lh = f.read(30)
if lh[:4] != b"PK\x03\x04":
    sys.exit("manifest 本地头异常")
l_nlen, l_elen = struct.unpack("<HH", lh[26:30])
f.seek(L + 30 + l_nlen + l_elen)
raw = f.read(mrec["csize"])
if mrec["method"] == 8:
    mdata = zlib.decompress(raw, -15)
else:
    mdata = raw
print("原 manifest 未压缩字节:", len(mdata), "CRC 核对:", (zlib.crc32(mdata) & 0xFFFFFFFF) == mrec["crc"])

j = json.loads(mdata)
entries = j["entries"]
print("原清单条目:", len(entries))
dropped = [e for e in entries if e.get("name", "").endswith("/")]
kept = [e for e in entries if not e.get("name", "").endswith("/")]
for d in dropped:
    print("  丢弃目录记录:", d.get("name"))
print("新清单条目:", len(kept))
if len(dropped) == 0:
    sys.exit("清单里没有以 / 结尾的记录，无需修复")

j["entries"] = kept
newjson = json.dumps(j, ensure_ascii=False, separators=(",", ":")).encode("utf-8")
print("新 manifest 字节:", len(newjson))

comp = zlib.compressobj(6, zlib.DEFLATED, -15)
newdata = comp.compress(newjson) + comp.flush()
newcrc = zlib.crc32(newjson) & 0xFFFFFFFF

name_b = b"manifest.json"
new_lh = struct.pack("<IHHHHHIIIHH", 0x04034B50, 20, 0, 8, mrec["mtime"], mrec["mdate"],
                     newcrc, len(newdata), len(newjson), len(name_b), 0) + name_b
new_lho = L
new_cd_start = L + len(new_lh) + len(newdata)

# 重建中央目录
out_cd = bytearray()
for r in recs:
    if r is mrec:
        rec = struct.pack("<IHHHHHHIIIHHHHHII", 0x02014B50, r["vmade"], 20, 0, 8,
                          r["mtime"], r["mdate"], newcrc, len(newdata), len(newjson),
                          len(name_b), 0, 0, 0, r["iattr"], r["eattr"], new_lho)
        rec += name_b
    else:
        rec = struct.pack("<IHHHHHHIIIHHHHHII", 0x02014B50, r["vmade"], r["vneed"], r["flags"],
                          r["method"], r["mtime"], r["mdate"], r["crc"], r["csize"], r["usize"],
                          r["nlen"], len(r["extra"]), len(r["cmt"]), r["dstart"],
                          r["iattr"], r["eattr"], r["lho"])
        rec += r["name"].encode("utf-8") + r["extra"] + r["cmt"]
    out_cd += rec

new_eocd = struct.pack("<IHHHHIIH", 0x06054B50, 0, 0, len(recs), len(recs),
                       len(out_cd), new_cd_start, 0)

print(f"写入 {DST}：前面复制 {L} 字节，新条目 {len(new_lh)+len(newdata)} 字节，中央目录 {len(out_cd)} 字节")
with open(DST, "wb") as g:
    f.seek(0)
    left = L
    while left > 0:
        chunk = f.read(min(8 << 20, left))
        if not chunk:
            sys.exit("复制中断")
        g.write(chunk)
        left -= len(chunk)
    g.write(new_lh)
    g.write(newdata)
    g.write(out_cd)
    g.write(new_eocd)
f.close()
print("完成，输出大小:", os.path.getsize(DST))

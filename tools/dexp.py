"""Minimal DEX reader/writer for surgical patching."""
import struct, hashlib, zlib


class Dex:
    def __init__(self, data: bytes):
        self.d = bytearray(data)
        self._parse()

    def _parse(self):
        d = self.d
        (self.file_size, self.header_size) = struct.unpack_from('<II', d, 32)
        self.map_off = struct.unpack_from('<I', d, 52)[0]
        (self.string_ids_size, self.string_ids_off) = struct.unpack_from('<II', d, 56)
        (self.type_ids_size, self.type_ids_off) = struct.unpack_from('<II', d, 64)
        (self.proto_ids_size, self.proto_ids_off) = struct.unpack_from('<II', d, 72)
        (self.field_ids_size, self.field_ids_off) = struct.unpack_from('<II', d, 80)
        (self.method_ids_size, self.method_ids_off) = struct.unpack_from('<II', d, 88)
        (self.class_defs_size, self.class_defs_off) = struct.unpack_from('<II', d, 96)

    # ---------- strings ----------
    def string_at(self, idx: int) -> str:
        off = struct.unpack_from('<I', self.d, self.string_ids_off + 4 * idx)[0]
        p = off
        while self.d[p] & 0x80:
            p += 1
        p += 1
        end = self.d.index(b'\x00', p)
        return bytes(self.d[p:end]).decode('utf-8', 'replace')

    def string_id(self, s: str) -> int:
        lo, hi = 0, self.string_ids_size - 1
        while lo <= hi:
            mid = (lo + hi) // 2
            v = self.string_at(mid)
            if v == s:
                return mid
            if v < s:
                lo = mid + 1
            else:
                hi = mid - 1
        return -1

    # ---------- types / methods ----------
    def type_at(self, idx: int) -> str:
        sid = struct.unpack_from('<I', self.d, self.type_ids_off + 4 * idx)[0]
        return self.string_at(sid)

    def type_id(self, desc: str) -> int:
        for i in range(self.type_ids_size):
            if self.type_at(i) == desc:
                return i
        return -1

    def method_at(self, idx: int):
        cls, proto, name = struct.unpack_from('<HHI', self.d, self.method_ids_off + 8 * idx)
        return self.type_at(cls), name and self.string_at(name), proto

    def proto_at(self, idx: int) -> str:
        shorty, ret, params_off = struct.unpack_from('<III', self.d, self.proto_ids_off + 12 * idx)
        retdesc = self.type_at(ret)
        n = 0
        if params_off:
            n = struct.unpack_from('<I', self.d, params_off)[0]
        args = [self.type_at(struct.unpack_from('<H', self.d, params_off + 4 + 2 * i)[0]) for i in range(n)]
        return '(' + ''.join(args) + ')' + retdesc

    def find_method(self, cls: str, name: str, proto: str = None):
        out = []
        for i in range(self.method_ids_size):
            c, n, p = self.method_at(i)
            if c == cls and n == name:
                if proto is None or self.proto_at(p) == proto:
                    out.append(i)
        return out

    # ---------- class data ----------
    def class_def(self, desc: str):
        tid = self.type_id(desc)
        if tid < 0:
            return None
        for i in range(self.class_defs_size):
            off = self.class_defs_off + 32 * i
            if struct.unpack_from('<I', self.d, off)[0] == tid:
                return struct.unpack_from('<8I', self.d, off)
        return None

    @staticmethod
    def _uleb(d, p):
        result = 0
        shift = 0
        while True:
            b = d[p]
            p += 1
            result |= (b & 0x7f) << shift
            if not (b & 0x80):
                return result, p
            shift += 7

    def class_methods(self, desc: str):
        """returns {method_idx: code_off}"""
        cd = self.class_def(desc)
        if not cd:
            return {}
        p = cd[6]
        if not p:
            return {}
        sf, p = self._uleb(self.d, p)
        inf, p = self._uleb(self.d, p)
        dm, p = self._uleb(self.d, p)
        vm, p = self._uleb(self.d, p)
        out = {}
        for _ in range(sf):
            _, p = self._uleb(self.d, p)
            _, p = self._uleb(self.d, p)
        for _ in range(inf):
            _, p = self._uleb(self.d, p)
            _, p = self._uleb(self.d, p)
        for n in (dm, vm):
            idx = 0
            for _ in range(n):
                diff, p = self._uleb(self.d, p)
                acc, p = self._uleb(self.d, p)
                code, p = self._uleb(self.d, p)
                idx += diff
                out[idx] = code
        return out

    def code_item(self, code_off: int):
        regs, ins, outs, tries, dbg, insns_size = struct.unpack_from('<HHHHII', self.d, code_off)
        insns_off = code_off + 16
        insns = list(struct.unpack_from('<%dH' % insns_size, self.d, insns_off))
        return dict(regs=regs, ins=ins, outs=outs, tries=tries, dbg=dbg,
                    size=insns_size, off=insns_off, insns=insns)

    def write_insns(self, code: dict, insns):
        assert len(insns) == code['size'], (len(insns), code['size'])
        struct.pack_into('<%dH' % code['size'], self.d, code['off'], *insns)

    def fix_checksums(self):
        d = self.d
        struct.pack_into('<I', d, 8, 0)
        d[12:32] = b'\x00' * 20
        sig = hashlib.sha1(bytes(d[32:])).digest()
        d[12:32] = sig
        chk = zlib.adler32(bytes(d[12:])) & 0xffffffff
        struct.pack_into('<I', d, 8, chk)

    def verify(self):
        d = bytes(self.d)
        ok_sig = hashlib.sha1(d[32:]).digest() == d[12:32]
        ok_chk = (zlib.adler32(d[12:]) & 0xffffffff) == struct.unpack_from('<I', d, 8)[0]
        return ok_sig, ok_chk

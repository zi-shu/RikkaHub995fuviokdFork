"""Binary XML (AXML) string pool reader/patcher for AndroidManifest.xml.

Only supports what we need: locate string pool entries and overwrite a value
with another string of the SAME character length (no offset changes).
"""
import struct


class StringPool:
    def __init__(self, data, base=8):
        self.d = data
        self.base = base
        typ, hsize, size = struct.unpack_from('<HHI', data, base)
        if typ != 0x0001:
            raise ValueError('not a string pool chunk: 0x%04x' % typ)
        (self.count, self.style_count, self.flags,
         self.strings_start, self.styles_start) = struct.unpack_from('<IIIII', data, base + 8)
        self.utf8 = bool(self.flags & 0x100)
        self.offsets = list(struct.unpack_from('<%dI' % self.count, data, base + hsize))
        self.strings_base = base + self.strings_start

    def entry_offset(self, i):
        return self.strings_base + self.offsets[i]

    def get(self, i):
        p = self.entry_offset(i)
        d = self.d
        if self.utf8:
            n = d[p]
            p += 2 if (n & 0x80) else 1
            n2 = d[p]
            p += 2 if (n2 & 0x80) else 1
            end = d.index(b'\x00', p)
            return d[p:end].decode('utf-8', 'replace')
        n = struct.unpack_from('<H', d, p)[0]
        p += 2
        if n & 0x8000:
            n2 = struct.unpack_from('<H', d, p)[0]
            p += 2
            n = ((n & 0x7fff) << 16) | n2
        return d[p:p + 2 * n].decode('utf-16-le', 'replace')

    def find(self, value):
        return [i for i in range(self.count) if self.get(i) == value]

    def replace(self, i, new_value):
        old = self.get(i)
        if len(old) != len(new_value):
            raise ValueError('length differs: %r -> %r' % (old, new_value))
        p = self.entry_offset(i)
        d = self.d
        if self.utf8:
            n = d[p]
            p += 2 if (n & 0x80) else 1
            n2 = d[p]
            p += 2 if (n2 & 0x80) else 1
            end = d.index(b'\x00', p)
            if end - p != len(new_value):
                raise ValueError('byte length differs')
            d[p:end] = new_value.encode('utf-8')
        else:
            n = struct.unpack_from('<H', d, p)[0]
            p += 2
            if n & 0x8000:
                p += 2
            d[p:p + 2 * len(new_value)] = new_value.encode('utf-16-le')
        return True

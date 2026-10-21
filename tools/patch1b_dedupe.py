"""Patch 1 (revision B): remove the duplicate createSkillTools() injection inside
ChatService.buildGenerationTools by nop-ing the 7-instruction block.

    invoke-static {v7, v1}, SkillsToolsKt->createSkillTools(List,Set)List
    move-result-object v1
    invoke-virtual {v10, v1}, ListBuilder->addAll(Collection)Z
    ->
    7 x nop

generateText() keeps its own injection (guarded by enabledSkills non-empty and
skills existing), so skills stay available in every entry path exactly once.
"""
import sys
from dexp import Dex

SRC = 'classes2.dex'
OUT = 'classes2_patched2.dex'

dex = Dex(open(SRC, 'rb').read())

mk = dex.find_method('Lme/rerere/rikkahub/data/ai/tools/SkillsToolsKt;', 'createSkillTools',
                     '(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;')
addall = dex.find_method('Lkotlin/collections/builders/ListBuilder;', 'addAll', '(Ljava/util/Collection;)Z')
assert len(mk) == 1 and len(addall) == 1
mk_idx, addall_idx = mk[0], addall[0]

cls = 'Lme/rerere/rikkahub/service/ChatService;'
methods = dex.class_methods(cls)
targets = [m for m in methods if dex.method_at(m)[1] == 'buildGenerationTools']
print('buildGenerationTools idx:', targets)
assert len(targets) == 1
code = dex.code_item(methods[targets[0]])
print('insns:', code['size'], 'regs:', code['regs'])

ins = code['insns']
hits = []
for i in range(len(ins) - 6):
    if (ins[i] == 0x2071 and ins[i + 1] == mk_idx
            and ins[i + 3] == 0x010c
            and ins[i + 4] == 0x206e and ins[i + 5] == addall_idx):
        hits.append(i)

print('hits:', hits)
for h in hits:
    print('  ctx:', [hex(x) for x in ins[h - 4:h + 8]])

if len(hits) != 1:
    print('UNEXPECTED, aborting')
    sys.exit(1)

i = hits[0]
for k in range(7):
    ins[i + k] = 0x0000

dex.write_insns(code, ins)
dex.fix_checksums()
print('verify:', dex.verify())
open(OUT, 'wb').write(bytes(dex.d))
print('written', OUT)

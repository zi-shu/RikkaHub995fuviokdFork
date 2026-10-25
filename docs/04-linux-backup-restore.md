# 修复四：含 Linux 环境的备份无法恢复

## 现象

带「Linux 环境」的备份，恢复时跑几十秒后弹窗：

```
已取消恢复：备份中的设置无效或版本不受支持，未改动任何数据。
```

不含 Linux 环境的备份恢复正常。多次重试结果一致。

提示把原因指向设置解析，实际不是。设置文件没有问题。

## 定位过程

release 包把 `android.util.Log` 全部剥掉，logcat 里查不到应用的任何日志。
静态分析给不出唯一结论，于是打了一个诊断包：把校验失败分支的提示资源从
`backup_page_restore_validation_failed` 换成带 `%s` 占位的
`backup_page_integrity_failed`，让界面把真实异常带出来。

改的是 `BackupVM$launchTask$1->invokeSuspend` 里那条 `sget`，字段索引 2916 换成 2894。

装到设备后重试，界面显示：

```
备份文件已损坏或不完整，已取消恢复: 备份条目数量与清单不符：清单 64141 实际 64139
```

差 2 条。至此方向明确：不是设置内容的问题，是归档条目计数。

## 数据佐证

| 备份 | 中央目录条目 | 以 `/` 结尾的条目 | 清单 entries | 恢复侧读到 |
| --- | --- | --- | --- | --- |
| 含 Linux 环境（失败） | 64142 | 2 | 64141 | 64139 |
| 不含 Linux 环境（正常） | 63685 | 0 | 63684 | 63684 |

两个多的条目是空目录：

```
ubuntu/volumes/<uuid>/files/host-phone-control/sessions/
ubuntu/volumes/<uuid>/files/lan-share/state/tmp/
```

`64142 − 1（manifest 自身）− 2（目录条目）= 64139`，与报错数字吻合。

## 根因

导出侧把空目录当成一条记录写进归档和清单，恢复侧统计时跳过目录条目，两边口径不一致。

导出侧：

```
Lme/rerere/ubuntu/UbuntuEnvironmentBackup;
方法 collect
```

递归遍历时对每个目录统计子项数。子项数为 0 时生成一条 `DirItem`，名字尾部带 `/`：

```smali
iget v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I
if-nez v0, :cond_1b
new-instance v0, Lme/rerere/ubuntu/UbuntuBackupItem$DirItem;
invoke-direct {v0, v1}, Lme/rerere/ubuntu/UbuntuBackupItem$DirItem;-><init>(Ljava/lang/String;)V
invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
:cond_1b
```

`UbuntuBackupItem$DirItem` 在 `BackupArchiveExporter` 里被写进 `ZipOutputStream`，
同时进入 `BackupArchiveManifest` 的 `entries` 列表。

恢复侧在完整性校验时遍历归档，跳过目录条目，再用 `entries.size` 与实际条数比较：

```smali
invoke-virtual {v7}, Lme/rerere/rikkahub/data/sync/BackupArchiveManifest$Manifest;->getEntries()Ljava/util/List;
...
const-string v3, "备份条目数量与清单不符：清单 "
```

两数不等即抛 `BackupIntegrityException`，恢复中止。

## 改法

把空目录判定改成无条件跳过：

```
if-nez v0, :cond_1b   →   goto/16 :cond_1b
```

`if-nez vAA, +BBBB` 是 opcode `0x39`，`goto/16 +BBBB` 是 opcode `0x29`。
两者都是 2 个 16 位码元，操作数位置相同，且这里 `vAA` 正好是 `v0`，
满足 `goto/16` 对 AA 必须为 0 的要求。只改 1 个字节，代码长度与全部偏移不变。

改后重算 dex 头的 SHA-1（偏移 12..31）与 Adler32（偏移 8..11）。

F1.0.3 的 `classes2.dex` 里，该指令在文件偏移 `0xdde3d4`，原字节 `39 00 a1 ff`。

## 为什么改导出侧而不是恢复侧

恢复侧要兼容旧备份，需要在计数前过滤清单里的目录项。
`Manifest` 是 data class，`entries` 为 val，没有 setter，改起来要新增过滤逻辑并重编整个 dex。

导出侧只影响新备份，1 个字节就能断掉来源。空目录本身不承载数据，
恢复时丢失没有实际影响。

对已经导出的坏备份，用 `tools/fix_backup_manifest.py` 修清单：
该脚本只重写归档尾部的 `manifest.json`、中央目录与 EOCD，前面几百 MB 数据不动，耗时约 1 秒。

## 验证

修复后重新导出，同一台设备：

| 项 | 修复前 | 修复后 |
| --- | --- | --- |
| 条目总数 | 64142 | 64141 |
| 以 `/` 结尾的条目 | 2 | 0 |
| 清单 entries | 64141 | 64140 |
| 恢复侧读到 | 64139（不符） | 64140（相符） |

## 附带改动

`BackupVM$launchTask$1` 里校验失败分支的提示资源保留为
`backup_page_integrity_failed`。以后再有完整性错误，界面会显示具体原因，
不再是一句笼统的「设置无效或版本不受支持」。

这条改动只影响提示文案，不改变校验行为。

## 相关约束

`ZipEntry.isDirectory()` 依赖条目名以 `/` 结尾。
凡是往归档写目录记录的地方，都要与读取侧的统计口径保持一致。

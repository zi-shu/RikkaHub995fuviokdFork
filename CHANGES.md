# 改动说明

基线包：`rikkahub-2.0.01-arm64-v8a.apk`，223,434,474 字节，versionCode 194。
上一个成品包：`rikkahub-F1.0.2-fuiviokd-signed.apk`，224,300,474 字节，versionCode 194。
当前成品包：`rikkahub-F1.0.3-fuiviokd-signed.apk`，224,300,474 字节，versionCode 195。
包名：`me.rerere.rikkahub` 改为 `fuiviokd.re.rikka`。

## 为什么改 smali

改款只发布 APK，源码仓库私密。能改的对象只有字节码。
本仓库不含原始 Kotlin 源码，不能用 Gradle 构建。
重建成品要跑 `tools/` 里的脚本。

## 四项改动

| 编号 | 内容 | 涉及文件 |
| --- | --- | --- |
| 1 | 去掉重复注入的技能工具 | `classes2/ChatService.smali` |
| 2 | 去掉悬浮球样式选择器创建的嵌入 View | `classes3/SettingExtensionsPageKt.smali` |
| 3 | 包名与版本号 | `AndroidManifest.xml`、`classes2`、`classes3` |
| 4 | 空目录不再写入备份清单 | `classes2` 的 `UbuntuEnvironmentBackup.collect` |

逐项说明见 `docs/` 目录。

## F1.0.3 相对 F1.0.2 的变化

三处，全部等长替换，dex 代码长度与偏移不变。

1. `classes2.dex`：`UbuntuEnvironmentBackup.collect` 里空目录判定改为无条件跳过，
   文件偏移 `0xdde3d4`，字节 `0x39` 改 `0x29`。
2. `classes3.dex`：校验失败提示资源由 `backup_page_restore_validation_failed`（字段索引 2916）
   改为 `backup_page_integrity_failed`（字段索引 2894），让界面显示真实原因。
3. 版本号：`AndroidManifest.xml` 的 versionCode 194 改 195、字符串池 `F1.0.2` 改 `F1.0.3`，
   以及 `classes2` 两处、`classes3` 两处 `F1.0.2` 改 `F1.0.3`，另有一处
   `RikkaHub F1.0.2 #194` 改 `RikkaHub F1.0.3 #195`。

两个 dex 改完都重算了 SHA-1 与 Adler32。

## 重建流程

以下命令在拆包工作目录执行。输入是原始 APK。

```bash
# 1. 打 DeepSeek 去重补丁，输出 classes2_patched2.dex
python3 tools/patch1b_dedupe.py

# 2. 用 smali 重编 classes3，输出 classes3_v8.dex
smali a smali3 -o classes3_v8.dex -j 8

# 3. 换包名、替换两个 dex、重打包
python3 tools/patch8_build_fuiviokd_261021_1140.py

# 4. 【F1.0.3 新增】修空目录写入清单，输出 classes2_patched_fix.dex
python3 tools/patch_dir_item.py

# 5. 【F1.0.3 新增】改版本号为 F1.0.3 / 195，输出 classes2_f103.dex、classes3_f103.dex、AndroidManifest_f103.xml
python3 tools/make_f103_rename.py

# 6. 用 F1.0.3 的三个文件重打包
python3 tools/apk_repack.py --src rikkahub-F1.0.2-fuiviokd-signed.apk \
  --out rikkahub-F1.0.3-unsigned.apk \
  --replace classes2.dex=classes2_f103.dex \
  --replace classes3.dex=classes3_f103.dex \
  --replace AndroidManifest.xml=AndroidManifest_f103.xml

# 7. 对齐与签名
zipalign -f -p 4 rikkahub-F1.0.3-unsigned.apk aligned.apk
apksigner sign --ks ../work/testkey.jks --ks-key-alias rikkatest \
  --v1-signing-enabled false --v2-signing-enabled true --v3-signing-enabled true \
  --out rikkahub-F1.0.3-fuiviokd-signed.apk aligned.apk
```

第 4 步的脚本默认路径写的是本次工作目录，换机器要改开头的 `SRC`、`DST`、`OFF` 三个常量。
第 5 步同理，改开头的工作目录常量。

## 已导出的坏备份怎么办

F1.0.3 只保证新导出的备份正确。已经导出过的、含 Linux 环境空目录的备份，清单条目数仍比实际多。

用 `tools/fix_backup_manifest.py` 修：

```bash
python3 tools/fix_backup_manifest.py 旧备份.zip 新备份.zip
```

脚本只重写归档尾部的 `manifest.json`、中央目录与 EOCD，前面的数据原样复制，1 秒内完成。
输出是新文件，不改原件。

## DEX 字符串表顺序

DEX 的字符串表必须按 MUTF-8 升序排列。ART 在安装阶段校验这个顺序。
顺序被破坏时，整个 dex 拒绝加载。表现是装得上，运行时抛 `NoClassDefFoundError`，报错的类与改动无关。

改包名会重排字符串。`fileprovider` 的 authority 一改，`classes3.dex` 的字符串顺序就乱了。
解法是用 smali 反汇编再汇编，让工具重新生成有序的字符串表。

本仓库的 `tools/dexp.py` 能直接改 dex 指令，不改字符串表。
凡是会新增或改动字符串的修改，都要走 smali 重编这条路。

F1.0.3 的版本号替换属于等长替换，只改字符内容不改字符串长度，
且替换后的排序位置与相邻字符串的相对次序不变，因此可以直接改字节。
改完用 `dexlib.py check` 复核，输出的「乱序」计数必须为 0。

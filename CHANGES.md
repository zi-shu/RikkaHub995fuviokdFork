# 改动说明

基线包：`rikkahub-2.0.01-arm64-v8a.apk`，223,434,474 字节，versionCode 194。
成品包：`rikkahub-F1.0.2-fuiviokd-signed.apk`，223,800,762 字节。
包名：`me.rerere.rikkahub` 改为 `fuiviokd.re.rikka`。

## 为什么改 smali

改款只发布 APK，源码仓库私密。能改的对象只有字节码。
本仓库不含原始 Kotlin 源码，不能用 Gradle 构建。
重建成品要跑 `tools/` 里的脚本。

## 三项改动

| 编号 | 内容 | 涉及文件 |
| --- | --- | --- |
| 1 | 去掉重复注入的技能工具 | `classes2/ChatService.smali` |
| 2 | 去掉悬浮球样式选择器创建的嵌入 View | `classes3/SettingExtensionsPageKt.smali` |
| 3 | 包名与版本号 | `AndroidManifest.xml`、`classes2`、`classes3` |

逐项说明见 `docs/` 目录。

## 重建流程

以下命令在拆包工作目录执行。输入是原始 APK。

```bash
# 1. 打 DeepSeek 去重补丁，输出 classes2_patched2.dex
python3 tools/patch1b_dedupe.py

# 2. 用 smali 重编 classes3，输出 classes3_v8.dex
smali a smali3 -o classes3_v8.dex -j 8

# 3. 换包名、替换两个 dex、重打包
python3 tools/patch8_build_fuiviokd_261021_1140.py

# 4. 对齐与签名
zipalign -f -p 4 rikkahub-F1.0.2-fuiviokd-unsigned.apk aligned.apk
apksigner sign --ks ../work/testkey.jks --ks-key-alias rikkatest \
  --v1-signing-enabled false --v2-signing-enabled true --v3-signing-enabled true \
  --out rikkahub-F1.0.2-fuiviokd-signed.apk aligned.apk
```

## DEX 字符串表顺序

DEX 的字符串表必须按 MUTF-8 升序排列。ART 在安装阶段校验这个顺序。
顺序被破坏时，整个 dex 拒绝加载。表现是装得上，运行时抛 `NoClassDefFoundError`，报错的类与改动无关。

改包名会重排字符串。`fileprovider` 的 authority 一改，`classes3.dex` 的字符串顺序就乱了。
解法是用 smali 反汇编再汇编，让工具重新生成有序的字符串表。

本仓库的 `tools/dexp.py` 能直接改 dex 指令，不改字符串表。
凡是会新增或改动字符串的修改，都要走 smali 重编这条路。

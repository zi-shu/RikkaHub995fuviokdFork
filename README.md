# RikkaHub 改款 · 修复分支

基于 [995fuviokd](https://github.com/995fuviokd-crypto/rikkahub-apk-download) 的改款 APK，反汇编后修补。
本仓库收录改动过的 smali 与构造脚本，不含原始 Kotlin 源码。

改款只发布 APK，源码仓库私密。所以全部改动落在字节码层，用 smali 完成。

## 修了什么

| # | 问题 | 状态 |
| --- | --- | --- |
| 1 | 启用技能后，DeepSeek 报 `400 Tool names must be unique` | 已修 |
| 2 | 开启悬浮窗后，进「后台保活」页闪退（ANR） | 已修 |
| 3 | 与原版 RikkaHub 不能装在同一台设备 | 已修，包名改为 `fuiviokd.re.rikka` |

改动位置、原指令、改后指令与验证方法写在 [`CHANGES.md`](CHANGES.md) 和 [`docs/`](docs/)。

## 下载

成品包在 [Releases](https://github.com/zi-shu/RikkaHub995fuviokdFork/releases)。

- `rikkahub-F1.0.2-fuiviokd-signed.apk`，224,300,474 字节，arm64-v8a
- 包名 `fuiviokd.re.rikka`，versionName `F1.0.2`，versionCode 194
- 签名自签，CN=RikkaHub Test Build
- MD5 `43409fe7597e8d2f766a79d4b6d162a2`
- SHA-256 `996c7aa4d4e849f7bfed5d0afd7ee8c772650ba768954d27c800a0585d53546e`

原版 RikkaHub 的签名与本包不同。装过官方版的设备，两个应用互不影响，因为包名已经改掉。
装过旧改款包的设备，直接覆盖安装即可，数据保留。

## 目录

```
CHANGES.md                        改动总览与重建流程
docs/01-deepseek-tool-dedupe.md   修复一：工具名重复
docs/02-bubble-picker-anr.md      修复二：悬浮球选择器 ANR
docs/03-package-rename.md         改动三：包名与版本号
smali/classes2/…/ChatService.smali
smali/classes3/…/SettingExtensionsPageKt.smali
smali/classes3/…/UpdateCardKt.smali
manifest/AndroidManifest-原版文本.xml
tools/                            打补丁与重打包脚本
```

`smali/` 里的是改后的完整文件，可以直接用 `smali a` 汇编回 dex。
`tools/` 里的脚本按 `CHANGES.md` 的顺序执行。

## 已知问题

- Linux 备份文件无法正常导入。未定位。
- `UpdateCardKt` 解析 `F1.0.2` 失败，更新检查不可用。不打算修。

## 来源

- 官方 RikkaHub：<https://github.com/rikkahub/rikkahub>，作者 re-ovo，AGPL-3.0
- 改款包：<https://github.com/995fuviokd-crypto/rikkahub-apk-download>，作者 995fuviokd，仅二进制
- 本仓库的修改：反汇编 995fuviokd 的 `rikkahub-2.0.01-arm64-v8a.apk` 得到

维护者未受过系统编程训练。本项目几乎全部在 @re-ovo 编写的小型 LLM Agent——RikkaHub 中完成。所用模型为 DeepSeek-flash-4.1。

## 许可

[AGPL-3.0](LICENSE)。上游为 AGPL-3.0，本仓库作为衍生作品沿用同一许可。

## 免责

非官方构建，与 re-ovo 无关。使用风险自负。

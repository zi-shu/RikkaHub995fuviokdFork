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
| 4 | 含 Linux 环境的备份恢复必定失败 | 已修，F1.0.3 起 |

改动位置、原指令、改后指令与验证方法写在 [`CHANGES.md`](CHANGES.md) 和 [`docs/`](docs/)。

## 下载

成品包在 [Releases](https://github.com/zi-shu/RikkaHub995fuviokdFork/releases)。

最新版本 `F1.0.3`：

- `rikkahub-F1.0.3-fuiviokd-signed.apk`，224,300,474 字节，arm64-v8a
- 包名 `fuiviokd.re.rikka`，versionName `F1.0.3`，versionCode 195
- 签名自签，CN=RikkaHub Test Build
- MD5 `e90db40cdcbb13998731fcba129d4470`
- SHA-256 `eb9b3855184a93b600d1d4efc3102971ca4d61d0b300b611ba04ee7dfa6babb6`

上一版 `F1.0.2`（versionCode 194）仍在 Releases 里，供回退使用。

原版 RikkaHub 的签名与本包不同。装过官方版的设备，两个应用互不影响，因为包名已经改掉。
装过旧改款包的设备，直接覆盖安装即可，数据保留。

## 目录

```
CHANGES.md                              改动总览与重建流程
docs/01-deepseek-tool-dedupe.md         修复一：工具名重复
docs/02-bubble-picker-anr.md            修复二：悬浮球选择器 ANR
docs/03-package-rename.md               改动三：包名与版本号
docs/04-linux-backup-restore.md         修复四：含 Linux 环境的备份恢复失败
smali/classes2/…/ChatService.smali
smali/classes3/…/SettingExtensionsPageKt.smali
smali/classes3/…/UpdateCardKt.smali
manifest/AndroidManifest-原版文本.xml
tools/                                  打补丁、改版本号、重打包脚本
tools/patch_dir_item.py                 修复四：空目录写入清单（改 1 字节）
tools/make_f103_rename.py               把打好补丁的包升到 F1.0.3 / 195
tools/fix_backup_manifest.py            修已导出的坏备份清单
```

`smali/` 里的是改后的完整文件，可以直接用 `smali a` 汇编回 dex。
`tools/` 里的脚本按 `CHANGES.md` 的顺序执行。

## 已知问题

- `UpdateCardKt` 解析 `F1.0.2` 失败，更新检查不可用。
- F1.0.3 已同步 `BuildConfig` 里的版本字符串，行为未单独验证。
- Agent模式管理里的任何一款工具均无法安装
- 在平板上运行时,"模型与服务"菜单标题被藏在“设置”标题栏后面，“数据管理”菜单标题需要下拉主菜单才能显现。
- 数据备份功能里的Linux环境备份功能不理想
- 每个助手的“本地工具”里的Agent能力设置和软件设置页面里“功能拓展”菜单——“AI能力控制”栏里的权限设置逻辑冲突。
- LLM生成的文字无法直接复制

## 来源

- 官方 RikkaHub：<https://github.com/rikkahub/rikkahub>，作者 re-ovo，AGPL-3.0
- 改款包：<https://github.com/995fuviokd-crypto/rikkahub-apk-download>，作者 995fuviokd，仅二进制
- 本仓库的修改：反汇编 995fuviokd 的 `rikkahub-2.0.01-arm64-v8a.apk` 得到

维护者未受过系统编程训练。本项目几乎全部在 @re-ovo 编写的小型 LLM Agent——RikkaHub 中完成。所用模型为 DeepSeek-flash-4.1。

## 许可

[AGPL-3.0](LICENSE)。上游为 AGPL-3.0，本仓库作为衍生作品沿用同一许可。

## 免责

非官方构建，与 re-ovo 无关。使用风险自负。

# 改动三：包名共存

## 目的

官方版 RikkaHub 占用 `me.rerere.rikkahub.fileprovider` 与 `me.rerere.rikkahub.documents` 两个 authority。
这两个 authority 在系统里唯一。包名相同的两个 APP 无法同时安装。

改包名后，改款版能与官方版装在同一台设备。

## 新旧包名

```
me.rerere.rikkahub   18 字符
fuiviokd.re.rikka    17 字符
```

长度不等，AndroidManifest 的字符串池必须重建。

## 要改的 9 个 manifest 字符串

```
me.rerere.rikkahub
me.rerere.rikkahub.androidx-startup
me.rerere.rikkahub.documents
me.rerere.rikkahub.fileprovider
me.rerere.rikkahub.fx.provider
me.rerere.rikkahub.jlatexmathinitprovider
me.rerere.rikkahub.mlkitinitprovider
me.rerere.rikkahub.shizuku
me.rerere.rikkahub.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION
```

`tools/patch8_build_fuiviokd_261021_1140.py` 里对应 `MANIFEST_TARGETS` 列表。

## classes3 的硬编码

`me.rerere.rikkahub.fileprovider` 有一条写在 `classes3.dex` 的 smali 常量里。
只改 manifest 不够，这条也要改。

## 版本号

versionName 改为 `F1.0.2`。versionCode 保持 194。

dex 内另有 4 处版本字符串，分布在 classes2 与 classes3。
`'2'` 与 `'F'` 的码元顺序不同，改动会打乱字符串表。
两个 dex 都走 smali 重编。

## 已知副作用

`UpdateCardKt` 里 `Version.parse("F1.0.2")` 解析失败，更新检查功能不可用。
本项目不修这个问题。

## 字符串表顺序坑

DEX 的字符串表必须按 MUTF-8 升序排列。ART 在安装阶段校验这个顺序。
顺序被破坏时，整个 dex 拒绝加载。

第一版改了 `fileprovider` 的 authority，正好打乱 `classes3.dex` 的字符串顺序。
现象是安装成功，运行时抛 `NoClassDefFoundError: kotlinx/datetime/internal/format/parser/NumberConsumptionError`。
报错的类与改动无关，很容易误判。

解法是 smali 反汇编再汇编，让工具重新生成有序的字符串表。

## 等长替换能省一步

若新旧包名等长，只改字面量字节即可，不必重建 AXML 字符串池。
`me.retest.rikkahub` 是 18 字符，走的这条路。
`fuiviokd.re.rikka` 是 17 字符，必须重建。

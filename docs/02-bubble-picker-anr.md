# 修复二：悬浮球样式选择器引发 ANR

## 现象

开启悬浮窗后，进入 设置 → 扩展与保活 → 后台保活，滚动到页面底部时 APP 直接退出。
崩溃报告里没有 Java 异常记录。

## 根因

「后台保活」卡里的悬浮球样式选择器，一次把 8 种样式全部绘制成真实 Android View。
每个 BubbleView 是 44dp 的嵌入视图。
滚到底部时，这 8 个视图在同一次布局中被创建和测量。
主线程一帧耗时超过 5 秒，系统判 ANR 并杀掉进程。

崩溃报告没有异常栈，因为这不是异常崩溃，是超时。

同一台机器在前一天另有 7 次 ANR 与 HANG 记录，栈顶都是 `AndroidViewHolder.obtainMeasureSpec`。

## 位置

```
Lme/rerere/rikkahub/ui/pages/setting/SettingExtensionsPageKt;
方法 BubbleStylePicker-3IgeMak
```

jadx 反编译结果显示为 `m73BubbleStylePicker3IgeMak`。

## 原指令

```smali
invoke-static {…}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(…)V
```

一个 invoke 占 3 个码元。

## 改法

把这 3 个码元改为 `nop`。

`AndroidView` 返回 void，nop 掉调用不会留下未赋值的寄存器。
保留的部分：样式标签文字、点选逻辑、Composer 状态读取。

## 验证

改后方法体内 `AndroidView` 出现 0 次。
方法指令数 1235，nop 32 个，改动前是 29 个。

## 代价

选择器只显示文字标签，不再显示样式缩略图。
按标签选择悬浮球样式仍然可用。

# 修复一：DeepSeek 报 Tool names must be unique

## 现象

在 APP 内启用技能后，用 DeepSeek 模型发消息，请求返回 400。
错误内容为 `Tool names must be unique`，对话无法进行。
换用其他 provider 不报错。

## 根因

`use_skill` 工具在同一次请求里被注入了两次。

- `ChatService.buildGenerationTools()` 注入一次。
- `GenerationHandler.generateText()` 里再调 `createSkillTools(...)` 并 `addAll` 注入一次。

DeepSeek 对 tools 数组里的函数名做唯一性校验。同名出现两次，请求被拒。

## 位置

```
Lme/rerere/rikkahub/service/ChatService;
方法 buildGenerationTools
```

## 原指令

```smali
invoke-static {v7, v1}, Lme/rerere/rikkahub/data/ai/tools/SkillsToolsKt;->createSkillTools(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
move-result-object v1
invoke-virtual {v10, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z
```

三条指令共占 7 个 16 位码元。两个 invoke 各占 3 个，move-result 占 1 个。

## 改法

把这 7 个码元全部写为 `0x0000`，即 nop。

## 为什么改这里

`generateText()` 里的那次注入带条件：`enabledSkills` 非空且技能存在。
保留它有两点好处。技能在每个入口都可用，且只注入一次。
若反过来 nop 掉 `generateText()`，某些入口会丢失技能工具。

## 验证

改后 `buildGenerationTools` 方法体内，`createSkillTools` 出现 0 次。
`ListBuilder->addAll` 从 10 次降到 9 次。

## 相关约束

DeepSeek 对工具名还有字符集校验，只接受 `^[a-zA-Z0-9_-]+$`。
工具名含 `.`、`:`、空格等字符时，返回 `Invalid 'tools[0].function.name'`。
本项目未改工具命名，仅记录这条约束供参考。

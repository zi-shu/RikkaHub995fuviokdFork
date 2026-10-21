.class public final Lme/rerere/rikkahub/service/ChatService;
.super Ljava/lang/Object;
.source "r8-map-id-6337ec4fffefe9bb84a33cee55751fbcead97c75dba99fe0762cd9a21382e53f"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lme/rerere/rikkahub/service/ChatService;",
        "",
        "AutoCompressResult",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final REFUSAL_RETRY_HARD_CAP:I

.field public final _compressingConversations:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _errors:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _generationDoneFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final _generationRetryAttempts:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _reconnectAttempts:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _refusalRewrites:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final appEventBus:Lme/rerere/rikkahub/data/event/AppEventBus;

.field public final appScope:Lme/rerere/rikkahub/AppScope;

.field public final branchService$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final chatPool:Lme/rerere/rikkahub/service/ChatPool;

.field public final compactRequests:Ljava/util/concurrent/ConcurrentHashMap;

.field public final compressingConversations:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final connectorManager:Lme/rerere/rikkahub/data/connector/ConnectorManager;

.field public final context:Landroid/app/Application;

.field public final contextExclusionTransformer:Lme/rerere/rikkahub/data/ai/transformers/ContextExclusionTransformer;

.field public final conversationPagers:Ljava/util/concurrent/ConcurrentHashMap;

.field public final conversationRepo:Lme/rerere/rikkahub/data/repository/ConversationRepository;

.field public final cordisRuntimeHost:Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;

.field public final errors:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final exclusionTokenSeq:Ljava/util/concurrent/atomic/AtomicLong;

.field public final filesManager:Lme/rerere/rikkahub/data/files/FilesManager;

.field public final folderRepository:Lme/rerere/rikkahub/data/repository/FolderRepository;

.field public final genMediaRepository:Lme/rerere/rikkahub/data/repository/GenMediaRepository;

.field public final generationDoneFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final generationEpoch:Ljava/util/concurrent/atomic/AtomicLong;

.field public final generationHandler:Lme/rerere/rikkahub/data/ai/GenerationHandler;

.field public final generationRetryAttempts:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final hookFailureNotifiedAt:Ljava/util/concurrent/ConcurrentHashMap;

.field public final hookTransformer$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final inputTransformers$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final lastStreamPersistAt:Ljava/util/concurrent/ConcurrentHashMap;

.field public final localTools:Lme/rerere/rikkahub/data/ai/tools/local/LocalTools;

.field public final mcpManager:Lme/rerere/rikkahub/data/ai/mcp/McpManager;

.field public final memoryRepository:Lme/rerere/rikkahub/data/repository/MemoryRepository;

.field public final outputTransformers$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final planTracker:Lme/rerere/rikkahub/data/ai/plan/PlanTracker;

.field public final pluginManager:Lme/rerere/rikkahub/data/plugin/PluginManager;

.field public final providerManager:Lme/rerere/ai/provider/ProviderManager;

.field public final reconnectAttempts:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final refusalRetryCount:Ljava/util/concurrent/ConcurrentHashMap;

.field public final refusalRewrites:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final selfHostedPromptTransformer:Lme/rerere/rikkahub/data/ai/transformers/SelfHostedPromptTransformer;

.field public final settingsStore:Lme/rerere/rikkahub/data/datastore/SettingsStore;

.field public final sideEffectRollbacker$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final skillManager:Lme/rerere/rikkahub/data/files/SkillManager;

.field public final subagentRunTracker:Lme/rerere/rikkahub/data/ai/subagent/SubagentRunTracker;

.field public final templateTransformer:Lme/rerere/rikkahub/data/ai/transformers/TemplateTransformer;

.field public final translationHandler:Lme/rerere/rikkahub/data/ai/TranslationHandler;

.field public final translationService$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final videoGenerationManager:Lme/rerere/videogen/provider/VideoGenerationManager;

.field public final workflowRepository:Lme/rerere/rikkahub/data/repository/WorkflowRepository;

.field public final workflowRunner:Lme/rerere/rikkahub/data/ai/workflow/WorkflowRunner;

.field public final workspaceManager:Lme/rerere/workspace/WorkspaceManager;

.field public final workspaceReminderTransformer:Lme/rerere/rikkahub/data/ai/transformers/WorkspaceReminderTransformer;

.field public final workspaceRepository:Lme/rerere/rikkahub/data/repository/WorkspaceRepository;

.field public final workspaceSnapshotManager$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lme/rerere/rikkahub/AppScope;Lme/rerere/rikkahub/data/event/AppEventBus;Lme/rerere/rikkahub/data/datastore/SettingsStore;Lme/rerere/rikkahub/data/repository/ConversationRepository;Lme/rerere/rikkahub/data/repository/MemoryRepository;Lme/rerere/rikkahub/data/ai/GenerationHandler;Lme/rerere/rikkahub/data/ai/TranslationHandler;Lme/rerere/rikkahub/data/ai/transformers/TemplateTransformer;Lme/rerere/ai/provider/ProviderManager;Lme/rerere/rikkahub/data/ai/tools/local/LocalTools;Lme/rerere/rikkahub/data/ai/mcp/McpManager;Lme/rerere/rikkahub/data/connector/ConnectorManager;Lme/rerere/rikkahub/data/files/FilesManager;Lme/rerere/rikkahub/data/files/SkillManager;Lme/rerere/rikkahub/data/repository/WorkspaceRepository;Lme/rerere/rikkahub/data/repository/FolderRepository;Lme/rerere/workspace/WorkspaceManager;Lme/rerere/rikkahub/data/repository/WorkflowRepository;Lme/rerere/rikkahub/data/ai/workflow/WorkflowRunner;Lme/rerere/rikkahub/data/plugin/PluginManager;Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;Lme/rerere/rikkahub/data/repository/GenMediaRepository;Lme/rerere/rikkahub/data/ai/subagent/SubagentRunTracker;Lme/rerere/rikkahub/data/ai/plan/PlanTracker;Lme/rerere/videogen/provider/VideoGenerationManager;)V
    .registers 30

    move-object/from16 v0, p16

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p25 .. p25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p26 .. p26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->context:Landroid/app/Application;

    .line 3
    iput-object p2, p0, Lme/rerere/rikkahub/service/ChatService;->appScope:Lme/rerere/rikkahub/AppScope;

    .line 4
    iput-object p3, p0, Lme/rerere/rikkahub/service/ChatService;->appEventBus:Lme/rerere/rikkahub/data/event/AppEventBus;

    .line 5
    iput-object p4, p0, Lme/rerere/rikkahub/service/ChatService;->settingsStore:Lme/rerere/rikkahub/data/datastore/SettingsStore;

    .line 6
    iput-object p5, p0, Lme/rerere/rikkahub/service/ChatService;->conversationRepo:Lme/rerere/rikkahub/data/repository/ConversationRepository;

    .line 7
    iput-object p6, p0, Lme/rerere/rikkahub/service/ChatService;->memoryRepository:Lme/rerere/rikkahub/data/repository/MemoryRepository;

    .line 8
    iput-object p7, p0, Lme/rerere/rikkahub/service/ChatService;->generationHandler:Lme/rerere/rikkahub/data/ai/GenerationHandler;

    .line 9
    iput-object p8, p0, Lme/rerere/rikkahub/service/ChatService;->translationHandler:Lme/rerere/rikkahub/data/ai/TranslationHandler;

    .line 10
    iput-object p9, p0, Lme/rerere/rikkahub/service/ChatService;->templateTransformer:Lme/rerere/rikkahub/data/ai/transformers/TemplateTransformer;

    .line 11
    iput-object p10, p0, Lme/rerere/rikkahub/service/ChatService;->providerManager:Lme/rerere/ai/provider/ProviderManager;

    .line 12
    iput-object p11, p0, Lme/rerere/rikkahub/service/ChatService;->localTools:Lme/rerere/rikkahub/data/ai/tools/local/LocalTools;

    .line 13
    iput-object p12, p0, Lme/rerere/rikkahub/service/ChatService;->mcpManager:Lme/rerere/rikkahub/data/ai/mcp/McpManager;

    move-object/from16 p1, p13

    .line 14
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->connectorManager:Lme/rerere/rikkahub/data/connector/ConnectorManager;

    move-object/from16 p1, p14

    .line 15
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->filesManager:Lme/rerere/rikkahub/data/files/FilesManager;

    move-object/from16 p1, p15

    .line 16
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->skillManager:Lme/rerere/rikkahub/data/files/SkillManager;

    .line 17
    iput-object v0, p0, Lme/rerere/rikkahub/service/ChatService;->workspaceRepository:Lme/rerere/rikkahub/data/repository/WorkspaceRepository;

    move-object/from16 p1, p17

    .line 18
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->folderRepository:Lme/rerere/rikkahub/data/repository/FolderRepository;

    move-object/from16 p1, p18

    .line 19
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->workspaceManager:Lme/rerere/workspace/WorkspaceManager;

    move-object/from16 p1, p19

    .line 20
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->workflowRepository:Lme/rerere/rikkahub/data/repository/WorkflowRepository;

    move-object/from16 p1, p20

    .line 21
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->workflowRunner:Lme/rerere/rikkahub/data/ai/workflow/WorkflowRunner;

    move-object/from16 p1, p21

    .line 22
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->pluginManager:Lme/rerere/rikkahub/data/plugin/PluginManager;

    move-object/from16 p1, p22

    .line 23
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->cordisRuntimeHost:Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;

    move-object/from16 p1, p23

    .line 24
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->genMediaRepository:Lme/rerere/rikkahub/data/repository/GenMediaRepository;

    move-object/from16 p1, p24

    .line 25
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->subagentRunTracker:Lme/rerere/rikkahub/data/ai/subagent/SubagentRunTracker;

    move-object/from16 p1, p25

    .line 26
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->planTracker:Lme/rerere/rikkahub/data/ai/plan/PlanTracker;

    move-object/from16 p1, p26

    .line 27
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->videoGenerationManager:Lme/rerere/videogen/provider/VideoGenerationManager;

    .line 28
    new-instance p1, Lme/rerere/rikkahub/data/ai/transformers/WorkspaceReminderTransformer;

    invoke-direct {p1, v0}, Lme/rerere/rikkahub/data/ai/transformers/WorkspaceReminderTransformer;-><init>(Lme/rerere/rikkahub/data/repository/WorkspaceRepository;)V

    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->workspaceReminderTransformer:Lme/rerere/rikkahub/data/ai/transformers/WorkspaceReminderTransformer;

    .line 29
    new-instance p1, Lme/rerere/rikkahub/data/ai/transformers/ContextExclusionTransformer;

    invoke-direct {p1}, Lme/rerere/rikkahub/data/ai/transformers/ContextExclusionTransformer;-><init>()V

    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->contextExclusionTransformer:Lme/rerere/rikkahub/data/ai/transformers/ContextExclusionTransformer;

    .line 30
    new-instance p1, Lme/rerere/rikkahub/data/ai/transformers/SelfHostedPromptTransformer;

    invoke-direct {p1}, Lme/rerere/rikkahub/data/ai/transformers/SelfHostedPromptTransformer;-><init>()V

    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->selfHostedPromptTransformer:Lme/rerere/rikkahub/data/ai/transformers/SelfHostedPromptTransformer;

    .line 31
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p3, 0x0

    invoke-direct {p1, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->exclusionTokenSeq:Ljava/util/concurrent/atomic/AtomicLong;

    .line 32
    new-instance p1, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda10;

    const/4 p5, 0x0

    invoke-direct {p1, p0, p5}, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda10;-><init>(Lme/rerere/rikkahub/service/ChatService;I)V

    .line 33
    new-instance p6, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p6, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 34
    iput-object p6, p0, Lme/rerere/rikkahub/service/ChatService;->hookTransformer$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 35
    new-instance p1, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda10;

    const/4 p6, 0x1

    invoke-direct {p1, p0, p6}, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda10;-><init>(Lme/rerere/rikkahub/service/ChatService;I)V

    .line 36
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 37
    iput-object v0, p0, Lme/rerere/rikkahub/service/ChatService;->inputTransformers$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 38
    new-instance p1, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda10;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda10;-><init>(Lme/rerere/rikkahub/service/ChatService;I)V

    .line 39
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v1, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 40
    iput-object v1, p0, Lme/rerere/rikkahub/service/ChatService;->outputTransformers$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 41
    new-instance p1, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda10;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v1}, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda10;-><init>(Lme/rerere/rikkahub/service/ChatService;I)V

    .line 42
    new-instance v2, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 43
    iput-object v2, p0, Lme/rerere/rikkahub/service/ChatService;->workspaceSnapshotManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 44
    new-instance p1, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda10;

    const/4 v2, 0x4

    invoke-direct {p1, p0, v2}, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda10;-><init>(Lme/rerere/rikkahub/service/ChatService;I)V

    .line 45
    new-instance v2, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 46
    iput-object v2, p0, Lme/rerere/rikkahub/service/ChatService;->sideEffectRollbacker$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 47
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->lastStreamPersistAt:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->conversationPagers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    new-instance p1, Lme/rerere/rikkahub/service/ChatPool;

    .line 50
    new-instance v2, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p6}, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda2;-><init>(Lme/rerere/rikkahub/service/ChatService;I)V

    .line 51
    new-instance p6, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda2;

    invoke-direct {p6, p0, v0}, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda2;-><init>(Lme/rerere/rikkahub/service/ChatService;I)V

    .line 52
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda2;-><init>(Lme/rerere/rikkahub/service/ChatService;I)V

    .line 53
    invoke-direct {p1, p2, v2, p6, v0}, Lme/rerere/rikkahub/service/ChatPool;-><init>(Lme/rerere/rikkahub/AppScope;Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda2;Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda2;Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda2;)V

    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 54
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->_errors:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 55
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    .line 56
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->errors:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 57
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->hookFailureNotifiedAt:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->generationEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 p1, 0x14

    .line 59
    iput p1, p0, Lme/rerere/rikkahub/service/ChatService;->REFUSAL_RETRY_HARD_CAP:I

    .line 60
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->refusalRetryCount:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lme/rerere/rikkahub/service/ChatService;->_refusalRewrites:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 62
    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    .line 63
    iput-object p3, p0, Lme/rerere/rikkahub/service/ChatService;->refusalRewrites:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 64
    sget-object p3, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lme/rerere/rikkahub/service/ChatService;->_compressingConversations:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 65
    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    .line 66
    iput-object p3, p0, Lme/rerere/rikkahub/service/ChatService;->compressingConversations:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 67
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p3, p0, Lme/rerere/rikkahub/service/ChatService;->compactRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lme/rerere/rikkahub/service/ChatService;->_reconnectAttempts:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 69
    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    .line 70
    iput-object p3, p0, Lme/rerere/rikkahub/service/ChatService;->reconnectAttempts:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 71
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->_generationRetryAttempts:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 72
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    .line 73
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->generationRetryAttempts:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 74
    new-instance p1, Lme/rerere/rikkahub/service/ChatService$1;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3, p5}, Lme/rerere/rikkahub/service/ChatService$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/Continuation;I)V

    .line 75
    invoke-static {p2, p3, p3, p1, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 76
    new-instance p1, Lme/rerere/rikkahub/service/ChatService$2;

    invoke-direct {p1, p0, p3, p5}, Lme/rerere/rikkahub/service/ChatService$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 77
    invoke-static {p2, p3, p3, p1, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 p1, 0x7

    .line 78
    invoke-static {p5, p1, p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService;->_generationDoneFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 79
    new-instance p2, Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-direct {p2, p1, p3}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/StandaloneCoroutine;)V

    .line 80
    iput-object p2, p0, Lme/rerere/rikkahub/service/ChatService;->generationDoneFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 81
    new-instance p1, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda10;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda10;-><init>(Lme/rerere/rikkahub/service/ChatService;I)V

    .line 82
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 83
    iput-object p2, p0, Lme/rerere/rikkahub/service/ChatService;->branchService$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 84
    new-instance p1, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda10;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda10;-><init>(Lme/rerere/rikkahub/service/ChatService;I)V

    .line 85
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 86
    iput-object p2, p0, Lme/rerere/rikkahub/service/ChatService;->translationService$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public static addError$default(Lme/rerere/rikkahub/service/ChatService;Ljava/lang/Throwable;Lkotlin/uuid/Uuid;Ljava/lang/String;I)V
    .registers 7

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_5

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    instance-of p4, p1, Ljava/util/concurrent/CancellationException;

    .line 13
    .line 14
    if-eqz p4, :cond_10

    .line 15
    .line 16
    goto :goto_28

    .line 17
    :cond_10
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatService;->_errors:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 18
    .line 19
    :cond_12
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    move-object v0, p4

    .line 24
    check-cast v0, Ljava/util/List;

    .line 25
    .line 26
    new-instance v1, Lme/rerere/rikkahub/service/ChatError;

    .line 27
    .line 28
    invoke-direct {v1, p3, p1, p2}, Lme/rerere/rikkahub/service/ChatError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/uuid/Uuid;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, p4, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    if-eqz p4, :cond_12

    .line 40
    .line 41
    :goto_28
    return-void
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
.end method

.method public static final compressConversation_hUnOzRk$lambda$0$compressMessages(ILme/rerere/rikkahub/data/datastore/Settings;Lme/rerere/ai/provider/Provider;Lme/rerere/ai/provider/ProviderSetting;Lme/rerere/ai/provider/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 30

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-object/from16 v1, p9

    .line 4
    .line 5
    instance-of v2, v1, Lme/rerere/rikkahub/service/ChatService$compressConversation$2$compressMessages$1;

    .line 6
    .line 7
    if-eqz v2, :cond_17

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lme/rerere/rikkahub/service/ChatService$compressConversation$2$compressMessages$1;

    .line 11
    .line 12
    iget v3, v2, Lme/rerere/rikkahub/service/ChatService$compressConversation$2$compressMessages$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_17

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lme/rerere/rikkahub/service/ChatService$compressConversation$2$compressMessages$1;->label:I

    .line 22
    .line 23
    goto :goto_1c

    .line 24
    :cond_17
    new-instance v2, Lme/rerere/rikkahub/service/ChatService$compressConversation$2$compressMessages$1;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_1c
    iget-object v1, v2, Lme/rerere/rikkahub/service/ChatService$compressConversation$2$compressMessages$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v2, Lme/rerere/rikkahub/service/ChatService$compressConversation$2$compressMessages$1;->label:I

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    if-eqz v3, :cond_31

    .line 36
    .line 37
    if-ne v3, v4, :cond_2b

    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_e1

    .line 43
    .line 44
    :cond_2b
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v5

    .line 50
    :cond_31
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p1 .. p1}, Lme/rerere/rikkahub/data/datastore/Settings;->getCompressPrompt()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v3, Lkotlin/Pair;

    .line 58
    .line 59
    const-string v6, "content"

    .line 60
    .line 61
    move-object/from16 v7, p6

    .line 62
    .line 63
    invoke-direct {v3, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    new-instance v7, Lkotlin/Pair;

    .line 71
    .line 72
    const-string v8, "target_tokens"

    .line 73
    .line 74
    invoke-direct {v7, v8, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-static/range {p5 .. p5}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-nez v8, :cond_62

    .line 87
    .line 88
    const-string v8, "Additional instructions from user: "

    .line 89
    .line 90
    move-object/from16 v9, p5

    .line 91
    .line 92
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :cond_62
    invoke-static/range {p7 .. p7}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-nez v8, :cond_78

    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-lez v8, :cond_73

    .line 110
    .line 111
    const-string v8, "\n"

    .line 112
    .line 113
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    :cond_73
    move-object/from16 v8, p7

    .line 117
    .line 118
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    :cond_78
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    new-instance v8, Lkotlin/Pair;

    .line 126
    .line 127
    const-string v9, "additional_context"

    .line 128
    .line 129
    invoke-direct {v8, v9, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    new-instance v9, Lkotlin/Pair;

    .line 141
    .line 142
    const-string v10, "locale"

    .line 143
    .line 144
    invoke-direct {v9, v10, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    filled-new-array {v3, v7, v8, v9}, [Lkotlin/Pair;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-static {v1, v3}, Lme/rerere/rikkahub/utils/StringUtilsKt;->applyPlaceholders(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    sget-object v3, Lme/rerere/ai/ui/UIMessage;->Companion:Lme/rerere/ai/ui/UIMessage$Companion;

    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-static {v1}, Lme/rerere/ai/ui/UIMessage$Companion;->user(Ljava/lang/String;)Lme/rerere/ai/ui/UIMessage;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v1}, Lpalettes/TonalPalette$Companion;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    sget-object v3, Lme/rerere/ai/core/ReasoningLevel;->OFF:Lme/rerere/ai/core/ReasoningLevel;

    .line 169
    .line 170
    move-object/from16 v6, p4

    .line 171
    .line 172
    invoke-static {v6, v3, v5, v5, v0}, Lme/rerere/rikkahub/service/ChatServiceKt;->backgroundTextGenerationParams(Lme/rerere/ai/provider/Model;Lme/rerere/ai/core/ReasoningLevel;Ljava/lang/Integer;Ljava/lang/String;Lme/rerere/ai/provider/ProviderSetting;)Lme/rerere/ai/provider/TextGenerationParams;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    div-int/lit8 v3, p8, 0x2

    .line 177
    .line 178
    add-int v3, v3, p8

    .line 179
    .line 180
    const/16 v7, 0x800

    .line 181
    .line 182
    const/16 v8, 0x7d00

    .line 183
    .line 184
    invoke-static {v3, v7, v8}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    new-instance v10, Ljava/lang/Integer;

    .line 189
    .line 190
    invoke-direct {v10, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 191
    .line 192
    .line 193
    const/16 v18, 0x7f7

    .line 194
    .line 195
    const/16 v19, 0x0

    .line 196
    .line 197
    const/4 v7, 0x0

    .line 198
    const/4 v8, 0x0

    .line 199
    const/4 v9, 0x0

    .line 200
    const/4 v11, 0x0

    .line 201
    const/4 v12, 0x0

    .line 202
    const/4 v13, 0x0

    .line 203
    const/4 v14, 0x0

    .line 204
    const/4 v15, 0x0

    .line 205
    const/16 v16, 0x0

    .line 206
    .line 207
    const/16 v17, 0x0

    .line 208
    .line 209
    invoke-static/range {v6 .. v19}, Lme/rerere/ai/provider/TextGenerationParams;->copy$default(Lme/rerere/ai/provider/TextGenerationParams;Lme/rerere/ai/provider/Model;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/util/List;Lme/rerere/ai/core/ReasoningLevel;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lme/rerere/ai/provider/TextGenerationParams;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    iput v4, v2, Lme/rerere/rikkahub/service/ChatService$compressConversation$2$compressMessages$1;->label:I

    .line 214
    .line 215
    move-object/from16 v4, p2

    .line 216
    .line 217
    invoke-interface {v4, v0, v1, v3, v2}, Lme/rerere/ai/provider/Provider;->generateText(Lme/rerere/ai/provider/ProviderSetting;Ljava/util/List;Lme/rerere/ai/provider/TextGenerationParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 222
    .line 223
    if-ne v1, v0, :cond_e1

    .line 224
    .line 225
    return-object v0

    .line 226
    :cond_e1
    :goto_e1
    check-cast v1, Lme/rerere/ai/provider/TextGenerationResult;

    .line 227
    .line 228
    invoke-virtual {v1}, Lme/rerere/ai/provider/TextGenerationResult;->getMessage()Lme/rerere/ai/ui/UIMessage;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lme/rerere/ai/ui/UIMessage;->toText()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v0}, Lkotlin/text/StringsKt___StringsJvmKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v0}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-nez v1, :cond_fa

    .line 249
    .line 250
    goto :goto_fb

    .line 251
    :cond_fa
    move-object v0, v5

    .line 252
    :goto_fb
    if-eqz v0, :cond_fe

    .line 253
    .line 254
    return-object v0

    .line 255
    :cond_fe
    const-string v0, "Failed to generate compressed summary"

    .line 256
    .line 257
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    return-object v5
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
.end method

.method public static final copyWithForkedFileUrl$copyLocalFileIfNeeded(Lme/rerere/rikkahub/service/ChatService;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p2, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$copyLocalFileIfNeeded$1;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$copyLocalFileIfNeeded$1;

    .line 7
    .line 8
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$copyLocalFileIfNeeded$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_13

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$copyLocalFileIfNeeded$1;->label:I

    .line 18
    .line 19
    goto :goto_18

    .line 20
    :cond_13
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$copyLocalFileIfNeeded$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_18
    iget-object p2, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$copyLocalFileIfNeeded$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$copyLocalFileIfNeeded$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2e

    .line 31
    .line 32
    if-ne v1, v2, :cond_27

    .line 33
    .line 34
    iget-object p1, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$copyLocalFileIfNeeded$1;->L$1:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_55

    .line 40
    :cond_27
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2e
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const-string p2, "file:"

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-static {p1, p2, v1}, Lkotlin/text/StringsKt___StringsJvmKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_3b

    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_3b
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatService;->filesManager:Lme/rerere/rikkahub/data/files/FilesManager;

    .line 61
    .line 62
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {p2}, Lpalettes/TonalPalette$Companion;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iput-object p1, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$copyLocalFileIfNeeded$1;->L$1:Ljava/lang/String;

    .line 74
    .line 75
    iput v2, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$copyLocalFileIfNeeded$1;->label:I

    .line 76
    .line 77
    invoke-virtual {p0, p2, v0}, Lme/rerere/rikkahub/data/files/FilesManager;->createChatFilesByContentsAsync(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 82
    .line 83
    if-ne p2, p0, :cond_55

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_55
    :goto_55
    check-cast p2, Ljava/util/List;

    .line 87
    .line 88
    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Landroid/net/Uri;

    .line 93
    .line 94
    if-eqz p0, :cond_67

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-nez p0, :cond_66

    .line 101
    .line 102
    goto :goto_67

    .line 103
    :cond_66
    return-object p0

    .line 104
    :cond_67
    :goto_67
    return-object p1
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
.end method

.method public static finalizeInterruptedAssistantMessages(Lme/rerere/rikkahub/data/model/Conversation;)Lme/rerere/rikkahub/data/model/Conversation;
    .registers 25

    .line 1
    invoke-virtual/range {p0 .. p0}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_96

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    move-object v6, v3

    .line 32
    check-cast v6, Lme/rerere/rikkahub/data/model/MessageNode;

    .line 33
    .line 34
    invoke-virtual {v6}, Lme/rerere/rikkahub/data/model/MessageNode;->getMessages()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    new-instance v8, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_7c

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lme/rerere/ai/ui/UIMessage;

    .line 62
    .line 63
    invoke-virtual {v4}, Lme/rerere/ai/ui/UIMessage;->getRole()Lme/rerere/ai/core/MessageRole;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    sget-object v9, Lme/rerere/ai/core/MessageRole;->ASSISTANT:Lme/rerere/ai/core/MessageRole;

    .line 68
    .line 69
    if-ne v7, v9, :cond_78

    .line 70
    .line 71
    invoke-virtual {v4}, Lme/rerere/ai/ui/UIMessage;->getFinishedAt()Lkotlinx/datetime/LocalDateTime;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    if-nez v7, :cond_78

    .line 76
    .line 77
    invoke-static {v4}, Lme/rerere/ai/ui/MessageKt;->finishReasoning(Lme/rerere/ai/ui/UIMessage;)Lme/rerere/ai/ui/UIMessage;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    sget-object v2, Lkotlin/time/InstantJvmKt;->systemClock:Lkotlin/time/Clock;

    .line 82
    .line 83
    invoke-interface {v2}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    sget v4, Lkotlinx/datetime/TimeZone;->$r8$clinit:I

    .line 88
    .line 89
    invoke-static {}, Lkotlinx/datetime/TimeZone$Companion;->currentSystemDefault()Lkotlinx/datetime/TimeZone;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {v2, v4}, Lkotlinx/datetime/TimeZoneKt__TimeZoneJvmKt;->toLocalDateTime(Lkotlin/time/Instant;Lkotlinx/datetime/TimeZone;)Lkotlinx/datetime/LocalDateTime;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    const/16 v21, 0x7df

    .line 98
    .line 99
    const/16 v22, 0x0

    .line 100
    .line 101
    const/4 v10, 0x0

    .line 102
    const/4 v11, 0x0

    .line 103
    const/4 v12, 0x0

    .line 104
    const/4 v13, 0x0

    .line 105
    const/4 v14, 0x0

    .line 106
    const/16 v16, 0x0

    .line 107
    .line 108
    const/16 v17, 0x0

    .line 109
    .line 110
    const/16 v18, 0x0

    .line 111
    .line 112
    const/16 v19, 0x0

    .line 113
    .line 114
    const/16 v20, 0x0

    .line 115
    .line 116
    invoke-static/range {v9 .. v22}, Lme/rerere/ai/ui/UIMessage;->copy$default(Lme/rerere/ai/ui/UIMessage;Lkotlin/uuid/Uuid;Lme/rerere/ai/core/MessageRole;Ljava/util/List;Ljava/util/List;Lkotlinx/datetime/LocalDateTime;Lkotlinx/datetime/LocalDateTime;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Lme/rerere/ai/core/TokenUsage;Ljava/lang/String;ZILjava/lang/Object;)Lme/rerere/ai/ui/UIMessage;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const/4 v2, 0x1

    .line 121
    :cond_78
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_32

    .line 125
    :cond_7c
    invoke-virtual {v6}, Lme/rerere/rikkahub/data/model/MessageNode;->getMessages()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_87

    .line 134
    .line 135
    goto :goto_91

    .line 136
    :cond_87
    const/16 v11, 0xd

    .line 137
    .line 138
    const/4 v12, 0x0

    .line 139
    const/4 v7, 0x0

    .line 140
    const/4 v9, 0x0

    .line 141
    const/4 v10, 0x0

    .line 142
    invoke-static/range {v6 .. v12}, Lme/rerere/rikkahub/data/model/MessageNode;->copy$default(Lme/rerere/rikkahub/data/model/MessageNode;Lkotlin/uuid/Uuid;Ljava/util/List;IZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/MessageNode;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    :goto_91
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto/16 :goto_14

    .line 150
    .line 151
    :cond_96
    if-eqz v2, :cond_bd

    .line 152
    .line 153
    const v22, 0xffff7

    .line 154
    .line 155
    .line 156
    const/16 v23, 0x0

    .line 157
    .line 158
    const/4 v2, 0x0

    .line 159
    const/4 v3, 0x0

    .line 160
    const/4 v4, 0x0

    .line 161
    const/4 v6, 0x0

    .line 162
    const/4 v7, 0x0

    .line 163
    const/4 v8, 0x0

    .line 164
    const/4 v9, 0x0

    .line 165
    const/4 v10, 0x0

    .line 166
    const/4 v11, 0x0

    .line 167
    const/4 v12, 0x0

    .line 168
    const/4 v13, 0x0

    .line 169
    const/4 v14, 0x0

    .line 170
    const/4 v15, 0x0

    .line 171
    const/16 v16, 0x0

    .line 172
    .line 173
    const/16 v17, 0x0

    .line 174
    .line 175
    const/16 v18, 0x0

    .line 176
    .line 177
    const/16 v19, 0x0

    .line 178
    .line 179
    const/16 v20, 0x0

    .line 180
    .line 181
    const/16 v21, 0x0

    .line 182
    .line 183
    move-object/from16 v1, p0

    .line 184
    .line 185
    invoke-static/range {v1 .. v23}, Lme/rerere/rikkahub/data/model/Conversation;->copy$default(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/ConversationCompression;ZLjava/lang/Integer;Ljava/util/Set;ZIZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    return-object v0

    .line 190
    :cond_bd
    return-object p0
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
.end method

.method public static preprocessUserInputParts(Ljava/util/List;Lme/rerere/rikkahub/data/model/Assistant;)Ljava/util/ArrayList;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_36

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lme/rerere/ai/ui/UIMessagePart;

    .line 27
    .line 28
    instance-of v2, v1, Lme/rerere/ai/ui/UIMessagePart$Text;

    .line 29
    .line 30
    if-eqz v2, :cond_32

    .line 31
    .line 32
    check-cast v1, Lme/rerere/ai/ui/UIMessagePart$Text;

    .line 33
    .line 34
    invoke-virtual {v1}, Lme/rerere/ai/ui/UIMessagePart$Text;->getText()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sget-object v3, Lme/rerere/rikkahub/data/model/AssistantAffectScope;->USER:Lme/rerere/rikkahub/data/model/AssistantAffectScope;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static {v2, p1, v3, v4}, Lme/rerere/rikkahub/data/model/AssistantKt;->replaceRegexes(Ljava/lang/String;Lme/rerere/rikkahub/data/model/Assistant;Lme/rerere/rikkahub/data/model/AssistantAffectScope;Z)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x2

    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-static {v1, v2, v4, v3, v4}, Lme/rerere/ai/ui/UIMessagePart$Text;->copy$default(Lme/rerere/ai/ui/UIMessagePart$Text;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;ILjava/lang/Object;)Lme/rerere/ai/ui/UIMessagePart$Text;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_f

    .line 55
    :cond_36
    return-object v0
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
.end method

.method public static synthetic sendMessage$default(Lme/rerere/rikkahub/service/ChatService;Lkotlin/uuid/Uuid;Ljava/util/List;ZI)V
    .registers 5

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_5

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_5
    sget-object p4, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lme/rerere/rikkahub/service/ChatService;->sendMessage(Lkotlin/uuid/Uuid;Ljava/util/List;ZLjava/util/Set;)V

    .line 9
    .line 10
    .line 11
    return-void
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
.end method


# virtual methods
.method public final addConversationReference(Lkotlin/uuid/Uuid;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lme/rerere/rikkahub/service/ChatPool;->getOrCreateSession(Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/service/ConversationSession;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    monitor-enter p0

    .line 11
    :try_start_a
    iget-object p1, p0, Lme/rerere/rikkahub/service/ConversationSession;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lme/rerere/rikkahub/service/ConversationSession;->idleCheckJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p1, :cond_17

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 22
    .line 23
    .line 24
    :cond_17
    iput-object v0, p0, Lme/rerere/rikkahub/service/ConversationSession;->idleCheckJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 25
    .line 26
    iget-object p1, p0, Lme/rerere/rikkahub/service/ConversationSession;->id:Lkotlin/uuid/Uuid;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_20

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    monitor-exit p0

    .line 35
    throw p1
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
.end method

.method public final applyMessageAfterGenerateHook(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 44

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget-object v2, v1, Lme/rerere/rikkahub/service/ChatService;->cordisRuntimeHost:Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;

    .line 6
    .line 7
    instance-of v3, v0, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;

    .line 8
    .line 9
    if-eqz v3, :cond_19

    .line 10
    .line 11
    move-object v3, v0

    .line 12
    check-cast v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;

    .line 13
    .line 14
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_19

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->label:I

    .line 24
    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    new-instance v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;

    .line 27
    .line 28
    invoke-direct {v3, v1, v0}, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_1e
    iget-object v0, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->label:I

    .line 34
    .line 35
    const-string v5, "text"

    .line 36
    .line 37
    const/4 v6, 0x2

    .line 38
    const/4 v7, 0x1

    .line 39
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 43
    .line 44
    if-eqz v4, :cond_52

    .line 45
    .line 46
    if-eq v4, v7, :cond_3b

    .line 47
    .line 48
    if-ne v4, v6, :cond_35

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_35
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v9

    .line 60
    :cond_3b
    iget v2, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->I$1:I

    .line 61
    .line 62
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->I$0:I

    .line 63
    .line 64
    iget-object v7, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->L$4:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v11, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->L$3:Lme/rerere/ai/ui/UIMessage;

    .line 67
    .line 68
    iget-object v12, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->L$2:Lme/rerere/rikkahub/data/model/MessageNode;

    .line 69
    .line 70
    iget-object v13, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 71
    .line 72
    iget-object v14, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->L$0:Lkotlin/uuid/Uuid;

    .line 73
    .line 74
    :try_start_49
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4e

    .line 75
    .line 76
    .line 77
    goto/16 :goto_12d

    .line 78
    .line 79
    :catchall_4e
    move-exception v0

    .line 80
    move-object v9, v14

    .line 81
    goto/16 :goto_146

    .line 82
    .line 83
    :cond_52
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :try_start_55
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;->pipelineSnapshot()Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 87
    .line 88
    .line 89
    move-result-object v0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_5a

    .line 90
    goto :goto_61

    .line 91
    :catchall_5a
    move-exception v0

    .line 92
    new-instance v4, Lkotlin/Result$Failure;

    .line 93
    .line 94
    invoke-direct {v4, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    move-object v0, v4

    .line 98
    :goto_61
    nop

    .line 99
    instance-of v4, v0, Lkotlin/Result$Failure;

    .line 100
    .line 101
    if-eqz v4, :cond_67

    .line 102
    .line 103
    move-object v0, v9

    .line 104
    :cond_67
    check-cast v0, Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 105
    .line 106
    const-string v4, "message:afterGenerate"

    .line 107
    .line 108
    if-eqz v0, :cond_7b

    .line 109
    .line 110
    invoke-virtual {v0}, Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;->getHookHandlers()Ljava/util/Map;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_7b

    .line 115
    .line 116
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-ne v0, v7, :cond_7b

    .line 121
    .line 122
    move v12, v7

    .line 123
    goto :goto_7c

    .line 124
    :cond_7b
    const/4 v12, 0x0

    .line 125
    :goto_7c
    if-nez v12, :cond_80

    .line 126
    .line 127
    goto/16 :goto_253

    .line 128
    .line 129
    :cond_80
    invoke-virtual/range {p0 .. p1}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    move-object v13, v0

    .line 138
    check-cast v13, Lme/rerere/rikkahub/data/model/Conversation;

    .line 139
    .line 140
    invoke-virtual {v13}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    move-object v14, v0

    .line 149
    check-cast v14, Lme/rerere/rikkahub/data/model/MessageNode;

    .line 150
    .line 151
    if-nez v14, :cond_9a

    .line 152
    .line 153
    goto/16 :goto_253

    .line 154
    .line 155
    :cond_9a
    invoke-virtual {v14}, Lme/rerere/rikkahub/data/model/MessageNode;->getCurrentMessage()Lme/rerere/ai/ui/UIMessage;

    .line 156
    .line 157
    .line 158
    move-result-object v15

    .line 159
    invoke-virtual {v15}, Lme/rerere/ai/ui/UIMessage;->getRole()Lme/rerere/ai/core/MessageRole;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    sget-object v11, Lme/rerere/ai/core/MessageRole;->ASSISTANT:Lme/rerere/ai/core/MessageRole;

    .line 164
    .line 165
    if-eq v0, v11, :cond_a8

    .line 166
    .line 167
    goto/16 :goto_253

    .line 168
    .line 169
    :cond_a8
    invoke-virtual {v15}, Lme/rerere/ai/ui/UIMessage;->getParts()Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const/4 v11, 0x0

    .line 178
    :goto_b1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v16

    .line 182
    if-eqz v16, :cond_c8

    .line 183
    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v16

    .line 188
    move-object/from16 v6, v16

    .line 189
    .line 190
    check-cast v6, Lme/rerere/ai/ui/UIMessagePart;

    .line 191
    .line 192
    instance-of v6, v6, Lme/rerere/ai/ui/UIMessagePart$Text;

    .line 193
    .line 194
    if-eqz v6, :cond_c4

    .line 195
    .line 196
    goto :goto_ca

    .line 197
    :cond_c4
    add-int/lit8 v11, v11, 0x1

    .line 198
    .line 199
    const/4 v6, 0x2

    .line 200
    goto :goto_b1

    .line 201
    :cond_c8
    const/4 v0, -0x1

    .line 202
    move v11, v0

    .line 203
    :goto_ca
    if-gez v11, :cond_ce

    .line 204
    .line 205
    goto/16 :goto_253

    .line 206
    .line 207
    :cond_ce
    invoke-virtual {v15}, Lme/rerere/ai/ui/UIMessage;->getParts()Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    check-cast v0, Lme/rerere/ai/ui/UIMessagePart$Text;

    .line 219
    .line 220
    invoke-virtual {v0}, Lme/rerere/ai/ui/UIMessagePart$Text;->getText()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    :try_start_df
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 225
    .line 226
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_e4
    .catchall {:try_start_df .. :try_end_e4} :catchall_13e

    .line 227
    .line 228
    .line 229
    :try_start_e4
    const-string v9, "conversationId"

    .line 230
    .line 231
    invoke-virtual/range {p1 .. p1}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v17
    :try_end_ea
    .catchall {:try_start_e4 .. :try_end_ea} :catchall_142

    .line 235
    :try_start_ea
    invoke-static/range {v17 .. v17}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    check-cast v7, Lkotlinx/serialization/json/JsonElement;

    .line 247
    .line 248
    invoke-static {v6}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    check-cast v7, Lkotlinx/serialization/json/JsonElement;

    .line 260
    .line 261
    new-instance v7, Lkotlinx/serialization/json/JsonObject;

    .line 262
    .line 263
    invoke-direct {v7, v0}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V
    :try_end_109
    .catchall {:try_start_ea .. :try_end_109} :catchall_13e

    .line 264
    .line 265
    .line 266
    move-object/from16 v9, p1

    .line 267
    .line 268
    :try_start_10b
    iput-object v9, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->L$0:Lkotlin/uuid/Uuid;

    .line 269
    .line 270
    iput-object v13, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 271
    .line 272
    iput-object v14, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->L$2:Lme/rerere/rikkahub/data/model/MessageNode;

    .line 273
    .line 274
    iput-object v15, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->L$3:Lme/rerere/ai/ui/UIMessage;

    .line 275
    .line 276
    iput-object v6, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->L$4:Ljava/lang/String;

    .line 277
    .line 278
    iput v12, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->I$0:I

    .line 279
    .line 280
    iput v11, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->I$1:I
    :try_end_119
    .catchall {:try_start_10b .. :try_end_119} :catchall_13a

    .line 281
    .line 282
    move-object/from16 v17, v6

    .line 283
    .line 284
    const/4 v6, 0x1

    .line 285
    :try_start_11c
    iput v6, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->label:I

    .line 286
    .line 287
    invoke-virtual {v2, v4, v7, v3}, Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;->dispatchHook(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v0
    :try_end_122
    .catchall {:try_start_11c .. :try_end_122} :catchall_132

    .line 291
    if-ne v0, v10, :cond_126

    .line 292
    .line 293
    goto/16 :goto_251

    .line 294
    .line 295
    :cond_126
    move v2, v11

    .line 296
    move v4, v12

    .line 297
    move-object v12, v14

    .line 298
    move-object v11, v15

    .line 299
    move-object/from16 v7, v17

    .line 300
    .line 301
    move-object v14, v9

    .line 302
    :goto_12d
    :try_start_12d
    check-cast v0, Lkotlinx/serialization/json/JsonObject;
    :try_end_12f
    .catchall {:try_start_12d .. :try_end_12f} :catchall_4e

    .line 303
    .line 304
    :goto_12f
    move-object/from16 v17, v12

    .line 305
    .line 306
    goto :goto_14e

    .line 307
    :catchall_132
    move-exception v0

    .line 308
    :goto_133
    move v2, v11

    .line 309
    move v4, v12

    .line 310
    move-object v12, v14

    .line 311
    move-object v11, v15

    .line 312
    move-object/from16 v7, v17

    .line 313
    .line 314
    goto :goto_146

    .line 315
    :catchall_13a
    move-exception v0

    .line 316
    :goto_13b
    move-object/from16 v17, v6

    .line 317
    .line 318
    goto :goto_133

    .line 319
    :catchall_13e
    move-exception v0

    .line 320
    move-object/from16 v9, p1

    .line 321
    .line 322
    goto :goto_13b

    .line 323
    :catchall_142
    move-exception v0

    .line 324
    move-object/from16 v9, p1

    .line 325
    .line 326
    goto :goto_13b

    .line 327
    :goto_146
    new-instance v6, Lkotlin/Result$Failure;

    .line 328
    .line 329
    invoke-direct {v6, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 330
    .line 331
    .line 332
    move-object v0, v6

    .line 333
    move-object v14, v9

    .line 334
    goto :goto_12f

    .line 335
    :goto_14e
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    if-nez v6, :cond_254

    .line 340
    .line 341
    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    .line 342
    .line 343
    invoke-virtual {v0, v5}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    .line 348
    .line 349
    if-eqz v0, :cond_253

    .line 350
    .line 351
    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    if-nez v0, :cond_16a

    .line 360
    .line 361
    goto/16 :goto_253

    .line 362
    .line 363
    :cond_16a
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    if-eqz v5, :cond_172

    .line 368
    .line 369
    goto/16 :goto_253

    .line 370
    .line 371
    :cond_172
    invoke-virtual {v11}, Lme/rerere/ai/ui/UIMessage;->getParts()Ljava/util/List;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    check-cast v6, Lme/rerere/ai/ui/UIMessagePart$Text;

    .line 387
    .line 388
    const/4 v7, 0x2

    .line 389
    const/4 v8, 0x0

    .line 390
    invoke-static {v6, v0, v8, v7, v8}, Lme/rerere/ai/ui/UIMessagePart$Text;->copy$default(Lme/rerere/ai/ui/UIMessagePart$Text;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;ILjava/lang/Object;)Lme/rerere/ai/ui/UIMessagePart$Text;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v5, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    invoke-virtual/range {v17 .. v17}, Lme/rerere/rikkahub/data/model/MessageNode;->getMessages()Ljava/util/List;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    new-instance v6, Ljava/util/ArrayList;

    .line 402
    .line 403
    const/16 v7, 0xa

    .line 404
    .line 405
    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 406
    .line 407
    .line 408
    move-result v7

    .line 409
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 410
    .line 411
    .line 412
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    :goto_19f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 417
    .line 418
    .line 419
    move-result v7

    .line 420
    if-eqz v7, :cond_1e5

    .line 421
    .line 422
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v7

    .line 426
    move-object/from16 v18, v7

    .line 427
    .line 428
    check-cast v18, Lme/rerere/ai/ui/UIMessage;

    .line 429
    .line 430
    invoke-virtual/range {v18 .. v18}, Lme/rerere/ai/ui/UIMessage;->getId()Lkotlin/uuid/Uuid;

    .line 431
    .line 432
    .line 433
    move-result-object v7

    .line 434
    invoke-virtual {v11}, Lme/rerere/ai/ui/UIMessage;->getId()Lkotlin/uuid/Uuid;

    .line 435
    .line 436
    .line 437
    move-result-object v8

    .line 438
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v7

    .line 442
    if-eqz v7, :cond_1dc

    .line 443
    .line 444
    const/16 v30, 0x7fb

    .line 445
    .line 446
    const/16 v31, 0x0

    .line 447
    .line 448
    const/16 v19, 0x0

    .line 449
    .line 450
    const/16 v20, 0x0

    .line 451
    .line 452
    const/16 v22, 0x0

    .line 453
    .line 454
    const/16 v23, 0x0

    .line 455
    .line 456
    const/16 v24, 0x0

    .line 457
    .line 458
    const/16 v25, 0x0

    .line 459
    .line 460
    const/16 v26, 0x0

    .line 461
    .line 462
    const/16 v27, 0x0

    .line 463
    .line 464
    const/16 v28, 0x0

    .line 465
    .line 466
    const/16 v29, 0x0

    .line 467
    .line 468
    move-object/from16 v21, v5

    .line 469
    .line 470
    invoke-static/range {v18 .. v31}, Lme/rerere/ai/ui/UIMessage;->copy$default(Lme/rerere/ai/ui/UIMessage;Lkotlin/uuid/Uuid;Lme/rerere/ai/core/MessageRole;Ljava/util/List;Ljava/util/List;Lkotlinx/datetime/LocalDateTime;Lkotlinx/datetime/LocalDateTime;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Lme/rerere/ai/core/TokenUsage;Ljava/lang/String;ZILjava/lang/Object;)Lme/rerere/ai/ui/UIMessage;

    .line 471
    .line 472
    .line 473
    move-result-object v18

    .line 474
    :goto_1d9
    move-object/from16 v5, v18

    .line 475
    .line 476
    goto :goto_1df

    .line 477
    :cond_1dc
    move-object/from16 v21, v5

    .line 478
    .line 479
    goto :goto_1d9

    .line 480
    :goto_1df
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-object/from16 v5, v21

    .line 484
    .line 485
    goto :goto_19f

    .line 486
    :cond_1e5
    const/16 v22, 0xd

    .line 487
    .line 488
    const/16 v23, 0x0

    .line 489
    .line 490
    const/16 v18, 0x0

    .line 491
    .line 492
    const/16 v20, 0x0

    .line 493
    .line 494
    const/16 v21, 0x0

    .line 495
    .line 496
    move-object/from16 v19, v6

    .line 497
    .line 498
    invoke-static/range {v17 .. v23}, Lme/rerere/rikkahub/data/model/MessageNode;->copy$default(Lme/rerere/rikkahub/data/model/MessageNode;Lkotlin/uuid/Uuid;Ljava/util/List;IZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/MessageNode;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {v13}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    invoke-virtual {v13}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 511
    .line 512
    .line 513
    move-result-object v6

    .line 514
    invoke-static {v6}, Lpalettes/TonalPalette$Companion;->getLastIndex(Ljava/util/List;)I

    .line 515
    .line 516
    .line 517
    move-result v6

    .line 518
    invoke-virtual {v5, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    const v39, 0xffff7

    .line 522
    .line 523
    .line 524
    const/16 v40, 0x0

    .line 525
    .line 526
    const/16 v19, 0x0

    .line 527
    .line 528
    const/16 v20, 0x0

    .line 529
    .line 530
    const/16 v21, 0x0

    .line 531
    .line 532
    const/16 v24, 0x0

    .line 533
    .line 534
    const/16 v25, 0x0

    .line 535
    .line 536
    const/16 v26, 0x0

    .line 537
    .line 538
    const/16 v27, 0x0

    .line 539
    .line 540
    const/16 v28, 0x0

    .line 541
    .line 542
    const/16 v29, 0x0

    .line 543
    .line 544
    const/16 v30, 0x0

    .line 545
    .line 546
    const/16 v31, 0x0

    .line 547
    .line 548
    const/16 v32, 0x0

    .line 549
    .line 550
    const/16 v33, 0x0

    .line 551
    .line 552
    const/16 v34, 0x0

    .line 553
    .line 554
    const/16 v35, 0x0

    .line 555
    .line 556
    const/16 v36, 0x0

    .line 557
    .line 558
    const/16 v37, 0x0

    .line 559
    .line 560
    const/16 v38, 0x0

    .line 561
    .line 562
    move-object/from16 v22, v5

    .line 563
    .line 564
    move-object/from16 v18, v13

    .line 565
    .line 566
    invoke-static/range {v18 .. v40}, Lme/rerere/rikkahub/data/model/Conversation;->copy$default(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/ConversationCompression;ZLjava/lang/Integer;Ljava/util/Set;ZIZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    const/4 v8, 0x0

    .line 571
    iput-object v8, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->L$0:Lkotlin/uuid/Uuid;

    .line 572
    .line 573
    iput-object v8, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 574
    .line 575
    iput-object v8, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->L$2:Lme/rerere/rikkahub/data/model/MessageNode;

    .line 576
    .line 577
    iput-object v8, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->L$3:Lme/rerere/ai/ui/UIMessage;

    .line 578
    .line 579
    iput-object v8, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->L$4:Ljava/lang/String;

    .line 580
    .line 581
    iput v4, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->I$0:I

    .line 582
    .line 583
    iput v2, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->I$1:I

    .line 584
    .line 585
    const/4 v7, 0x2

    .line 586
    iput v7, v3, Lme/rerere/rikkahub/service/ChatService$applyMessageAfterGenerateHook$1;->label:I

    .line 587
    .line 588
    invoke-virtual {v1, v14, v0, v3}, Lme/rerere/rikkahub/service/ChatService;->saveConversation(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    if-ne v0, v10, :cond_252

    .line 593
    .line 594
    :goto_251
    return-object v10

    .line 595
    :cond_252
    return-object v0

    .line 596
    :cond_253
    :goto_253
    return-object v8

    .line 597
    :cond_254
    const-string v0, "ChatService"

    .line 598
    .line 599
    const-string v1, "applyMessageAfterGenerateHook dispatch failed"

    .line 600
    .line 601
    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    .line 603
    .line 604
    return-object v8
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
.end method

.method public final applyMessageBeforeSendHook(Ljava/util/ArrayList;Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 14

    .line 1
    iget-object v0, p0, Lme/rerere/rikkahub/service/ChatService;->cordisRuntimeHost:Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;

    .line 2
    .line 3
    instance-of v1, p3, Lme/rerere/rikkahub/service/ChatService$applyMessageBeforeSendHook$1;

    .line 4
    .line 5
    if-eqz v1, :cond_15

    .line 6
    .line 7
    move-object v1, p3

    .line 8
    check-cast v1, Lme/rerere/rikkahub/service/ChatService$applyMessageBeforeSendHook$1;

    .line 9
    .line 10
    iget v2, v1, Lme/rerere/rikkahub/service/ChatService$applyMessageBeforeSendHook$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_15

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lme/rerere/rikkahub/service/ChatService$applyMessageBeforeSendHook$1;->label:I

    .line 20
    .line 21
    goto :goto_1a

    .line 22
    :cond_15
    new-instance v1, Lme/rerere/rikkahub/service/ChatService$applyMessageBeforeSendHook$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p3}, Lme/rerere/rikkahub/service/ChatService$applyMessageBeforeSendHook$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_1a
    iget-object p0, v1, Lme/rerere/rikkahub/service/ChatService$applyMessageBeforeSendHook$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget p3, v1, Lme/rerere/rikkahub/service/ChatService$applyMessageBeforeSendHook$1;->label:I

    .line 30
    .line 31
    const-string v2, "text"

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz p3, :cond_43

    .line 37
    .line 38
    if-ne p3, v5, :cond_3d

    .line 39
    .line 40
    iget p1, v1, Lme/rerere/rikkahub/service/ChatService$applyMessageBeforeSendHook$1;->I$0:I

    .line 41
    .line 42
    iget-object p2, v1, Lme/rerere/rikkahub/service/ChatService$applyMessageBeforeSendHook$1;->L$2:Ljava/lang/String;

    .line 43
    .line 44
    iget-object p3, v1, Lme/rerere/rikkahub/service/ChatService$applyMessageBeforeSendHook$1;->L$0:Ljava/util/ArrayList;

    .line 45
    .line 46
    :try_start_2d
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_36

    .line 47
    .line 48
    .line 49
    move-object v9, p2

    .line 50
    move p2, p1

    .line 51
    move-object p1, p3

    .line 52
    move-object p3, v9

    .line 53
    goto/16 :goto_d9

    .line 54
    .line 55
    :catchall_36
    move-exception p0

    .line 56
    move-object v9, p2

    .line 57
    move p2, p1

    .line 58
    move-object p1, p3

    .line 59
    move-object p3, v9

    .line 60
    goto/16 :goto_e2

    .line 61
    .line 62
    :cond_3d
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v4

    .line 68
    :cond_43
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    move p3, v3

    .line 76
    :goto_4b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_60

    .line 81
    .line 82
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Lme/rerere/ai/ui/UIMessagePart;

    .line 87
    .line 88
    instance-of v6, v6, Lme/rerere/ai/ui/UIMessagePart$Text;

    .line 89
    .line 90
    if-eqz v6, :cond_5d

    .line 91
    .line 92
    move p0, p3

    .line 93
    goto :goto_61

    .line 94
    :cond_5d
    add-int/lit8 p3, p3, 0x1

    .line 95
    .line 96
    goto :goto_4b

    .line 97
    :cond_60
    const/4 p0, -0x1

    .line 98
    :goto_61
    :try_start_61
    invoke-virtual {v0}, Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;->pipelineSnapshot()Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 99
    .line 100
    .line 101
    move-result-object p3
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_66

    .line 102
    goto :goto_6d

    .line 103
    :catchall_66
    move-exception p3

    .line 104
    new-instance v6, Lkotlin/Result$Failure;

    .line 105
    .line 106
    invoke-direct {v6, p3}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    move-object p3, v6

    .line 110
    :goto_6d
    nop

    .line 111
    instance-of v6, p3, Lkotlin/Result$Failure;

    .line 112
    .line 113
    if-eqz v6, :cond_73

    .line 114
    .line 115
    move-object p3, v4

    .line 116
    :cond_73
    check-cast p3, Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 117
    .line 118
    const-string v6, "message:beforeSend"

    .line 119
    .line 120
    if-eqz p3, :cond_87

    .line 121
    .line 122
    invoke-virtual {p3}, Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;->getHookHandlers()Ljava/util/Map;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    if-eqz p3, :cond_87

    .line 127
    .line 128
    invoke-interface {p3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    if-ne p3, v5, :cond_87

    .line 133
    .line 134
    move p3, v5

    .line 135
    goto :goto_88

    .line 136
    :cond_87
    move p3, v3

    .line 137
    :goto_88
    if-ltz p0, :cond_147

    .line 138
    .line 139
    if-nez p3, :cond_8e

    .line 140
    .line 141
    goto/16 :goto_147

    .line 142
    .line 143
    :cond_8e
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    check-cast p3, Lme/rerere/ai/ui/UIMessagePart$Text;

    .line 151
    .line 152
    invoke-virtual {p3}, Lme/rerere/ai/ui/UIMessagePart$Text;->getText()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    :try_start_9b
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 157
    .line 158
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v8, "conversationId"

    .line 162
    .line 163
    invoke-virtual {p2}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-interface {v7, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    .line 179
    .line 180
    invoke-static {p3}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-interface {v7, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    .line 192
    .line 193
    new-instance p2, Lkotlinx/serialization/json/JsonObject;

    .line 194
    .line 195
    invoke-direct {p2, v7}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    .line 196
    .line 197
    .line 198
    iput-object p1, v1, Lme/rerere/rikkahub/service/ChatService$applyMessageBeforeSendHook$1;->L$0:Ljava/util/ArrayList;

    .line 199
    .line 200
    iput-object p3, v1, Lme/rerere/rikkahub/service/ChatService$applyMessageBeforeSendHook$1;->L$2:Ljava/lang/String;

    .line 201
    .line 202
    iput p0, v1, Lme/rerere/rikkahub/service/ChatService$applyMessageBeforeSendHook$1;->I$0:I

    .line 203
    .line 204
    iput v5, v1, Lme/rerere/rikkahub/service/ChatService$applyMessageBeforeSendHook$1;->label:I

    .line 205
    .line 206
    invoke-virtual {v0, v6, p2, v1}, Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;->dispatchHook(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p2
    :try_end_d1
    .catchall {:try_start_9b .. :try_end_d1} :catchall_de

    .line 210
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 211
    .line 212
    if-ne p2, v0, :cond_d6

    .line 213
    .line 214
    return-object v0

    .line 215
    :cond_d6
    move-object v9, p2

    .line 216
    move p2, p0

    .line 217
    move-object p0, v9

    .line 218
    :goto_d9
    :try_start_d9
    check-cast p0, Lkotlinx/serialization/json/JsonObject;
    :try_end_db
    .catchall {:try_start_d9 .. :try_end_db} :catchall_dc

    .line 219
    .line 220
    goto :goto_e8

    .line 221
    :catchall_dc
    move-exception p0

    .line 222
    goto :goto_e2

    .line 223
    :catchall_de
    move-exception p2

    .line 224
    move-object v9, p2

    .line 225
    move p2, p0

    .line 226
    move-object p0, v9

    .line 227
    :goto_e2
    new-instance v0, Lkotlin/Result$Failure;

    .line 228
    .line 229
    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 230
    .line 231
    .line 232
    move-object p0, v0

    .line 233
    :goto_e8
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    if-nez v0, :cond_140

    .line 238
    .line 239
    check-cast p0, Lkotlinx/serialization/json/JsonObject;

    .line 240
    .line 241
    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    .line 246
    .line 247
    if-eqz p0, :cond_13f

    .line 248
    .line 249
    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    if-nez p0, :cond_103

    .line 258
    .line 259
    goto :goto_13f

    .line 260
    :cond_103
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result p3

    .line 264
    if-eqz p3, :cond_10a

    .line 265
    .line 266
    goto :goto_13f

    .line 267
    :cond_10a
    new-instance p3, Ljava/util/ArrayList;

    .line 268
    .line 269
    const/16 v0, 0xa

    .line 270
    .line 271
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 276
    .line 277
    .line 278
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    :goto_119
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_13e

    .line 287
    .line 288
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    add-int/lit8 v1, v3, 0x1

    .line 293
    .line 294
    if-ltz v3, :cond_13a

    .line 295
    .line 296
    check-cast v0, Lme/rerere/ai/ui/UIMessagePart;

    .line 297
    .line 298
    if-ne v3, p2, :cond_135

    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    check-cast v0, Lme/rerere/ai/ui/UIMessagePart$Text;

    .line 304
    .line 305
    const/4 v2, 0x2

    .line 306
    invoke-static {v0, p0, v4, v2, v4}, Lme/rerere/ai/ui/UIMessagePart$Text;->copy$default(Lme/rerere/ai/ui/UIMessagePart$Text;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;ILjava/lang/Object;)Lme/rerere/ai/ui/UIMessagePart$Text;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    :cond_135
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move v3, v1

    .line 314
    goto :goto_119

    .line 315
    :cond_13a
    invoke-static {}, Lpalettes/TonalPalette$Companion;->throwIndexOverflow()V

    .line 316
    .line 317
    .line 318
    throw v4

    .line 319
    :cond_13e
    return-object p3

    .line 320
    :cond_13f
    :goto_13f
    return-object p1

    .line 321
    :cond_140
    const-string p0, "ChatService"

    .line 322
    .line 323
    const-string p2, "applyMessageBeforeSendHook dispatch failed"

    .line 324
    .line 325
    invoke-static {p0, p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .line 327
    .line 328
    :cond_147
    :goto_147
    return-object p1
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
.end method

.method public final applyRequestBeforeSendHook(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlin/uuid/Uuid;)Ljava/lang/Object;
    .registers 16

    .line 1
    iget-object v1, p0, Lme/rerere/rikkahub/service/ChatService;->cordisRuntimeHost:Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;

    .line 2
    .line 3
    instance-of v0, p2, Lme/rerere/rikkahub/service/ChatService$applyRequestBeforeSendHook$1;

    .line 4
    .line 5
    if-eqz v0, :cond_16

    .line 6
    .line 7
    move-object v0, p2

    .line 8
    check-cast v0, Lme/rerere/rikkahub/service/ChatService$applyRequestBeforeSendHook$1;

    .line 9
    .line 10
    iget v2, v0, Lme/rerere/rikkahub/service/ChatService$applyRequestBeforeSendHook$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_16

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v0, Lme/rerere/rikkahub/service/ChatService$applyRequestBeforeSendHook$1;->label:I

    .line 20
    .line 21
    :goto_14
    move-object p0, v0

    .line 22
    goto :goto_1c

    .line 23
    :cond_16
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$applyRequestBeforeSendHook$1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p2}, Lme/rerere/rikkahub/service/ChatService$applyRequestBeforeSendHook$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 26
    .line 27
    .line 28
    goto :goto_14

    .line 29
    :goto_1c
    iget-object p2, p0, Lme/rerere/rikkahub/service/ChatService$applyRequestBeforeSendHook$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    iget v0, p0, Lme/rerere/rikkahub/service/ChatService$applyRequestBeforeSendHook$1;->label:I

    .line 32
    .line 33
    const-string v2, "systemPrompt"

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x1

    .line 37
    if-eqz v0, :cond_41

    .line 38
    .line 39
    if-ne v0, v4, :cond_3b

    .line 40
    .line 41
    iget-object p1, p0, Lme/rerere/rikkahub/service/ChatService$applyRequestBeforeSendHook$1;->L$2:Ljava/lang/String;

    .line 42
    .line 43
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatService$applyRequestBeforeSendHook$1;->L$0:Ljava/util/List;

    .line 44
    .line 45
    :try_start_2c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_34

    .line 46
    .line 47
    .line 48
    move-object v11, p1

    .line 49
    move-object p1, p0

    .line 50
    move-object p0, v11

    .line 51
    goto/16 :goto_ba

    .line 52
    .line 53
    :catchall_34
    move-exception v0

    .line 54
    move-object p2, v0

    .line 55
    move-object v11, p1

    .line 56
    move-object p1, p0

    .line 57
    move-object p0, v11

    .line 58
    goto/16 :goto_cf

    .line 59
    .line 60
    :cond_3b
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v3

    .line 66
    :cond_41
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_4d

    .line 74
    .line 75
    :cond_4a
    move-object v5, p1

    .line 76
    goto/16 :goto_10b

    .line 77
    .line 78
    :cond_4d
    :try_start_4d
    invoke-virtual {v1}, Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;->pipelineSnapshot()Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 79
    .line 80
    .line 81
    move-result-object p2
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_52

    .line 82
    goto :goto_5a

    .line 83
    :catchall_52
    move-exception v0

    .line 84
    move-object p2, v0

    .line 85
    new-instance v0, Lkotlin/Result$Failure;

    .line 86
    .line 87
    invoke-direct {v0, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    move-object p2, v0

    .line 91
    :goto_5a
    nop

    .line 92
    instance-of v0, p2, Lkotlin/Result$Failure;

    .line 93
    .line 94
    if-eqz v0, :cond_60

    .line 95
    .line 96
    goto :goto_61

    .line 97
    :cond_60
    move-object v3, p2

    .line 98
    :goto_61
    check-cast v3, Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 99
    .line 100
    if-eqz v3, :cond_4a

    .line 101
    .line 102
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;->getHookHandlers()Ljava/util/Map;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    if-eqz p2, :cond_4a

    .line 107
    .line 108
    const-string v0, "request:beforeSend"

    .line 109
    .line 110
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-ne p2, v4, :cond_4a

    .line 115
    .line 116
    const/4 v9, 0x0

    .line 117
    const/16 v10, 0x3e

    .line 118
    .line 119
    const-string v6, "\n\n"

    .line 120
    .line 121
    const/4 v7, 0x0

    .line 122
    const/4 v8, 0x0

    .line 123
    move-object v5, p1

    .line 124
    invoke-static/range {v5 .. v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    :try_start_7f
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 129
    .line 130
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_c5

    .line 131
    .line 132
    .line 133
    :try_start_84
    const-string v3, "conversationId"

    .line 134
    .line 135
    invoke-virtual {p3}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p3
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_c0

    .line 139
    :try_start_8a
    invoke-static {p3}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 140
    .line 141
    .line 142
    move-result-object p3

    .line 143
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-interface {p2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    check-cast p3, Lkotlinx/serialization/json/JsonElement;
    :try_end_97
    .catchall {:try_start_8a .. :try_end_97} :catchall_cc

    .line 151
    .line 152
    :try_start_97
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-interface {p2, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    check-cast p3, Lkotlinx/serialization/json/JsonElement;
    :try_end_a4
    .catchall {:try_start_97 .. :try_end_a4} :catchall_c9

    .line 164
    .line 165
    :try_start_a4
    new-instance p3, Lkotlinx/serialization/json/JsonObject;

    .line 166
    .line 167
    invoke-direct {p3, p2}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V
    :try_end_a9
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_c5

    .line 168
    .line 169
    .line 170
    :try_start_a9
    iput-object v5, p0, Lme/rerere/rikkahub/service/ChatService$applyRequestBeforeSendHook$1;->L$0:Ljava/util/List;

    .line 171
    .line 172
    iput-object p1, p0, Lme/rerere/rikkahub/service/ChatService$applyRequestBeforeSendHook$1;->L$2:Ljava/lang/String;

    .line 173
    .line 174
    iput v4, p0, Lme/rerere/rikkahub/service/ChatService$applyRequestBeforeSendHook$1;->label:I

    .line 175
    .line 176
    invoke-virtual {v1, v0, p3, p0}, Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;->dispatchHook(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p2
    :try_end_b3
    .catchall {:try_start_a9 .. :try_end_b3} :catchall_c0

    .line 180
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 181
    .line 182
    if-ne p2, p0, :cond_b8

    .line 183
    .line 184
    return-object p0

    .line 185
    :cond_b8
    move-object p0, p1

    .line 186
    move-object p1, v5

    .line 187
    :goto_ba
    :try_start_ba
    check-cast p2, Lkotlinx/serialization/json/JsonObject;
    :try_end_bc
    .catchall {:try_start_ba .. :try_end_bc} :catchall_bd

    .line 188
    .line 189
    goto :goto_d5

    .line 190
    :catchall_bd
    move-exception v0

    .line 191
    move-object p2, v0

    .line 192
    goto :goto_cf

    .line 193
    :catchall_c0
    move-exception v0

    .line 194
    move-object p2, v0

    .line 195
    :goto_c2
    move-object p0, p1

    .line 196
    move-object p1, v5

    .line 197
    goto :goto_cf

    .line 198
    :catchall_c5
    move-exception v0

    .line 199
    move-object p0, v0

    .line 200
    :goto_c7
    move-object p2, p0

    .line 201
    goto :goto_c2

    .line 202
    :catchall_c9
    move-exception v0

    .line 203
    move-object p0, v0

    .line 204
    goto :goto_c7

    .line 205
    :catchall_cc
    move-exception v0

    .line 206
    move-object p0, v0

    .line 207
    goto :goto_c7

    .line 208
    :goto_cf
    new-instance p3, Lkotlin/Result$Failure;

    .line 209
    .line 210
    invoke-direct {p3, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 211
    .line 212
    .line 213
    move-object p2, p3

    .line 214
    :goto_d5
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 215
    .line 216
    .line 217
    move-result-object p3

    .line 218
    if-nez p3, :cond_103

    .line 219
    .line 220
    check-cast p2, Lkotlinx/serialization/json/JsonObject;

    .line 221
    .line 222
    invoke-virtual {p2, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    .line 227
    .line 228
    if-eqz p2, :cond_102

    .line 229
    .line 230
    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    if-nez p2, :cond_f0

    .line 239
    .line 240
    goto :goto_102

    .line 241
    :cond_f0
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    if-nez p0, :cond_102

    .line 246
    .line 247
    invoke-static {p2}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result p0

    .line 251
    if-eqz p0, :cond_fd

    .line 252
    .line 253
    goto :goto_102

    .line 254
    :cond_fd
    invoke-static {p2}, Lpalettes/TonalPalette$Companion;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    return-object p0

    .line 259
    :cond_102
    :goto_102
    return-object p1

    .line 260
    :cond_103
    const-string p0, "ChatService"

    .line 261
    .line 262
    const-string p2, "applyRequestBeforeSendHook dispatch failed"

    .line 263
    .line 264
    invoke-static {p0, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .line 266
    .line 267
    return-object p1

    .line 268
    :goto_10b
    return-object v5
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
.end method

.method public final applyTitleHook(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;Lkotlin/uuid/Uuid;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v0, p0, Lme/rerere/rikkahub/service/ChatService;->cordisRuntimeHost:Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;

    .line 2
    .line 3
    instance-of v1, p2, Lme/rerere/rikkahub/service/ChatService$applyTitleHook$1;

    .line 4
    .line 5
    if-eqz v1, :cond_15

    .line 6
    .line 7
    move-object v1, p2

    .line 8
    check-cast v1, Lme/rerere/rikkahub/service/ChatService$applyTitleHook$1;

    .line 9
    .line 10
    iget v2, v1, Lme/rerere/rikkahub/service/ChatService$applyTitleHook$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_15

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lme/rerere/rikkahub/service/ChatService$applyTitleHook$1;->label:I

    .line 20
    .line 21
    goto :goto_1a

    .line 22
    :cond_15
    new-instance v1, Lme/rerere/rikkahub/service/ChatService$applyTitleHook$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2}, Lme/rerere/rikkahub/service/ChatService$applyTitleHook$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_1a
    iget-object p0, v1, Lme/rerere/rikkahub/service/ChatService$applyTitleHook$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget p2, v1, Lme/rerere/rikkahub/service/ChatService$applyTitleHook$1;->label:I

    .line 30
    .line 31
    const-string v2, "text"

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz p2, :cond_34

    .line 36
    .line 37
    if-ne p2, v4, :cond_2e

    .line 38
    .line 39
    iget-object p1, v1, Lme/rerere/rikkahub/service/ChatService$applyTitleHook$1;->L$0:Ljava/lang/String;

    .line 40
    .line 41
    :try_start_28
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    .line 42
    .line 43
    .line 44
    goto :goto_93

    .line 45
    :catchall_2c
    move-exception p0

    .line 46
    goto :goto_96

    .line 47
    :cond_2e
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_34
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :try_start_37
    invoke-virtual {v0}, Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;->pipelineSnapshot()Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 57
    .line 58
    .line 59
    move-result-object p0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3c

    .line 60
    goto :goto_43

    .line 61
    :catchall_3c
    move-exception p0

    .line 62
    new-instance p2, Lkotlin/Result$Failure;

    .line 63
    .line 64
    invoke-direct {p2, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    move-object p0, p2

    .line 68
    :goto_43
    nop

    .line 69
    instance-of p2, p0, Lkotlin/Result$Failure;

    .line 70
    .line 71
    if-eqz p2, :cond_49

    .line 72
    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    move-object v3, p0

    .line 75
    :goto_4a
    check-cast v3, Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 76
    .line 77
    if-eqz v3, :cond_c0

    .line 78
    .line 79
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;->getHookHandlers()Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    if-eqz p0, :cond_c0

    .line 84
    .line 85
    const-string p2, "title:afterGenerate"

    .line 86
    .line 87
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-ne p0, v4, :cond_c0

    .line 92
    .line 93
    :try_start_5c
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 94
    .line 95
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v3, "conversationId"

    .line 99
    .line 100
    invoke-virtual {p3}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    invoke-static {p3}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-interface {p0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    check-cast p3, Lkotlinx/serialization/json/JsonElement;

    .line 116
    .line 117
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-interface {p0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    check-cast p3, Lkotlinx/serialization/json/JsonElement;

    .line 129
    .line 130
    new-instance p3, Lkotlinx/serialization/json/JsonObject;

    .line 131
    .line 132
    invoke-direct {p3, p0}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    .line 133
    .line 134
    .line 135
    iput-object p1, v1, Lme/rerere/rikkahub/service/ChatService$applyTitleHook$1;->L$0:Ljava/lang/String;

    .line 136
    .line 137
    iput v4, v1, Lme/rerere/rikkahub/service/ChatService$applyTitleHook$1;->label:I

    .line 138
    .line 139
    invoke-virtual {v0, p2, p3, v1}, Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;->dispatchHook(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p0
    :try_end_8e
    .catchall {:try_start_5c .. :try_end_8e} :catchall_2c

    .line 143
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 144
    .line 145
    if-ne p0, p2, :cond_93

    .line 146
    .line 147
    return-object p2

    .line 148
    :cond_93
    :goto_93
    :try_start_93
    check-cast p0, Lkotlinx/serialization/json/JsonObject;
    :try_end_95
    .catchall {:try_start_93 .. :try_end_95} :catchall_2c

    .line 149
    .line 150
    goto :goto_9c

    .line 151
    :goto_96
    new-instance p2, Lkotlin/Result$Failure;

    .line 152
    .line 153
    invoke-direct {p2, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    move-object p0, p2

    .line 157
    :goto_9c
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    if-nez p2, :cond_b9

    .line 162
    .line 163
    check-cast p0, Lkotlinx/serialization/json/JsonObject;

    .line 164
    .line 165
    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    .line 170
    .line 171
    if-eqz p0, :cond_b8

    .line 172
    .line 173
    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementKt;->getContentOrNull(Lkotlinx/serialization/json/JsonPrimitive;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    if-nez p0, :cond_b7

    .line 182
    .line 183
    goto :goto_b8

    .line 184
    :cond_b7
    move-object p1, p0

    .line 185
    :cond_b8
    :goto_b8
    return-object p1

    .line 186
    :cond_b9
    const-string p0, "ChatService"

    .line 187
    .line 188
    const-string p3, "applyTitleHook dispatch failed"

    .line 189
    .line 190
    invoke-static {p0, p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .line 192
    .line 193
    :cond_c0
    return-object p1
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
.end method

.method public final assembleContextPreview(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    instance-of v2, v0, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;

    .line 6
    .line 7
    if-eqz v2, :cond_18

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;

    .line 11
    .line 12
    iget v3, v2, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_18

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->label:I

    .line 22
    .line 23
    :goto_16
    move-object v14, v2

    .line 24
    goto :goto_1e

    .line 25
    :cond_18
    new-instance v2, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;

    .line 26
    .line 27
    invoke-direct {v2, v1, v0}, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 28
    .line 29
    .line 30
    goto :goto_16

    .line 31
    :goto_1e
    iget-object v0, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v2, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->label:I

    .line 34
    .line 35
    const/4 v9, 0x5

    .line 36
    const/4 v3, 0x4

    .line 37
    const/4 v4, 0x3

    .line 38
    const/4 v5, 0x1

    .line 39
    sget-object v16, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    const/4 v10, 0x0

    .line 43
    sget-object v15, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 44
    .line 45
    if-eqz v2, :cond_9a

    .line 46
    .line 47
    if-eq v2, v5, :cond_94

    .line 48
    .line 49
    if-eq v2, v6, :cond_83

    .line 50
    .line 51
    if-eq v2, v4, :cond_69

    .line 52
    .line 53
    if-eq v2, v3, :cond_50

    .line 54
    .line 55
    if-ne v2, v9, :cond_4a

    .line 56
    .line 57
    iget-object v1, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$8:Lkotlin/collections/builders/ListBuilder;

    .line 58
    .line 59
    iget-object v2, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$5:Ljava/util/Set;

    .line 60
    .line 61
    check-cast v2, Ljava/util/Set;

    .line 62
    .line 63
    iget-object v2, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$3:Lme/rerere/rikkahub/data/model/Assistant;

    .line 64
    .line 65
    iget-object v3, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$2:Lme/rerere/rikkahub/data/model/Conversation;

    .line 66
    .line 67
    iget-object v4, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$1:Lme/rerere/rikkahub/data/datastore/Settings;

    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object v7, v4

    .line 73
    goto/16 :goto_205

    .line 74
    .line 75
    :cond_4a
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 76
    .line 77
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object v10

    .line 81
    :cond_50
    iget-boolean v2, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->Z$0:Z

    .line 82
    .line 83
    iget-object v3, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$5:Ljava/util/Set;

    .line 84
    .line 85
    check-cast v3, Ljava/util/Set;

    .line 86
    .line 87
    iget-object v4, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$4:Lme/rerere/ai/provider/Model;

    .line 88
    .line 89
    iget-object v5, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$3:Lme/rerere/rikkahub/data/model/Assistant;

    .line 90
    .line 91
    iget-object v6, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$2:Lme/rerere/rikkahub/data/model/Conversation;

    .line 92
    .line 93
    iget-object v7, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$1:Lme/rerere/rikkahub/data/datastore/Settings;

    .line 94
    .line 95
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    move-object v12, v3

    .line 99
    move-object v8, v4

    .line 100
    move-object v4, v5

    .line 101
    move-object v3, v6

    .line 102
    move-object/from16 v11, v16

    .line 103
    .line 104
    goto/16 :goto_16c

    .line 105
    .line 106
    :cond_69
    iget-boolean v2, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->Z$0:Z

    .line 107
    .line 108
    iget-object v4, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$5:Ljava/util/Set;

    .line 109
    .line 110
    check-cast v4, Ljava/util/Set;

    .line 111
    .line 112
    iget-object v5, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$4:Lme/rerere/ai/provider/Model;

    .line 113
    .line 114
    iget-object v6, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$3:Lme/rerere/rikkahub/data/model/Assistant;

    .line 115
    .line 116
    iget-object v7, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$2:Lme/rerere/rikkahub/data/model/Conversation;

    .line 117
    .line 118
    iget-object v8, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$1:Lme/rerere/rikkahub/data/datastore/Settings;

    .line 119
    .line 120
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    move-object v12, v4

    .line 124
    move-object/from16 v11, v16

    .line 125
    .line 126
    :goto_7d
    move-object v4, v5

    .line 127
    move-object v13, v7

    .line 128
    move v5, v2

    .line 129
    move-object v2, v8

    .line 130
    goto/16 :goto_143

    .line 131
    .line 132
    :cond_83
    iget-boolean v2, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->Z$0:Z

    .line 133
    .line 134
    iget-object v5, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$4:Lme/rerere/ai/provider/Model;

    .line 135
    .line 136
    iget-object v6, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$3:Lme/rerere/rikkahub/data/model/Assistant;

    .line 137
    .line 138
    iget-object v7, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$2:Lme/rerere/rikkahub/data/model/Conversation;

    .line 139
    .line 140
    iget-object v8, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$1:Lme/rerere/rikkahub/data/datastore/Settings;

    .line 141
    .line 142
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    move-object/from16 v11, v16

    .line 146
    .line 147
    goto/16 :goto_11e

    .line 148
    .line 149
    :cond_94
    iget-object v2, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$0:Lkotlin/uuid/Uuid;

    .line 150
    .line 151
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    goto :goto_af

    .line 155
    :cond_9a
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, v1, Lme/rerere/rikkahub/service/ChatService;->settingsStore:Lme/rerere/rikkahub/data/datastore/SettingsStore;

    .line 159
    .line 160
    iget-object v0, v0, Lme/rerere/rikkahub/data/datastore/SettingsStore;->settingsFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 161
    .line 162
    move-object/from16 v2, p1

    .line 163
    .line 164
    iput-object v2, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$0:Lkotlin/uuid/Uuid;

    .line 165
    .line 166
    iput v5, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->label:I

    .line 167
    .line 168
    invoke-static {v0, v14}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-ne v0, v15, :cond_af

    .line 173
    .line 174
    goto/16 :goto_1ff

    .line 175
    .line 176
    :cond_af
    :goto_af
    check-cast v0, Lme/rerere/rikkahub/data/datastore/Settings;

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    check-cast v2, Lme/rerere/rikkahub/data/model/Conversation;

    .line 187
    .line 188
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/model/Conversation;->getAssistantId()Lkotlin/uuid/Uuid;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-static {v0, v7}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->getAssistantById(Lme/rerere/rikkahub/data/datastore/Settings;Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/data/model/Assistant;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    if-nez v7, :cond_c9

    .line 197
    .line 198
    invoke-static {v0}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->getCurrentAssistant(Lme/rerere/rikkahub/data/datastore/Settings;)Lme/rerere/rikkahub/data/model/Assistant;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    :cond_c9
    invoke-virtual {v7}, Lme/rerere/rikkahub/data/model/Assistant;->getChatModelId()Lkotlin/uuid/Uuid;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    if-nez v8, :cond_d3

    .line 207
    .line 208
    invoke-virtual {v0}, Lme/rerere/rikkahub/data/datastore/Settings;->getChatModelId()Lkotlin/uuid/Uuid;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    :cond_d3
    invoke-static {v0, v8, v10}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->findModelById(Lme/rerere/rikkahub/data/datastore/Settings;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)Lme/rerere/ai/provider/Model;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    if-nez v8, :cond_e7

    .line 217
    .line 218
    new-instance v15, Lme/rerere/rikkahub/service/ContextPreviewParts;

    .line 219
    .line 220
    const/16 v18, 0x0

    .line 221
    .line 222
    const/16 v19, 0x0

    .line 223
    .line 224
    move-object/from16 v17, v16

    .line 225
    .line 226
    move-object/from16 v20, v16

    .line 227
    .line 228
    invoke-direct/range {v15 .. v20}, Lme/rerere/rikkahub/service/ContextPreviewParts;-><init>(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;)V

    .line 229
    .line 230
    .line 231
    return-object v15

    .line 232
    :cond_e7
    move-object/from16 v11, v16

    .line 233
    .line 234
    sget-object v12, Lme/rerere/rikkahub/service/ChatServiceKt;->DEEPSEEK_MODEL_RE:Lkotlin/text/Regex;

    .line 235
    .line 236
    invoke-virtual {v7}, Lme/rerere/rikkahub/data/model/Assistant;->getEnableWebSearch()Z

    .line 237
    .line 238
    .line 239
    move-result v12

    .line 240
    if-eqz v12, :cond_fe

    .line 241
    .line 242
    invoke-virtual {v8}, Lme/rerere/ai/provider/Model;->getTools()Ljava/util/Set;

    .line 243
    .line 244
    .line 245
    move-result-object v12

    .line 246
    sget-object v13, Lme/rerere/ai/provider/BuiltInTools$Search;->INSTANCE:Lme/rerere/ai/provider/BuiltInTools$Search;

    .line 247
    .line 248
    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    if-nez v12, :cond_fe

    .line 253
    .line 254
    goto :goto_ff

    .line 255
    :cond_fe
    const/4 v5, 0x0

    .line 256
    :goto_ff
    iput-object v10, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$0:Lkotlin/uuid/Uuid;

    .line 257
    .line 258
    iput-object v0, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$1:Lme/rerere/rikkahub/data/datastore/Settings;

    .line 259
    .line 260
    iput-object v2, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$2:Lme/rerere/rikkahub/data/model/Conversation;

    .line 261
    .line 262
    iput-object v7, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$3:Lme/rerere/rikkahub/data/model/Assistant;

    .line 263
    .line 264
    iput-object v8, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$4:Lme/rerere/ai/provider/Model;

    .line 265
    .line 266
    iput-boolean v5, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->Z$0:Z

    .line 267
    .line 268
    iput v6, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->label:I

    .line 269
    .line 270
    invoke-virtual {v1, v7, v8, v14}, Lme/rerere/rikkahub/service/ChatService;->resolveWorkspaceIds(Lme/rerere/rikkahub/data/model/Assistant;Lme/rerere/ai/provider/Model;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    if-ne v6, v15, :cond_115

    .line 275
    .line 276
    goto/16 :goto_1ff

    .line 277
    .line 278
    :cond_115
    move-object/from16 v21, v8

    .line 279
    .line 280
    move-object v8, v0

    .line 281
    move-object v0, v6

    .line 282
    move-object v6, v7

    .line 283
    move-object v7, v2

    .line 284
    move v2, v5

    .line 285
    move-object/from16 v5, v21

    .line 286
    .line 287
    :goto_11e
    check-cast v0, Ljava/util/Set;

    .line 288
    .line 289
    invoke-virtual {v7}, Lme/rerere/rikkahub/data/model/Conversation;->getWorkspaceCwd()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    iput-object v10, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$0:Lkotlin/uuid/Uuid;

    .line 294
    .line 295
    iput-object v8, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$1:Lme/rerere/rikkahub/data/datastore/Settings;

    .line 296
    .line 297
    iput-object v7, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$2:Lme/rerere/rikkahub/data/model/Conversation;

    .line 298
    .line 299
    iput-object v6, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$3:Lme/rerere/rikkahub/data/model/Assistant;

    .line 300
    .line 301
    iput-object v5, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$4:Lme/rerere/ai/provider/Model;

    .line 302
    .line 303
    move-object v13, v0

    .line 304
    check-cast v13, Ljava/util/Set;

    .line 305
    .line 306
    iput-object v13, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$5:Ljava/util/Set;

    .line 307
    .line 308
    iput-boolean v2, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->Z$0:Z

    .line 309
    .line 310
    iput v4, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->label:I

    .line 311
    .line 312
    invoke-virtual {v1, v12, v0, v14}, Lme/rerere/rikkahub/service/ChatService;->createWorkspaceToolsIfReady(Ljava/lang/String;Ljava/util/Set;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    if-ne v4, v15, :cond_13f

    .line 317
    .line 318
    goto/16 :goto_1ff

    .line 319
    .line 320
    :cond_13f
    move-object v12, v0

    .line 321
    move-object v0, v4

    .line 322
    goto/16 :goto_7d

    .line 323
    .line 324
    :goto_143
    check-cast v0, Ljava/util/List;

    .line 325
    .line 326
    invoke-virtual {v13}, Lme/rerere/rikkahub/data/model/Conversation;->getMcpServerOverrides()Ljava/util/Set;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    iput-object v10, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$0:Lkotlin/uuid/Uuid;

    .line 331
    .line 332
    iput-object v2, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$1:Lme/rerere/rikkahub/data/datastore/Settings;

    .line 333
    .line 334
    iput-object v13, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$2:Lme/rerere/rikkahub/data/model/Conversation;

    .line 335
    .line 336
    iput-object v6, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$3:Lme/rerere/rikkahub/data/model/Assistant;

    .line 337
    .line 338
    iput-object v4, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$4:Lme/rerere/ai/provider/Model;

    .line 339
    .line 340
    move-object v8, v12

    .line 341
    check-cast v8, Ljava/util/Set;

    .line 342
    .line 343
    iput-object v8, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$5:Ljava/util/Set;

    .line 344
    .line 345
    iput-boolean v5, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->Z$0:Z

    .line 346
    .line 347
    iput v3, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->label:I

    .line 348
    .line 349
    const/4 v8, 0x0

    .line 350
    move-object v3, v6

    .line 351
    move-object v6, v0

    .line 352
    invoke-virtual/range {v1 .. v8}, Lme/rerere/rikkahub/service/ChatService;->buildGenerationTools(Lme/rerere/rikkahub/data/datastore/Settings;Lme/rerere/rikkahub/data/model/Assistant;Lme/rerere/ai/provider/Model;ZLjava/util/List;Ljava/util/Set;Lme/rerere/rikkahub/ui/hooks/ASRKt$$ExternalSyntheticLambda0;)Lkotlin/collections/builders/ListBuilder;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    if-ne v0, v15, :cond_167

    .line 357
    .line 358
    goto/16 :goto_1ff

    .line 359
    .line 360
    :cond_167
    move-object v7, v2

    .line 361
    move-object v8, v4

    .line 362
    move v2, v5

    .line 363
    move-object v4, v3

    .line 364
    move-object v3, v13

    .line 365
    :goto_16c
    move-object v6, v0

    .line 366
    check-cast v6, Ljava/util/List;

    .line 367
    .line 368
    invoke-static {}, Lpalettes/TonalPalette$Companion;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/model/Conversation;->getCompression()Lme/rerere/rikkahub/data/model/ConversationCompression;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    if-eqz v5, :cond_193

    .line 377
    .line 378
    invoke-virtual {v5}, Lme/rerere/rikkahub/data/model/ConversationCompression;->getSummary()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v13

    .line 382
    invoke-static {v13}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 383
    .line 384
    .line 385
    move-result v13

    .line 386
    if-nez v13, :cond_193

    .line 387
    .line 388
    sget-object v13, Lme/rerere/ai/ui/UIMessage;->Companion:Lme/rerere/ai/ui/UIMessage$Companion;

    .line 389
    .line 390
    invoke-virtual {v5}, Lme/rerere/rikkahub/data/model/ConversationCompression;->getSummary()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    invoke-static {v5}, Lme/rerere/ai/ui/UIMessage$Companion;->user(Ljava/lang/String;)Lme/rerere/ai/ui/UIMessage;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    invoke-virtual {v0, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    :cond_193
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/model/Conversation;->getActiveMessages()Ljava/util/List;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    invoke-virtual {v0, v5}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 409
    .line 410
    .line 411
    invoke-static {v0}, Lpalettes/TonalPalette$Companion;->build(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    :try_start_19e
    iget-object v0, v1, Lme/rerere/rikkahub/service/ChatService;->cordisRuntimeHost:Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;

    .line 416
    .line 417
    invoke-virtual {v0}, Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;->pipelineSnapshot()Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 418
    .line 419
    .line 420
    move-result-object v0
    :try_end_1a4
    .catchall {:try_start_19e .. :try_end_1a4} :catchall_1a5

    .line 421
    goto :goto_1ac

    .line 422
    :catchall_1a5
    move-exception v0

    .line 423
    new-instance v13, Lkotlin/Result$Failure;

    .line 424
    .line 425
    invoke-direct {v13, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 426
    .line 427
    .line 428
    move-object v0, v13

    .line 429
    :goto_1ac
    nop

    .line 430
    instance-of v13, v0, Lkotlin/Result$Failure;

    .line 431
    .line 432
    if-eqz v13, :cond_1b2

    .line 433
    .line 434
    move-object v0, v10

    .line 435
    :cond_1b2
    check-cast v0, Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 436
    .line 437
    if-nez v0, :cond_1bf

    .line 438
    .line 439
    new-instance v0, Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 440
    .line 441
    sget-object v13, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 442
    .line 443
    sget-object v9, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 444
    .line 445
    invoke-direct {v0, v13, v9, v11, v11}, Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;-><init>(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    .line 446
    .line 447
    .line 448
    :cond_1bf
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/model/Conversation;->getCustomSystemPrompt()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v9

    .line 452
    invoke-virtual {v0}, Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;->getSystemPrompts()Ljava/util/List;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    check-cast v12, Ljava/lang/Iterable;

    .line 457
    .line 458
    invoke-static {v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v12

    .line 462
    check-cast v12, Lkotlin/uuid/Uuid;

    .line 463
    .line 464
    if-eqz v12, :cond_1d6

    .line 465
    .line 466
    invoke-virtual {v12}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v12

    .line 470
    goto :goto_1d7

    .line 471
    :cond_1d6
    move-object v12, v10

    .line 472
    :goto_1d7
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/model/Conversation;->getWorkspaceCwd()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v13

    .line 476
    iput-object v10, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$0:Lkotlin/uuid/Uuid;

    .line 477
    .line 478
    iput-object v7, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$1:Lme/rerere/rikkahub/data/datastore/Settings;

    .line 479
    .line 480
    iput-object v3, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$2:Lme/rerere/rikkahub/data/model/Conversation;

    .line 481
    .line 482
    iput-object v4, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$3:Lme/rerere/rikkahub/data/model/Assistant;

    .line 483
    .line 484
    iput-object v10, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$4:Lme/rerere/ai/provider/Model;

    .line 485
    .line 486
    iput-object v10, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$5:Ljava/util/Set;

    .line 487
    .line 488
    iput-object v5, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->L$8:Lkotlin/collections/builders/ListBuilder;

    .line 489
    .line 490
    iput-boolean v2, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->Z$0:Z

    .line 491
    .line 492
    const/4 v2, 0x5

    .line 493
    iput v2, v14, Lme/rerere/rikkahub/service/ChatService$assembleContextPreview$1;->label:I

    .line 494
    .line 495
    iget-object v1, v1, Lme/rerere/rikkahub/service/ChatService;->workspaceRepository:Lme/rerere/rikkahub/data/repository/WorkspaceRepository;

    .line 496
    .line 497
    move-object v10, v11

    .line 498
    move-object v11, v12

    .line 499
    move-object v12, v13

    .line 500
    move-object v13, v1

    .line 501
    move-object v1, v3

    .line 502
    move-object v3, v7

    .line 503
    move-object v7, v5

    .line 504
    move-object v5, v9

    .line 505
    move-object v9, v0

    .line 506
    invoke-static/range {v3 .. v14}, Lme/rerere/rikkahub/data/ai/GenerationPromptAssemblerKt;->assembleGenerationSystemPrompt(Lme/rerere/rikkahub/data/datastore/Settings;Lme/rerere/rikkahub/data/model/Assistant;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lme/rerere/ai/provider/Model;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lme/rerere/rikkahub/data/repository/WorkspaceRepository;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    if-ne v0, v15, :cond_200

    .line 511
    .line 512
    :goto_1ff
    return-object v15

    .line 513
    :cond_200
    move-object v2, v3

    .line 514
    move-object v3, v1

    .line 515
    move-object v1, v7

    .line 516
    move-object v7, v2

    .line 517
    move-object v2, v4

    .line 518
    :goto_205
    check-cast v0, Lme/rerere/rikkahub/data/ai/AssembledSystemPrompt;

    .line 519
    .line 520
    move-object v4, v3

    .line 521
    invoke-virtual {v7}, Lme/rerere/rikkahub/data/datastore/Settings;->getModeInjections()Ljava/util/List;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    move-object v5, v4

    .line 526
    invoke-virtual {v7}, Lme/rerere/rikkahub/data/datastore/Settings;->getLorebooks()Ljava/util/List;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    move-object v6, v5

    .line 531
    invoke-virtual {v6}, Lme/rerere/rikkahub/data/model/Conversation;->getModeInjectionIds()Ljava/util/Set;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    invoke-virtual {v6}, Lme/rerere/rikkahub/data/model/Conversation;->getLorebookIds()Ljava/util/Set;

    .line 536
    .line 537
    .line 538
    move-result-object v6

    .line 539
    invoke-static/range {v1 .. v6}, Lme/rerere/rikkahub/data/ai/transformers/PromptInjectionTransformerKt;->collectInjections(Ljava/util/List;Lme/rerere/rikkahub/data/model/Assistant;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Ljava/util/ArrayList;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    new-instance v13, Ljava/util/ArrayList;

    .line 544
    .line 545
    const/16 v2, 0xa

    .line 546
    .line 547
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    :goto_22d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    if-eqz v2, :cond_241

    .line 563
    .line 564
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    check-cast v2, Lme/rerere/rikkahub/data/model/PromptInjection;

    .line 569
    .line 570
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/model/PromptInjection;->getContent()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    goto :goto_22d

    .line 578
    :cond_241
    new-instance v8, Lme/rerere/rikkahub/service/ContextPreviewParts;

    .line 579
    .line 580
    iget-object v9, v0, Lme/rerere/rikkahub/data/ai/AssembledSystemPrompt;->toolSystemPrompts:Ljava/util/List;

    .line 581
    .line 582
    iget-object v10, v0, Lme/rerere/rikkahub/data/ai/AssembledSystemPrompt;->pluginSystemPrompts:Ljava/util/List;

    .line 583
    .line 584
    invoke-virtual {v7}, Lme/rerere/rikkahub/data/datastore/Settings;->getAutonomousExecutionEnabled()Z

    .line 585
    .line 586
    .line 587
    move-result v11

    .line 588
    iget-object v12, v0, Lme/rerere/rikkahub/data/ai/AssembledSystemPrompt;->projectRules:Ljava/lang/String;

    .line 589
    .line 590
    invoke-direct/range {v8 .. v13}, Lme/rerere/rikkahub/service/ContextPreviewParts;-><init>(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;)V

    .line 591
    .line 592
    .line 593
    return-object v8
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
.end method

.method public final autoCompressConversation(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lme/rerere/rikkahub/data/datastore/Settings;IILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p6

    .line 6
    .line 7
    instance-of v3, v0, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;

    .line 8
    .line 9
    if-eqz v3, :cond_19

    .line 10
    .line 11
    move-object v3, v0

    .line 12
    check-cast v3, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;

    .line 13
    .line 14
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_19

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->label:I

    .line 24
    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    new-instance v3, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;

    .line 27
    .line 28
    invoke-direct {v3, v1, v0}, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_1e
    iget-object v0, v3, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->label:I

    .line 34
    .line 35
    iget-object v8, v1, Lme/rerere/rikkahub/service/ChatService;->_compressingConversations:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 36
    .line 37
    const/4 v9, 0x0

    .line 38
    const/4 v10, 0x1

    .line 39
    const/4 v11, 0x0

    .line 40
    if-eqz v4, :cond_4d

    .line 41
    .line 42
    if-ne v4, v10, :cond_47

    .line 43
    .line 44
    iget v2, v3, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->I$2:I

    .line 45
    .line 46
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->I$1:I

    .line 47
    .line 48
    iget v5, v3, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->I$0:I

    .line 49
    .line 50
    iget-object v6, v3, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->L$5:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v7, v3, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->L$4:Lkotlin/jvm/internal/Ref$IntRef;

    .line 53
    .line 54
    iget-object v12, v3, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 55
    .line 56
    iget-object v13, v3, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 57
    .line 58
    :try_start_39
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    check-cast v0, Lkotlin/Result;

    .line 62
    .line 63
    iget-object v0, v0, Lkotlin/Result;->value:Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_42

    .line 64
    .line 65
    goto/16 :goto_127

    .line 66
    .line 67
    :catchall_42
    move-exception v0

    .line 68
    move v14, v2

    .line 69
    move-object v2, v13

    .line 70
    goto/16 :goto_13a

    .line 71
    .line 72
    :cond_47
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v11

    .line 78
    :cond_4d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_50
    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    move-object v4, v0

    .line 86
    check-cast v4, Ljava/util/Set;

    .line 87
    .line 88
    invoke-static {v4, v2}, Lkotlin/collections/SetsKt___SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v8, v0, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_203

    .line 97
    .line 98
    :try_start_61
    invoke-virtual/range {p2 .. p2}, Lme/rerere/rikkahub/data/model/Conversation;->getActiveMessages()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_8f

    .line 107
    .line 108
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$AutoCompressResult;
    :try_end_6d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_61 .. :try_end_6d} :catch_88
    .catchall {:try_start_61 .. :try_end_6d} :catchall_8b

    .line 109
    .line 110
    move-object/from16 v4, p2

    .line 111
    .line 112
    :try_start_6f
    invoke-static {v4, v11}, Lme/rerere/rikkahub/utils/TokenEstimate;->estimateConversationTokens(Lme/rerere/rikkahub/data/model/Conversation;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-direct {v0, v1, v9, v10}, Lme/rerere/rikkahub/service/ChatService$AutoCompressResult;-><init>(IZZ)V
    :try_end_76
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6f .. :try_end_76} :catch_88
    .catchall {:try_start_6f .. :try_end_76} :catchall_1d2

    .line 117
    .line 118
    .line 119
    :cond_76
    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    move-object v3, v1

    .line 124
    check-cast v3, Ljava/util/Set;

    .line 125
    .line 126
    invoke-static {v3, v2}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v8, v1, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_76

    .line 135
    .line 136
    return-object v0

    .line 137
    :catch_88
    move-exception v0

    .line 138
    goto/16 :goto_1ef

    .line 139
    .line 140
    :catchall_8b
    move-object/from16 v4, p2

    .line 141
    .line 142
    goto/16 :goto_1d2

    .line 143
    .line 144
    :cond_8f
    move-object/from16 v4, p2

    .line 145
    .line 146
    :try_start_91
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    .line 147
    .line 148
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual/range {p3 .. p3}, Lme/rerere/rikkahub/data/datastore/Settings;->getAutoCompressMaxMode()Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_9f

    .line 156
    .line 157
    const/16 v6, 0x60

    .line 158
    .line 159
    goto :goto_a1

    .line 160
    :cond_9f
    const/16 v6, 0x20

    .line 161
    .line 162
    :goto_a1
    iput v6, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    sub-int/2addr v0, v10

    .line 169
    invoke-static {v6, v9, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    iput v0, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 174
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual/range {p3 .. p3}, Lme/rerere/rikkahub/data/datastore/Settings;->getCompressionPreserve()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-static {v6}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-nez v6, :cond_c9

    .line 189
    .line 190
    const-string v6, "\u59cb\u7ec8\u4fdd\u7559\u4ee5\u4e0b\u5173\u952e\u4fe1\u606f\uff0c\u5e76\u5c06\u5176\u5e76\u5165\u6458\u8981\uff0c\u4e0d\u8981\u9057\u6f0f\u6216\u6539\u5199\uff1a\n"

    .line 191
    .line 192
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual/range {p3 .. p3}, Lme/rerere/rikkahub/data/datastore/Settings;->getCompressionPreserve()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    :cond_c9
    iget-object v6, v1, Lme/rerere/rikkahub/service/ChatService;->compactRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 203
    .line 204
    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    check-cast v6, Ljava/lang/String;

    .line 209
    .line 210
    if-eqz v6, :cond_ed

    .line 211
    .line 212
    invoke-static {v6}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-eqz v7, :cond_da

    .line 217
    .line 218
    goto :goto_ed

    .line 219
    :cond_da
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    if-lez v7, :cond_e5

    .line 224
    .line 225
    const-string v7, "\n"

    .line 226
    .line 227
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    :cond_e5
    const-string v7, "Focus on preserving the following when compacting, and merge it into the summary without omission:\n"

    .line 231
    .line 232
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    :cond_ed
    :goto_ed
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0
    :try_end_f1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_91 .. :try_end_f1} :catch_88
    .catchall {:try_start_91 .. :try_end_f1} :catchall_1d2

    .line 242
    move/from16 v13, p4

    .line 243
    .line 244
    move-object v7, v3

    .line 245
    move-object v12, v4

    .line 246
    move-object v15, v5

    .line 247
    move v14, v9

    .line 248
    move/from16 v5, p5

    .line 249
    .line 250
    move-object v4, v0

    .line 251
    :cond_fa
    :goto_fa
    :try_start_fa
    invoke-virtual {v1, v2}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    move-object v3, v0

    .line 260
    check-cast v3, Lme/rerere/rikkahub/data/model/Conversation;

    .line 261
    .line 262
    iget v6, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 263
    .line 264
    iput-object v2, v7, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 265
    .line 266
    iput-object v12, v7, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 267
    .line 268
    iput-object v15, v7, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->L$4:Lkotlin/jvm/internal/Ref$IntRef;

    .line 269
    .line 270
    iput-object v4, v7, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->L$5:Ljava/lang/String;

    .line 271
    .line 272
    iput v13, v7, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->I$0:I

    .line 273
    .line 274
    iput v5, v7, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->I$1:I

    .line 275
    .line 276
    iput v14, v7, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->I$2:I

    .line 277
    .line 278
    iput v10, v7, Lme/rerere/rikkahub/service/ChatService$autoCompressConversation$1;->label:I

    .line 279
    .line 280
    invoke-virtual/range {v1 .. v7}, Lme/rerere/rikkahub/service/ChatService;->compressConversation-hUnOzRk(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Ljava/lang/String;IILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v0
    :try_end_11b
    .catchall {:try_start_fa .. :try_end_11b} :catchall_134

    .line 284
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 285
    .line 286
    if-ne v0, v3, :cond_120

    .line 287
    .line 288
    return-object v3

    .line 289
    :cond_120
    move-object v6, v4

    .line 290
    move v4, v5

    .line 291
    move-object v3, v7

    .line 292
    move v5, v13

    .line 293
    move-object v7, v15

    .line 294
    move-object v13, v2

    .line 295
    move v2, v14

    .line 296
    :goto_127
    :try_start_127
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12c
    .catchall {:try_start_127 .. :try_end_12c} :catchall_42

    .line 300
    .line 301
    move v14, v2

    .line 302
    move-object v2, v13

    .line 303
    :goto_12e
    move-object v15, v7

    .line 304
    move-object v7, v3

    .line 305
    move v13, v5

    .line 306
    move v5, v4

    .line 307
    move-object v4, v6

    .line 308
    goto :goto_141

    .line 309
    :catchall_134
    move-exception v0

    .line 310
    move-object v6, v4

    .line 311
    move v4, v5

    .line 312
    move-object v3, v7

    .line 313
    move v5, v13

    .line 314
    move-object v7, v15

    .line 315
    :goto_13a
    :try_start_13a
    new-instance v13, Lkotlin/Result$Failure;

    .line 316
    .line 317
    invoke-direct {v13, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 318
    .line 319
    .line 320
    move-object v0, v13

    .line 321
    goto :goto_12e

    .line 322
    :goto_141
    instance-of v3, v0, Lkotlin/Result$Failure;

    .line 323
    .line 324
    if-eqz v3, :cond_184

    .line 325
    .line 326
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    .line 331
    .line 332
    if-nez v3, :cond_183

    .line 333
    .line 334
    add-int/2addr v14, v10

    .line 335
    const/4 v0, 0x2

    .line 336
    if-lt v14, v0, :cond_fa

    .line 337
    .line 338
    iget v0, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 339
    .line 340
    if-lez v0, :cond_15e

    .line 341
    .line 342
    div-int/lit8 v0, v0, 0x2

    .line 343
    .line 344
    iput v0, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 345
    .line 346
    :goto_159
    move v14, v9

    .line 347
    goto :goto_fa

    .line 348
    :catchall_15b
    move-object v4, v12

    .line 349
    goto/16 :goto_1d2

    .line 350
    .line 351
    :cond_15e
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$AutoCompressResult;

    .line 352
    .line 353
    invoke-virtual {v1, v2}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    check-cast v1, Lme/rerere/rikkahub/data/model/Conversation;

    .line 362
    .line 363
    invoke-static {v1, v11}, Lme/rerere/rikkahub/utils/TokenEstimate;->estimateConversationTokens(Lme/rerere/rikkahub/data/model/Conversation;Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    invoke-direct {v0, v1, v9, v10}, Lme/rerere/rikkahub/service/ChatService$AutoCompressResult;-><init>(IZZ)V
    :try_end_171
    .catch Ljava/util/concurrent/CancellationException; {:try_start_13a .. :try_end_171} :catch_88
    .catchall {:try_start_13a .. :try_end_171} :catchall_15b

    .line 368
    .line 369
    .line 370
    :cond_171
    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    move-object v3, v1

    .line 375
    check-cast v3, Ljava/util/Set;

    .line 376
    .line 377
    invoke-static {v3, v2}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    invoke-virtual {v8, v1, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-eqz v1, :cond_171

    .line 386
    .line 387
    return-object v0

    .line 388
    :cond_183
    :try_start_183
    throw v0

    .line 389
    :cond_184
    invoke-virtual {v1, v2}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    check-cast v0, Lme/rerere/rikkahub/data/model/Conversation;

    .line 398
    .line 399
    invoke-static {v0, v11}, Lme/rerere/rikkahub/utils/TokenEstimate;->estimateConversationTokens(Lme/rerere/rikkahub/data/model/Conversation;Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-ge v0, v13, :cond_1b2

    .line 404
    .line 405
    new-instance v1, Lme/rerere/rikkahub/service/ChatService$AutoCompressResult;

    .line 406
    .line 407
    iget v3, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 408
    .line 409
    if-nez v3, :cond_19c

    .line 410
    .line 411
    move v3, v10

    .line 412
    goto :goto_19d

    .line 413
    :cond_19c
    move v3, v9

    .line 414
    :goto_19d
    invoke-direct {v1, v0, v10, v3}, Lme/rerere/rikkahub/service/ChatService$AutoCompressResult;-><init>(IZZ)V
    :try_end_1a0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_183 .. :try_end_1a0} :catch_88
    .catchall {:try_start_183 .. :try_end_1a0} :catchall_15b

    .line 415
    .line 416
    .line 417
    :cond_1a0
    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    move-object v3, v0

    .line 422
    check-cast v3, Ljava/util/Set;

    .line 423
    .line 424
    invoke-static {v3, v2}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    invoke-virtual {v8, v0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    if-eqz v0, :cond_1a0

    .line 433
    .line 434
    return-object v1

    .line 435
    :cond_1b2
    :try_start_1b2
    iget v3, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 436
    .line 437
    if-lez v3, :cond_1bb

    .line 438
    .line 439
    div-int/lit8 v3, v3, 0x2

    .line 440
    .line 441
    iput v3, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 442
    .line 443
    goto :goto_159

    .line 444
    :cond_1bb
    new-instance v1, Lme/rerere/rikkahub/service/ChatService$AutoCompressResult;

    .line 445
    .line 446
    invoke-direct {v1, v0, v10, v10}, Lme/rerere/rikkahub/service/ChatService$AutoCompressResult;-><init>(IZZ)V
    :try_end_1c0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1b2 .. :try_end_1c0} :catch_88
    .catchall {:try_start_1b2 .. :try_end_1c0} :catchall_15b

    .line 447
    .line 448
    .line 449
    :cond_1c0
    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    move-object v3, v0

    .line 454
    check-cast v3, Ljava/util/Set;

    .line 455
    .line 456
    invoke-static {v3, v2}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-virtual {v8, v0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    if-eqz v0, :cond_1c0

    .line 465
    .line 466
    return-object v1

    .line 467
    :catchall_1d2
    :goto_1d2
    :try_start_1d2
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$AutoCompressResult;

    .line 468
    .line 469
    invoke-static {v4, v11}, Lme/rerere/rikkahub/utils/TokenEstimate;->estimateConversationTokens(Lme/rerere/rikkahub/data/model/Conversation;Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    invoke-direct {v0, v1, v9, v10}, Lme/rerere/rikkahub/service/ChatService$AutoCompressResult;-><init>(IZZ)V
    :try_end_1db
    .catchall {:try_start_1d2 .. :try_end_1db} :catchall_1ed

    .line 474
    .line 475
    .line 476
    :cond_1db
    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    move-object v3, v1

    .line 481
    check-cast v3, Ljava/util/Set;

    .line 482
    .line 483
    invoke-static {v3, v2}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    invoke-virtual {v8, v1, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-eqz v1, :cond_1db

    .line 492
    .line 493
    return-object v0

    .line 494
    :catchall_1ed
    move-exception v0

    .line 495
    goto :goto_1f0

    .line 496
    :goto_1ef
    :try_start_1ef
    throw v0
    :try_end_1f0
    .catchall {:try_start_1ef .. :try_end_1f0} :catchall_1ed

    .line 497
    :goto_1f0
    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    move-object v3, v1

    .line 502
    check-cast v3, Ljava/util/Set;

    .line 503
    .line 504
    invoke-static {v3, v2}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    invoke-virtual {v8, v1, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    if-nez v1, :cond_202

    .line 513
    .line 514
    goto :goto_1f0

    .line 515
    :cond_202
    throw v0

    .line 516
    :cond_203
    move-object/from16 v4, p2

    .line 517
    .line 518
    goto/16 :goto_50
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
.end method

.method public final buildGenerationTools(Lme/rerere/rikkahub/data/datastore/Settings;Lme/rerere/rikkahub/data/model/Assistant;Lme/rerere/ai/provider/Model;ZLjava/util/List;Ljava/util/Set;Lme/rerere/rikkahub/ui/hooks/ASRKt$$ExternalSyntheticLambda0;)Lkotlin/collections/builders/ListBuilder;
    .registers 50

    move-object/from16 v0, p0

    move-object/from16 v9, p7

    .line 1
    invoke-static {}, Lpalettes/TonalPalette$Companion;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    move-result-object v10

    .line 2
    invoke-virtual/range {p3 .. p3}, Lme/rerere/ai/provider/Model;->getAgentSubagent()Lme/rerere/ai/provider/AgentSubagentConfig;

    move-result-object v1

    const/4 v11, 0x1

    if-eqz v1, :cond_30

    .line 3
    invoke-virtual {v1}, Lme/rerere/ai/provider/AgentSubagentConfig;->getEnabled()Z

    move-result v2

    if-ne v2, v11, :cond_30

    .line 4
    invoke-static/range {p3 .. p3}, Lme/rerere/rikkahub/data/ai/subagent/SubagentToolsKt;->shouldUseDshSubagentEngine(Lme/rerere/ai/provider/Model;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 5
    iget-object v7, v0, Lme/rerere/rikkahub/service/ChatService;->subagentRunTracker:Lme/rerere/rikkahub/data/ai/subagent/SubagentRunTracker;

    const/4 v6, 0x0

    .line 6
    iget-object v3, v0, Lme/rerere/rikkahub/service/ChatService;->generationHandler:Lme/rerere/rikkahub/data/ai/GenerationHandler;

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v8}, Lme/rerere/rikkahub/data/ai/subagent/SubagentToolsKt;->createBuiltInSubagentTools(Lme/rerere/ai/provider/AgentSubagentConfig;Lme/rerere/rikkahub/data/datastore/Settings;Lme/rerere/rikkahub/data/ai/GenerationHandler;Lme/rerere/rikkahub/data/model/Assistant;Lme/rerere/ai/provider/Model;ILme/rerere/rikkahub/data/ai/subagent/SubagentRunTracker;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-virtual {v10, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    goto :goto_32

    :cond_30
    move-object/from16 v2, p1

    :goto_32
    if-eqz p4, :cond_3b

    .line 8
    invoke-static {v2}, Lme/rerere/rikkahub/data/ai/tools/SearchToolsKt;->createSearchTools(Lme/rerere/rikkahub/data/datastore/Settings;)Lkotlin/collections/builders/SetBuilder;

    move-result-object v1

    invoke-virtual {v10, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Lme/rerere/rikkahub/data/model/Assistant;->getLocalTools()Ljava/util/List;

    move-result-object v1

    iget-object v3, v0, Lme/rerere/rikkahub/service/ChatService;->localTools:Lme/rerere/rikkahub/data/ai/tools/local/LocalTools;

    invoke-virtual {v3, v1}, Lme/rerere/rikkahub/data/ai/tools/local/LocalTools;->getTools(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v10, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-static {}, Lpalettes/TonalPalette$Companion;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    .line 11
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/datastore/Settings;->getGlobalToolScripts()Z

    move-result v4

    if-eqz v4, :cond_57

    sget-object v4, Lme/rerere/rikkahub/data/ai/tools/local/LocalToolOption$Scripts;->INSTANCE:Lme/rerere/rikkahub/data/ai/tools/local/LocalToolOption$Scripts;

    invoke-virtual {v1, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_57
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/datastore/Settings;->getGlobalToolAccessibility()Z

    move-result v4

    if-eqz v4, :cond_62

    sget-object v4, Lme/rerere/rikkahub/data/ai/tools/local/LocalToolOption$Accessibility;->INSTANCE:Lme/rerere/rikkahub/data/ai/tools/local/LocalToolOption$Accessibility;

    invoke-virtual {v1, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_62
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/datastore/Settings;->getGlobalToolPowerManagement()Z

    move-result v4

    if-eqz v4, :cond_6d

    sget-object v4, Lme/rerere/rikkahub/data/ai/tools/local/LocalToolOption$PowerManagement;->INSTANCE:Lme/rerere/rikkahub/data/ai/tools/local/LocalToolOption$PowerManagement;

    invoke-virtual {v1, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_6d
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/datastore/Settings;->getGlobalToolTermux()Z

    move-result v4

    if-eqz v4, :cond_78

    sget-object v4, Lme/rerere/rikkahub/data/ai/tools/local/LocalToolOption$Termux;->INSTANCE:Lme/rerere/rikkahub/data/ai/tools/local/LocalToolOption$Termux;

    invoke-virtual {v1, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_78
    invoke-static {v1}, Lpalettes/TonalPalette$Companion;->build(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    .line 16
    invoke-virtual {v3, v1}, Lme/rerere/rikkahub/data/ai/tools/local/LocalTools;->getTools(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 17
    invoke-virtual {v10, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object v13, v0, Lme/rerere/rikkahub/service/ChatService;->providerManager:Lme/rerere/ai/provider/ProviderManager;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lme/rerere/rikkahub/service/ChatService;->filesManager:Lme/rerere/rikkahub/data/files/FilesManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lme/rerere/rikkahub/service/ChatService;->genMediaRepository:Lme/rerere/rikkahub/data/repository/GenMediaRepository;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/datastore/Settings;->getImageGenerationModelId()Lkotlin/uuid/Uuid;

    move-result-object v4

    const/4 v5, 0x0

    .line 20
    invoke-static {v2, v4, v5}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->findModelById(Lme/rerere/rikkahub/data/datastore/Settings;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)Lme/rerere/ai/provider/Model;

    move-result-object v4

    if-nez v4, :cond_9f

    :goto_9d
    move-object v7, v5

    goto :goto_c1

    .line 21
    :cond_9f
    invoke-virtual {v4}, Lme/rerere/ai/provider/Model;->getType()Lme/rerere/ai/provider/ModelType;

    move-result-object v6

    sget-object v7, Lme/rerere/ai/provider/ModelType;->IMAGE:Lme/rerere/ai/provider/ModelType;

    if-eq v6, v7, :cond_a8

    goto :goto_9d

    .line 22
    :cond_a8
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/datastore/Settings;->getProviders()Ljava/util/List;

    move-result-object v6

    .line 23
    invoke-static {v4, v6, v11}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->findProvider(Lme/rerere/ai/provider/Model;Ljava/util/List;Z)Lme/rerere/ai/provider/ProviderSetting;

    move-result-object v6

    if-nez v6, :cond_b3

    goto :goto_9d

    .line 24
    :cond_b3
    instance-of v7, v6, Lme/rerere/ai/provider/ProviderSetting$OpenAI;

    if-nez v7, :cond_bc

    instance-of v7, v6, Lme/rerere/ai/provider/ProviderSetting$Google;

    if-nez v7, :cond_bc

    goto :goto_9d

    .line 25
    :cond_bc
    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    :goto_c1
    const-string v4, " "

    const-string v6, "\n"

    const/4 v8, 0x0

    sget-object v19, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-nez v7, :cond_cd

    move-object/from16 v1, v19

    goto :goto_110

    .line 27
    :cond_cd
    iget-object v12, v7, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 28
    move-object v15, v12

    check-cast v15, Lme/rerere/ai/provider/Model;

    .line 29
    iget-object v7, v7, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 30
    move-object v14, v7

    check-cast v14, Lme/rerere/ai/provider/ProviderSetting;

    .line 31
    const-string v7, "Generate an image with the configured image generation model.\nUse this when the user asks you to draw, paint, create or generate a picture/illustration.\nWrite a detailed English prompt describing subject, style, composition, lighting and quality;\nthe prompt is sent to the image model as-is.\nThe generated image is displayed to the user automatically; just briefly confirm what was drawn."

    .line 32
    invoke-static {v7, v6, v4, v8}, Lkotlin/text/StringsKt___StringsJvmKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v22

    .line 33
    new-instance v20, Lme/rerere/ai/core/Tool;

    .line 34
    new-instance v7, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda2;

    const/4 v12, 0x4

    invoke-direct {v7, v12}, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v12, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;

    const/16 v8, 0x13

    invoke-direct {v12, v8}, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v26, Lme/rerere/rikkahub/data/ai/tools/ImageGenToolsKt$createImageGenerationTools$3;

    const/16 v18, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v25, v12

    move-object/from16 v12, v26

    invoke-direct/range {v12 .. v18}, Lme/rerere/rikkahub/data/ai/tools/ImageGenToolsKt$createImageGenerationTools$3;-><init>(Lme/rerere/ai/provider/ProviderManager;Lme/rerere/ai/provider/ProviderSetting;Lme/rerere/ai/provider/Model;Lme/rerere/rikkahub/data/files/FilesManager;Lme/rerere/rikkahub/data/repository/GenMediaRepository;Lkotlin/coroutines/Continuation;)V

    const/16 v29, 0xc8

    const/16 v30, 0x0

    .line 35
    const-string v21, "generate_image"

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v7

    invoke-direct/range {v20 .. v30}, Lme/rerere/ai/core/Tool;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;Lme/rerere/ai/core/ToolExecutionMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    invoke-static/range {v20 .. v20}, Lpalettes/TonalPalette$Companion;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 37
    :goto_110
    invoke-virtual {v10, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 38
    sget v1, Lme/rerere/rikkahub/data/ai/tools/VideoGenToolsKt;->$r8$clinit:I

    .line 39
    iget-object v1, v0, Lme/rerere/rikkahub/service/ChatService;->videoGenerationManager:Lme/rerere/videogen/provider/VideoGenerationManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/datastore/Settings;->getVideoGenerationModelId()Lkotlin/uuid/Uuid;

    move-result-object v3

    .line 41
    invoke-static {v2, v3, v5}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->findModelById(Lme/rerere/rikkahub/data/datastore/Settings;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)Lme/rerere/ai/provider/Model;

    move-result-object v3

    if-nez v3, :cond_127

    :goto_124
    move-object v12, v5

    goto/16 :goto_253

    .line 42
    :cond_127
    invoke-virtual {v3}, Lme/rerere/ai/provider/Model;->getType()Lme/rerere/ai/provider/ModelType;

    move-result-object v7

    sget-object v8, Lme/rerere/ai/provider/ModelType;->VIDEO:Lme/rerere/ai/provider/ModelType;

    if-eq v7, v8, :cond_130

    goto :goto_124

    .line 43
    :cond_130
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/datastore/Settings;->getProviders()Ljava/util/List;

    move-result-object v7

    .line 44
    invoke-static {v3, v7, v11}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->findProvider(Lme/rerere/ai/provider/Model;Ljava/util/List;Z)Lme/rerere/ai/provider/ProviderSetting;

    move-result-object v7

    if-nez v7, :cond_13b

    goto :goto_124

    .line 45
    :cond_13b
    invoke-virtual {v3}, Lme/rerere/ai/provider/Model;->getModelId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_148

    :cond_145
    :goto_145
    move-object v8, v5

    goto/16 :goto_24a

    .line 46
    :cond_148
    instance-of v8, v7, Lme/rerere/ai/provider/ProviderSetting$OpenAI;

    if-eqz v8, :cond_169

    move-object v8, v7

    check-cast v8, Lme/rerere/ai/provider/ProviderSetting$OpenAI;

    invoke-virtual {v8}, Lme/rerere/ai/provider/ProviderSetting$OpenAI;->getApiKey()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_15a

    goto :goto_15b

    :cond_15a
    move-object v12, v5

    :goto_15b
    if-eqz v12, :cond_167

    invoke-virtual {v8}, Lme/rerere/ai/provider/ProviderSetting$OpenAI;->getBaseUrl()Ljava/lang/String;

    move-result-object v8

    .line 47
    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v12, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a6

    :cond_167
    move-object v13, v5

    goto :goto_1a6

    .line 48
    :cond_169
    instance-of v8, v7, Lme/rerere/ai/provider/ProviderSetting$Google;

    if-eqz v8, :cond_188

    move-object v8, v7

    check-cast v8, Lme/rerere/ai/provider/ProviderSetting$Google;

    invoke-virtual {v8}, Lme/rerere/ai/provider/ProviderSetting$Google;->getApiKey()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_17b

    goto :goto_17c

    :cond_17b
    move-object v12, v5

    :goto_17c
    if-eqz v12, :cond_167

    invoke-virtual {v8}, Lme/rerere/ai/provider/ProviderSetting$Google;->getBaseUrl()Ljava/lang/String;

    move-result-object v8

    .line 49
    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v12, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a6

    .line 50
    :cond_188
    instance-of v8, v7, Lme/rerere/ai/provider/ProviderSetting$Claude;

    if-eqz v8, :cond_167

    move-object v8, v7

    check-cast v8, Lme/rerere/ai/provider/ProviderSetting$Claude;

    invoke-virtual {v8}, Lme/rerere/ai/provider/ProviderSetting$Claude;->getApiKey()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_19a

    goto :goto_19b

    :cond_19a
    move-object v12, v5

    :goto_19b
    if-eqz v12, :cond_167

    invoke-virtual {v8}, Lme/rerere/ai/provider/ProviderSetting$Claude;->getBaseUrl()Ljava/lang/String;

    move-result-object v8

    .line 51
    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v12, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1a6
    if-nez v13, :cond_1a9

    goto :goto_145

    .line 52
    :cond_1a9
    iget-object v8, v13, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 53
    move-object/from16 v21, v8

    check-cast v21, Ljava/lang/String;

    .line 54
    iget-object v8, v13, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 55
    check-cast v8, Ljava/lang/String;

    .line 56
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    const-string v12, "dashscope"

    const/4 v13, 0x0

    .line 59
    invoke-static {v8, v12, v13}, Lkotlin/text/StringsKt___StringsJvmKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v12

    if-nez v12, :cond_1fa

    .line 60
    const-string v12, "aliyuncs"

    .line 61
    invoke-static {v8, v12, v13}, Lkotlin/text/StringsKt___StringsJvmKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v12

    if-eqz v12, :cond_1d1

    goto :goto_1fa

    .line 62
    :cond_1d1
    const-string v12, "volces"

    .line 63
    invoke-static {v8, v12, v13}, Lkotlin/text/StringsKt___StringsJvmKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v12

    if-nez v12, :cond_1f7

    .line 64
    const-string v12, "volcengine"

    .line 65
    invoke-static {v8, v12, v13}, Lkotlin/text/StringsKt___StringsJvmKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v12

    if-nez v12, :cond_1f7

    .line 66
    const-string v12, "ark.cn-beijing"

    .line 67
    invoke-static {v8, v12, v13}, Lkotlin/text/StringsKt___StringsJvmKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v12

    if-eqz v12, :cond_1ea

    goto :goto_1f7

    .line 68
    :cond_1ea
    const-string v12, "minimax"

    .line 69
    invoke-static {v8, v12, v13}, Lkotlin/text/StringsKt___StringsJvmKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-eqz v8, :cond_1f5

    .line 70
    sget-object v8, Lme/rerere/rikkahub/data/ai/tools/VideoVendor;->MINIMAX:Lme/rerere/rikkahub/data/ai/tools/VideoVendor;

    goto :goto_1fc

    :cond_1f5
    move-object v8, v5

    goto :goto_1fc

    :cond_1f7
    :goto_1f7
    sget-object v8, Lme/rerere/rikkahub/data/ai/tools/VideoVendor;->VOLCENGINE:Lme/rerere/rikkahub/data/ai/tools/VideoVendor;

    goto :goto_1fc

    :cond_1fa
    :goto_1fa
    sget-object v8, Lme/rerere/rikkahub/data/ai/tools/VideoVendor;->ALIYUN:Lme/rerere/rikkahub/data/ai/tools/VideoVendor;

    :goto_1fc
    const/4 v12, -0x1

    if-nez v8, :cond_201

    move v8, v12

    goto :goto_209

    .line 71
    :cond_201
    sget-object v13, Lme/rerere/rikkahub/data/ai/tools/VideoGenToolsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v13, v8

    :goto_209
    if-eq v8, v12, :cond_145

    if-eq v8, v11, :cond_23a

    const/4 v12, 0x2

    if-eq v8, v12, :cond_22a

    const/4 v12, 0x3

    if-ne v8, v12, :cond_225

    .line 72
    new-instance v20, Lme/rerere/videogen/provider/VideoGenerationProviderSetting$MiniMax;

    invoke-virtual {v3}, Lme/rerere/ai/provider/Model;->getModelId()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x2

    const/16 v25, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v25}, Lme/rerere/videogen/provider/VideoGenerationProviderSetting$MiniMax;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_222
    move-object/from16 v8, v20

    goto :goto_24a

    .line 73
    :cond_225
    invoke-static {}, Lio/ktor/server/http/content/StaticContentConfig$$ExternalSyntheticLambda4;->m()V

    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_22a
    new-instance v20, Lme/rerere/videogen/provider/VideoGenerationProviderSetting$Volcengine;

    invoke-virtual {v3}, Lme/rerere/ai/provider/Model;->getModelId()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x2

    const/16 v25, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v25}, Lme/rerere/videogen/provider/VideoGenerationProviderSetting$Volcengine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_222

    .line 75
    :cond_23a
    new-instance v20, Lme/rerere/videogen/provider/VideoGenerationProviderSetting$Aliyun;

    invoke-virtual {v3}, Lme/rerere/ai/provider/Model;->getModelId()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x2

    const/16 v25, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v25}, Lme/rerere/videogen/provider/VideoGenerationProviderSetting$Aliyun;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_222

    :goto_24a
    if-nez v8, :cond_24e

    goto/16 :goto_124

    .line 76
    :cond_24e
    new-instance v12, Lme/rerere/rikkahub/data/ai/tools/VideoGenerationTarget;

    invoke-direct {v12, v3, v7, v8}, Lme/rerere/rikkahub/data/ai/tools/VideoGenerationTarget;-><init>(Lme/rerere/ai/provider/Model;Lme/rerere/ai/provider/ProviderSetting;Lme/rerere/videogen/provider/VideoGenerationProviderSetting;)V

    :goto_253
    const/16 v3, 0x18

    const/16 v7, 0x8

    if-nez v12, :cond_25c

    :goto_259
    move-object/from16 v1, v19

    goto :goto_28e

    .line 77
    :cond_25c
    const-string v8, "Generate a video with the configured video generation model.\nUse this when the user asks you to create, generate or animate a video/clip.\nWrite a detailed English prompt describing subject, motion, style, camera and lighting;\nthe prompt is sent to the video model as-is.\nGeneration is asynchronous and may take minutes; this tool waits for completion and\nattaches the resulting video to your reply. Then briefly confirm what was generated."

    const/4 v13, 0x0

    .line 78
    invoke-static {v8, v6, v4, v13}, Lkotlin/text/StringsKt___StringsJvmKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    .line 79
    new-instance v14, Lme/rerere/ai/core/Tool;

    .line 80
    new-instance v8, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda2;

    invoke-direct {v8, v7}, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v13, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;

    invoke-direct {v13, v3}, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v15, Lme/rerere/rikkahub/data/ai/tools/VideoGenToolsKt$createVideoGenerationTools$3;

    invoke-direct {v15, v12, v1, v5}, Lme/rerere/rikkahub/data/ai/tools/VideoGenToolsKt$createVideoGenerationTools$3;-><init>(Lme/rerere/rikkahub/data/ai/tools/VideoGenerationTarget;Lme/rerere/videogen/provider/VideoGenerationManager;Lkotlin/coroutines/Continuation;)V

    const/16 v23, 0xc8

    const/16 v24, 0x0

    move-object/from16 v20, v15

    .line 81
    const-string v15, "generate_video"

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v8

    move-object/from16 v19, v13

    invoke-direct/range {v14 .. v24}, Lme/rerere/ai/core/Tool;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;Lme/rerere/ai/core/ToolExecutionMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 82
    invoke-static {v14}, Lpalettes/TonalPalette$Companion;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    goto :goto_259

    .line 83
    :goto_28e
    invoke-virtual {v10, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 84
    invoke-virtual/range {p2 .. p2}, Lme/rerere/rikkahub/data/model/Assistant;->getEnableRecentChatsReference()Z

    move-result v1

    const/16 v8, 0x9

    const/16 v12, 0x1b

    const/16 v13, 0x1a

    if-eqz v1, :cond_309

    .line 85
    invoke-virtual/range {p2 .. p2}, Lme/rerere/rikkahub/data/model/Assistant;->getId()Lkotlin/uuid/Uuid;

    move-result-object v1

    .line 86
    iget-object v14, v0, Lme/rerere/rikkahub/service/ChatService;->conversationRepo:Lme/rerere/rikkahub/data/repository/ConversationRepository;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    new-instance v15, Lme/rerere/ai/core/Tool;

    move/from16 v26, v11

    .line 88
    new-instance v11, Lme/rerere/rikkahub/data/ai/mcp/McpTool$$ExternalSyntheticLambda0;

    invoke-direct {v11, v13}, Lme/rerere/rikkahub/data/ai/mcp/McpTool$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v13, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;

    invoke-direct {v13, v7}, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v7, Lme/rerere/rikkahub/data/ai/tools/ConversationToolsKt$createConversationTools$3;

    invoke-direct {v7, v14, v1, v5}, Lme/rerere/rikkahub/data/ai/tools/ConversationToolsKt$createConversationTools$3;-><init>(Lme/rerere/rikkahub/data/repository/ConversationRepository;Lkotlin/uuid/Uuid;Lkotlin/coroutines/Continuation;)V

    const/16 v24, 0xc8

    const/16 v25, 0x0

    .line 89
    const-string v16, "recent_chats"

    const-string v17, "List the user\'s recent conversations with you to understand their preferences and ongoing topics.\nReturns conversation titles and the date of last activity, ordered by pinned first then most recently updated.\nUse this when you need quick context about what the user has been discussing lately.\nOnly titles and dates are returned; use `conversation_search` to look up the actual content."

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v7

    move-object/from16 v18, v11

    move-object/from16 v20, v13

    invoke-direct/range {v15 .. v25}, Lme/rerere/ai/core/Tool;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;Lme/rerere/ai/core/ToolExecutionMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 90
    new-instance v31, Lme/rerere/ai/core/Tool;

    .line 91
    new-instance v1, Lme/rerere/rikkahub/data/ai/mcp/McpTool$$ExternalSyntheticLambda0;

    invoke-direct {v1, v12}, Lme/rerere/rikkahub/data/ai/mcp/McpTool$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v7, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;

    invoke-direct {v7, v8}, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v11, Lme/rerere/rikkahub/data/ai/tools/ConversationToolsKt$createConversationTools$6;

    invoke-direct {v11, v5, v14}, Lme/rerere/rikkahub/data/ai/tools/ConversationToolsKt$createConversationTools$6;-><init>(Lkotlin/coroutines/Continuation;Lme/rerere/rikkahub/data/repository/ConversationRepository;)V

    const/16 v40, 0xc8

    const/16 v41, 0x0

    .line 92
    const-string v32, "conversation_search"

    const-string v33, "Full-text search across the user\'s past conversations to recall specific information they mentioned before.\nUse focused keywords. Run multiple searches with different keywords if needed.\nEach result includes the conversation title, a snippet with matched keywords wrapped in [brackets], and the date."

    const/16 v35, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v34, v1

    move-object/from16 v36, v7

    move-object/from16 v37, v11

    invoke-direct/range {v31 .. v41}, Lme/rerere/ai/core/Tool;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;Lme/rerere/ai/core/ToolExecutionMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v31

    filled-new-array {v15, v1}, [Lme/rerere/ai/core/Tool;

    move-result-object v1

    .line 93
    invoke-static {v1}, Lpalettes/TonalPalette$Companion;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 94
    invoke-virtual {v10, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    goto :goto_30b

    :cond_309
    move/from16 v26, v11

    :goto_30b
    const/16 v1, 0x19

    if-eqz v9, :cond_33b

    .line 95
    new-instance v13, Lme/rerere/ai/core/Tool;

    .line 96
    new-instance v7, Lme/rerere/rikkahub/data/ai/mcp/McpTool$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1}, Lme/rerere/rikkahub/data/ai/mcp/McpTool$$ExternalSyntheticLambda0;-><init>(I)V

    .line 97
    new-instance v11, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;

    const/4 v14, 0x7

    invoke-direct {v11, v14}, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;-><init>(I)V

    .line 98
    new-instance v14, Lme/rerere/rikkahub/data/ai/tools/ContextCompactToolKt$createContextCompactTool$3;

    invoke-direct {v14, v9, v5}, Lme/rerere/rikkahub/data/ai/tools/ContextCompactToolKt$createContextCompactTool$3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/16 v22, 0xc8

    const/16 v23, 0x0

    move-object/from16 v19, v14

    .line 99
    const-string v14, "context_compact"

    const-string v15, "Request compaction of the current conversation context when it has grown long.\nOlder history will be summarized into a compact summary and the context will be\nrebuilt with the summary plus recent messages, so earlier details are preserved\ninstead of being truncated. Use this when you notice the conversation is very long\nand important details from the beginning may have been dropped.\nOptionally specify what should be preserved in the summary."

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v7

    move-object/from16 v18, v11

    invoke-direct/range {v13 .. v23}, Lme/rerere/ai/core/Tool;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;Lme/rerere/ai/core/ToolExecutionMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    invoke-virtual {v10, v13}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_33b
    iget-object v7, v0, Lme/rerere/rikkahub/service/ChatService;->connectorManager:Lme/rerere/rikkahub/data/connector/ConnectorManager;

    invoke-virtual {v7}, Lme/rerere/rikkahub/data/connector/ConnectorManager;->connectedConnectorIds()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_375

    .line 102
    sget-object v9, Lme/rerere/rikkahub/data/ai/tools/ConnectorApiToolKt;->ALLOWED_METHODS:Ljava/util/Set;

    .line 103
    new-instance v13, Lme/rerere/ai/core/Tool;

    .line 104
    new-instance v9, Lme/rerere/rikkahub/data/ai/mcp/McpTool$$ExternalSyntheticLambda0;

    invoke-direct {v9, v3}, Lme/rerere/rikkahub/data/ai/mcp/McpTool$$ExternalSyntheticLambda0;-><init>(I)V

    .line 105
    new-instance v3, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;

    const/4 v11, 0x5

    invoke-direct {v3, v11}, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;-><init>(I)V

    .line 106
    new-instance v11, Lme/rerere/rikkahub/data/ai/tools/ConnectorApiToolKt$buildConnectorApiTool$3;

    invoke-direct {v11, v7, v5}, Lme/rerere/rikkahub/data/ai/tools/ConnectorApiToolKt$buildConnectorApiTool$3;-><init>(Lme/rerere/rikkahub/data/connector/ConnectorApiAccess;Lkotlin/coroutines/Continuation;)V

    const/16 v22, 0xc8

    const/16 v23, 0x0

    .line 107
    const-string v14, "connector_api_request"

    const-string v15, "Call an external service the user has connected (see the Connectors page for the\nconnector id, e.g. \"github\", \"notion\", \"slack\").\n\nThe request is sent to the connector\'s configured API base URL. `path` must be a\nrelative path appended to that base (for example \"/user/repos\" for GitHub), never an\nabsolute URL and never a path that changes the host. Read-only requests (GET) run\nwithout asking the user; write requests (POST/PUT/PATCH/DELETE) require user approval.\n\nReturns the HTTP status code followed by the response body (truncated if very large).\nPrefer small, targeted requests; do not dump entire large collections."

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v3

    move-object/from16 v16, v9

    move-object/from16 v19, v11

    invoke-direct/range {v13 .. v23}, Lme/rerere/ai/core/Tool;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;Lme/rerere/ai/core/ToolExecutionMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 108
    invoke-virtual {v10, v13}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_375
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/datastore/Settings;->getAutoApproveTools()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 110
    iget-object v7, v0, Lme/rerere/rikkahub/service/ChatService;->workflowRepository:Lme/rerere/rikkahub/data/repository/WorkflowRepository;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lme/rerere/rikkahub/service/ChatService;->workflowRunner:Lme/rerere/rikkahub/data/ai/workflow/WorkflowRunner;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    new-instance v13, Lme/rerere/ai/core/Tool;

    .line 112
    const-string v11, "List all saved workflows. Returns each workflow\'s id, name, description, execution\nstatistics (total/success/failed executions, last status and time) and a summary of its\nnodes (types only). Use this to discover which workflows exist before running one."

    const/4 v14, 0x0

    .line 113
    invoke-static {v11, v6, v4, v14}, Lkotlin/text/StringsKt___StringsJvmKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    .line 114
    new-instance v11, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda2;

    invoke-direct {v11, v8}, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v8, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;

    invoke-direct {v8, v1}, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v1, Lme/rerere/rikkahub/data/ai/tools/WorkflowToolsKt$createWorkflowTools$3;

    invoke-direct {v1, v7, v5}, Lme/rerere/rikkahub/data/ai/tools/WorkflowToolsKt$createWorkflowTools$3;-><init>(Lme/rerere/rikkahub/data/repository/WorkflowRepository;Lkotlin/coroutines/Continuation;)V

    const/16 v22, 0xc8

    const/16 v23, 0x0

    .line 115
    const-string v14, "workflow_list"

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v1

    move-object/from16 v18, v8

    move-object/from16 v16, v11

    invoke-direct/range {v13 .. v23}, Lme/rerere/ai/core/Tool;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;Lme/rerere/ai/core/ToolExecutionMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 116
    new-instance v14, Lme/rerere/ai/core/Tool;

    .line 117
    const-string v1, "Run a saved workflow by its id. Optionally pass input parameters which are injected into\nstep templates as {{input.NAME}}. Returns each step\'s name, status and output so you can\nreport the result to the user.\nNote: workflows containing shell steps require an explicitly user-confirmed run; an\nunconfirmed run is refused before any node executes."

    const/4 v8, 0x0

    .line 118
    invoke-static {v1, v6, v4, v8}, Lkotlin/text/StringsKt___StringsJvmKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    .line 119
    new-instance v1, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda2;

    const/16 v8, 0xa

    invoke-direct {v1, v8}, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v8, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;

    const/16 v11, 0x1a

    invoke-direct {v8, v11}, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v11, Lme/rerere/rikkahub/data/ai/tools/WorkflowToolsKt$createWorkflowTools$6;

    invoke-direct {v11, v7, v9, v3, v5}, Lme/rerere/rikkahub/data/ai/tools/WorkflowToolsKt$createWorkflowTools$6;-><init>(Lme/rerere/rikkahub/data/repository/WorkflowRepository;Lme/rerere/rikkahub/data/ai/workflow/WorkflowRunner;ZLkotlin/coroutines/Continuation;)V

    const/16 v23, 0xc8

    const/16 v24, 0x0

    .line 120
    const-string v15, "workflow_run"

    const/16 v18, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v1

    move-object/from16 v19, v8

    move-object/from16 v20, v11

    invoke-direct/range {v14 .. v24}, Lme/rerere/ai/core/Tool;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;Lme/rerere/ai/core/ToolExecutionMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 121
    new-instance v15, Lme/rerere/ai/core/Tool;

    .line 122
    const-string v1, "Create or update a workflow. The workflow can later be run manually in the app or via\nworkflow_run. Provide a name, optional description, and an ordered list of steps.\nEach step: {\"name\": string, \"type\": \"text\"|\"ai\"|\"shell\"|\"http\"|\"delay\", \"config\": {...}}.\nConfig shapes:\n- text: {\"content\": string}\n- ai: {\"assistantId\": string, \"prompt\": string} (assistantId optional, defaults to current assistant)\n- shell: {\"command\": string, \"timeoutMillis\": number}\n- http: {\"method\": \"GET\", \"url\": string, \"headers\": object, \"body\": string, \"timeoutMillis\": number}\n- delay: {\"seconds\": number}\nSteps may reference previous step outputs via {{step.N.output}} (N is 1-based step index)\nand input parameters via {{input.NAME}}.\nUpdating by id only works on linear step-form workflows; overwriting a graph workflow\n(created by workflow_generate or edited visually) with steps is rejected to avoid\nsilently discarding its graph \u2014 recreate it via workflow_generate or edit it in the editor."

    const/4 v8, 0x0

    .line 123
    invoke-static {v1, v6, v4, v8}, Lkotlin/text/StringsKt___StringsJvmKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 124
    new-instance v1, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda2;

    const/16 v3, 0xb

    invoke-direct {v1, v3}, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v8, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;

    invoke-direct {v8, v12}, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v9, Lme/rerere/rikkahub/data/ai/tools/WorkflowToolsKt$createWorkflowTools$9;

    invoke-direct {v9, v7, v5}, Lme/rerere/rikkahub/data/ai/tools/WorkflowToolsKt$createWorkflowTools$9;-><init>(Lme/rerere/rikkahub/data/repository/WorkflowRepository;Lkotlin/coroutines/Continuation;)V

    const/16 v24, 0xc8

    const/16 v25, 0x0

    .line 125
    const-string v16, "workflow_create"

    const/16 v19, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v1

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    invoke-direct/range {v15 .. v25}, Lme/rerere/ai/core/Tool;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;Lme/rerere/ai/core/ToolExecutionMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    new-instance v16, Lme/rerere/ai/core/Tool;

    .line 127
    const-string v1, "Generate a workflow as a graph (DAG) from a description. Provide a graph object:\n{\"nodes\": [{\"id\": \"n1\", \"type\": \"start\"|\"end\"|\"text\"|\"ai\"|\"shell\"|\"http\"|\"delay\"|\"if\"|\"for\"|\"merge\"|\"extract\"|\"output\", \"name\": string, \"config\": {...}, \"x\": number, \"y\": number}],\n \"edges\": [{\"fromNodeId\": string, \"fromPort\": \"out\"|\"true\"|\"false\", \"toNodeId\": string, \"condition\": string|null}]}.\nEdge condition (optional): null/absent = run when source succeeds; \"success\" = same;\n\"error\" = run when source FAILS (error handling); \"true\"/\"false\" = match boolean output;\nother strings are regex matched against source output.\nConfig shapes:\n- text: {\"content\": string} (supports {{node.<id>.output}} and {{input.NAME}} variables)\n- ai: {\"assistantId\": string, \"prompt\": string}\n- shell: {\"command\": string, \"timeoutMillis\": number}\n- http: {\"method\": \"GET\", \"url\": string, \"headers\": object, \"body\": string, \"timeoutMillis\": number}\n- delay: {\"seconds\": number}\n- if: {\"condition\": string, e.g. \"{{node.n1.output}} > 10\"} (outgoing edges use fromPort \"true\"/\"false\")\n- for: {\"itemsSource\": string, \"prompt\": string, \"assistantId\": string} (prompt uses {{item}} and {{index}})\n- extract: {\"mode\": \"regex\"|\"json\"|\"sub\"|\"concat\", \"source\": string, \"expression\": string,\n            \"group\": number, \"defaultValue\": string, \"startIndex\": number, \"length\": number,\n            \"others\": string, \"separator\": string}\n- merge: {} / output: {\"template\": string} / start|end: {}\nThe graph must be acyclic. node ids must be unique strings."

    const/4 v8, 0x0

    .line 128
    invoke-static {v1, v6, v4, v8}, Lkotlin/text/StringsKt___StringsJvmKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    .line 129
    new-instance v1, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda2;

    const/16 v8, 0xc

    invoke-direct {v1, v8}, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v8, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;

    const/16 v9, 0x1c

    invoke-direct {v8, v9}, Lme/rerere/rikkahub/data/ai/tools/GitTools$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v9, Lme/rerere/rikkahub/data/ai/tools/WorkflowToolsKt$createWorkflowTools$12;

    invoke-direct {v9, v7, v5}, Lme/rerere/rikkahub/data/ai/tools/WorkflowToolsKt$createWorkflowTools$12;-><init>(Lme/rerere/rikkahub/data/repository/WorkflowRepository;Lkotlin/coroutines/Continuation;)V

    const/16 v25, 0xc8

    const/16 v26, 0x0

    .line 130
    const-string v17, "workflow_generate"

    const/16 v20, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v1

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    invoke-direct/range {v16 .. v26}, Lme/rerere/ai/core/Tool;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;Lme/rerere/ai/core/ToolExecutionMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v16

    filled-new-array {v13, v14, v15, v1}, [Lme/rerere/ai/core/Tool;

    move-result-object v1

    .line 131
    invoke-static {v1}, Lpalettes/TonalPalette$Companion;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 132
    invoke-virtual {v10, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v8, p5

    .line 133
    invoke-virtual {v10, v8}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 134
    invoke-virtual/range {p2 .. p2}, Lme/rerere/rikkahub/data/model/Assistant;->getEnabledSkills()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46c

    .line 135
    invoke-virtual/range {p2 .. p2}, Lme/rerere/rikkahub/data/model/Assistant;->getEnabledSkills()Ljava/util/Set;

    move-result-object v1

    .line 136
    iget-object v7, v0, Lme/rerere/rikkahub/service/ChatService;->skillManager:Lme/rerere/rikkahub/data/files/SkillManager;

    invoke-virtual {v7}, Lme/rerere/rikkahub/data/files/SkillManager;->listSkills()Ljava/util/List;

    move-result-object v7

    .line 137
    nop

    nop

    nop

    nop

    .line 138
    nop

    nop

    nop

    .line 139
    :cond_46c
    invoke-virtual/range {p2 .. p2}, Lme/rerere/rikkahub/data/model/Assistant;->getMcpServers()Ljava/util/Set;

    move-result-object v1

    move-object/from16 v7, p6

    .line 140
    invoke-static {v1, v7}, Lme/rerere/rikkahub/data/model/ConversationKt;->resolveEffectiveMcpServers(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 141
    move-object v7, v1

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_562

    .line 142
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/datastore/Settings;->getMcpServers()Ljava/util/List;

    move-result-object v2

    .line 143
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_48c
    :goto_48c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4b1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lme/rerere/rikkahub/data/ai/mcp/McpServerConfig;

    .line 145
    invoke-virtual {v9}, Lme/rerere/rikkahub/data/ai/mcp/McpServerConfig;->getCommonOptions()Lme/rerere/rikkahub/data/ai/mcp/McpCommonOptions;

    move-result-object v11

    invoke-virtual {v11}, Lme/rerere/rikkahub/data/ai/mcp/McpCommonOptions;->getEnable()Z

    move-result v11

    if-eqz v11, :cond_48c

    invoke-virtual {v9}, Lme/rerere/rikkahub/data/ai/mcp/McpServerConfig;->getId()Lkotlin/uuid/Uuid;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48c

    .line 146
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48c

    .line 147
    :cond_4b1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4b5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_562

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/rerere/rikkahub/data/ai/mcp/McpServerConfig;

    .line 148
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/ai/mcp/McpServerConfig;->getCommonOptions()Lme/rerere/rikkahub/data/ai/mcp/McpCommonOptions;

    move-result-object v7

    invoke-virtual {v7}, Lme/rerere/rikkahub/data/ai/mcp/McpCommonOptions;->getTools()Ljava/util/List;

    move-result-object v7

    .line 149
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4d2
    :goto_4d2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4e9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lme/rerere/rikkahub/data/ai/mcp/McpTool;

    .line 151
    invoke-virtual {v11}, Lme/rerere/rikkahub/data/ai/mcp/McpTool;->getEnable()Z

    move-result v11

    if-eqz v11, :cond_4d2

    .line 152
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d2

    .line 153
    :cond_4e9
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4ed
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4b5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lme/rerere/rikkahub/data/ai/mcp/McpTool;

    .line 154
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/ai/mcp/McpServerConfig;->getCommonOptions()Lme/rerere/rikkahub/data/ai/mcp/McpCommonOptions;

    move-result-object v9

    invoke-virtual {v9}, Lme/rerere/rikkahub/data/ai/mcp/McpCommonOptions;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "[^a-zA-Z0-9_]"

    .line 155
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    invoke-virtual {v11, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v11, "_"

    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    new-instance v11, Lme/rerere/ai/core/Tool;

    .line 159
    invoke-virtual {v8}, Lme/rerere/rikkahub/data/ai/mcp/McpTool;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "mcp__"

    const-string v14, "__"

    .line 160
    invoke-static {v13, v9, v14, v12}, Landroidx/camera/core/CameraSelector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 161
    invoke-virtual {v8}, Lme/rerere/rikkahub/data/ai/mcp/McpTool;->getDescription()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_530

    const-string v9, ""

    :cond_530
    move-object v13, v9

    .line 162
    new-instance v14, Lme/rerere/rikkahub/RouteActivity$$ExternalSyntheticLambda6;

    invoke-direct {v14, v8, v3}, Lme/rerere/rikkahub/RouteActivity$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    new-instance v9, Lme/rerere/rikkahub/ui/hooks/ASRKt$$ExternalSyntheticLambda1;

    const/16 v15, 0x11

    invoke-direct {v9, v8, v15}, Lme/rerere/rikkahub/ui/hooks/ASRKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    new-instance v17, Lme/rerere/rikkahub/ui/hooks/DebounceKt$useThrottle$1$1$1;

    const/16 v15, 0xa

    move-object/from16 p2, v0

    move-object/from16 p3, v2

    move-object/from16 p5, v5

    move-object/from16 p4, v8

    move/from16 p6, v15

    move-object/from16 p1, v17

    invoke-direct/range {p1 .. p6}, Lme/rerere/rikkahub/ui/hooks/DebounceKt$useThrottle$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    const/16 v20, 0xc8

    const/16 v21, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v9

    .line 163
    invoke-direct/range {v11 .. v21}, Lme/rerere/ai/core/Tool;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;Lme/rerere/ai/core/ToolExecutionMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 164
    invoke-virtual {v10, v11}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_4ed

    .line 165
    :cond_562
    iget-object v0, v0, Lme/rerere/rikkahub/service/ChatService;->planTracker:Lme/rerere/rikkahub/data/ai/plan/PlanTracker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    const-string v1, "Maintain a structured task plan for complex multi-step requests.\nUse this to break a request into tasks, track progress, and keep the user informed of what remains.\nActions:\n- \"create\": create a plan entry. Input: { action: \"create\", content: \"task description\" }. Returns task_id.\n- \"update\": mark progress. Input: { action: \"update\", task_id: \"...\", status: \"pending\" | \"in_progress\" | \"completed\" }. Optionally content to rewrite the task text.\n- \"list\": return all current plan entries with their status."

    const/4 v8, 0x0

    .line 167
    invoke-static {v1, v6, v4, v8}, Lkotlin/text/StringsKt___StringsJvmKt;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 168
    new-instance v11, Lme/rerere/ai/core/Tool;

    .line 169
    new-instance v14, Lme/rerere/rikkahub/data/ai/mcp/McpTool$$ExternalSyntheticLambda0;

    const/16 v1, 0xe

    invoke-direct {v14, v1}, Lme/rerere/rikkahub/data/ai/mcp/McpTool$$ExternalSyntheticLambda0;-><init>(I)V

    .line 170
    new-instance v1, Lme/rerere/rikkahub/RouteActivity$$ExternalSyntheticLambda21;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lme/rerere/rikkahub/RouteActivity$$ExternalSyntheticLambda21;-><init>(I)V

    .line 171
    new-instance v2, Lme/rerere/rikkahub/data/ai/plan/PlanToolKt$buildPlanTool$3;

    invoke-direct {v2, v0, v5}, Lme/rerere/rikkahub/data/ai/plan/PlanToolKt$buildPlanTool$3;-><init>(Lme/rerere/rikkahub/data/ai/plan/PlanTracker;Lkotlin/coroutines/Continuation;)V

    const/16 v20, 0xc8

    const/16 v21, 0x0

    .line 172
    const-string v12, "plan"

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v11 .. v21}, Lme/rerere/ai/core/Tool;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/Long;Lme/rerere/ai/core/ToolExecutionMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 173
    invoke-virtual {v10, v11}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-static {v10}, Lpalettes/TonalPalette$Companion;->build(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final checkFilesDelete(Lme/rerere/rikkahub/data/model/Conversation;Lme/rerere/rikkahub/data/model/Conversation;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Lme/rerere/rikkahub/data/model/Conversation;->getFiles()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lme/rerere/rikkahub/data/model/Conversation;->getFiles()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_42

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    move-object v2, v1

    .line 29
    check-cast v2, Landroid/net/Uri;

    .line 30
    .line 31
    if-eqz p1, :cond_27

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_27

    .line 38
    .line 39
    goto :goto_3e

    .line 40
    :cond_27
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :cond_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3e

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroid/net/Uri;

    .line 55
    .line 56
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2b

    .line 61
    .line 62
    goto :goto_11

    .line 63
    :cond_3e
    :goto_3e
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_11

    .line 67
    :cond_42
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_60

    .line 72
    .line 73
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatService;->filesManager:Lme/rerere/rikkahub/data/files/FilesManager;

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lme/rerere/rikkahub/data/files/FilesManager;->deleteChatFiles(Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    new-instance p0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string p1, "checkFilesDelete: "

    .line 81
    .line 82
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string p1, "ChatService"

    .line 93
    .line 94
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_60
    return-void
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
.end method

.method public final checkInvalidMessages(Lkotlin/uuid/Uuid;)V
    .registers 26

    .line 1
    invoke-virtual/range {p0 .. p1}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lme/rerere/rikkahub/data/model/Conversation;

    .line 11
    .line 12
    invoke-virtual {v1}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/16 v3, 0xa

    .line 19
    .line 20
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v4, 0x0

    .line 32
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_10c

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    add-int/lit8 v6, v4, 0x1

    .line 43
    .line 44
    if-ltz v4, :cond_107

    .line 45
    .line 46
    move-object v7, v5

    .line 47
    check-cast v7, Lme/rerere/rikkahub/data/model/MessageNode;

    .line 48
    .line 49
    invoke-virtual {v7}, Lme/rerere/rikkahub/data/model/MessageNode;->getCurrentMessage()Lme/rerere/ai/ui/UIMessage;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Lme/rerere/ai/ui/UIMessage;->getTools()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_42

    .line 58
    .line 59
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_42

    .line 64
    .line 65
    goto/16 :goto_101

    .line 66
    .line 67
    :cond_42
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    :cond_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_101

    .line 76
    .line 77
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lme/rerere/ai/ui/UIMessagePart$Tool;

    .line 82
    .line 83
    invoke-virtual {v5}, Lme/rerere/ai/ui/UIMessagePart$Tool;->isExecuted()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_46

    .line 88
    .line 89
    invoke-virtual {v7}, Lme/rerere/rikkahub/data/model/MessageNode;->getCurrentMessage()Lme/rerere/ai/ui/UIMessage;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v4}, Lme/rerere/ai/ui/UIMessage;->getTools()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    if-eqz v4, :cond_69

    .line 98
    .line 99
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_69

    .line 104
    .line 105
    goto :goto_8b

    .line 106
    :cond_69
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    :cond_6d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_8b

    .line 115
    .line 116
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    check-cast v5, Lme/rerere/ai/ui/UIMessagePart$Tool;

    .line 121
    .line 122
    invoke-virtual {v5}, Lme/rerere/ai/ui/UIMessagePart$Tool;->isExecuted()Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-nez v8, :cond_6d

    .line 127
    .line 128
    invoke-virtual {v5}, Lme/rerere/ai/ui/UIMessagePart$Tool;->getApprovalState()Lme/rerere/ai/ui/ToolApprovalState;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-static {v5}, Lme/rerere/ai/ui/UIMessagePartKt;->canResumeToolExecution(Lme/rerere/ai/ui/ToolApprovalState;)Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_6d

    .line 137
    .line 138
    goto/16 :goto_101

    .line 139
    .line 140
    :cond_8b
    :goto_8b
    invoke-virtual {v7}, Lme/rerere/rikkahub/data/model/MessageNode;->getCurrentMessage()Lme/rerere/ai/ui/UIMessage;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v4}, Lme/rerere/ai/ui/UIMessage;->getTools()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    if-eqz v4, :cond_9c

    .line 149
    .line 150
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-eqz v5, :cond_9c

    .line 155
    .line 156
    goto :goto_b3

    .line 157
    :cond_9c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    :cond_a0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-eqz v5, :cond_b3

    .line 166
    .line 167
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    check-cast v5, Lme/rerere/ai/ui/UIMessagePart$Tool;

    .line 172
    .line 173
    invoke-virtual {v5}, Lme/rerere/ai/ui/UIMessagePart$Tool;->isExecuted()Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-nez v5, :cond_a0

    .line 178
    .line 179
    goto :goto_c2

    .line 180
    :cond_b3
    :goto_b3
    invoke-virtual {v7}, Lme/rerere/rikkahub/data/model/MessageNode;->getCurrentMessage()Lme/rerere/ai/ui/UIMessage;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v4}, Lme/rerere/ai/ui/UIMessage;->getTools()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-nez v4, :cond_c2

    .line 193
    .line 194
    goto :goto_101

    .line 195
    :cond_c2
    :goto_c2
    invoke-virtual {v7}, Lme/rerere/rikkahub/data/model/MessageNode;->getMessages()Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    new-instance v9, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    :cond_cf
    :goto_cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_f2

    .line 213
    .line 214
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    move-object v8, v5

    .line 219
    check-cast v8, Lme/rerere/ai/ui/UIMessage;

    .line 220
    .line 221
    invoke-virtual {v8}, Lme/rerere/ai/ui/UIMessage;->getId()Lkotlin/uuid/Uuid;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    invoke-virtual {v7}, Lme/rerere/rikkahub/data/model/MessageNode;->getCurrentMessage()Lme/rerere/ai/ui/UIMessage;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    invoke-virtual {v10}, Lme/rerere/ai/ui/UIMessage;->getId()Lkotlin/uuid/Uuid;

    .line 230
    .line 231
    .line 232
    move-result-object v10

    .line 233
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    if-nez v8, :cond_cf

    .line 238
    .line 239
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    goto :goto_cf

    .line 243
    :cond_f2
    invoke-virtual {v7}, Lme/rerere/rikkahub/data/model/MessageNode;->getSelectIndex()I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    add-int/lit8 v10, v4, -0x1

    .line 248
    .line 249
    const/16 v12, 0x9

    .line 250
    .line 251
    const/4 v13, 0x0

    .line 252
    const/4 v8, 0x0

    .line 253
    const/4 v11, 0x0

    .line 254
    invoke-static/range {v7 .. v13}, Lme/rerere/rikkahub/data/model/MessageNode;->copy$default(Lme/rerere/rikkahub/data/model/MessageNode;Lkotlin/uuid/Uuid;Ljava/util/List;IZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/MessageNode;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    :cond_101
    :goto_101
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move v4, v6

    .line 262
    goto/16 :goto_1f

    .line 263
    .line 264
    :cond_107
    invoke-static {}, Lpalettes/TonalPalette$Companion;->throwIndexOverflow()V

    .line 265
    .line 266
    .line 267
    const/4 v0, 0x0

    .line 268
    throw v0

    .line 269
    :cond_10c
    new-instance v0, Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    :goto_119
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    if-eqz v3, :cond_150

    .line 287
    .line 288
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    move-object v4, v3

    .line 293
    check-cast v4, Lme/rerere/rikkahub/data/model/MessageNode;

    .line 294
    .line 295
    invoke-virtual {v4}, Lme/rerere/rikkahub/data/model/MessageNode;->getMessages()Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    if-nez v3, :cond_14c

    .line 304
    .line 305
    invoke-virtual {v4}, Lme/rerere/rikkahub/data/model/MessageNode;->getMessages()Ljava/util/List;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    invoke-virtual {v4}, Lme/rerere/rikkahub/data/model/MessageNode;->getSelectIndex()I

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    if-ltz v5, :cond_141

    .line 318
    .line 319
    if-ge v5, v3, :cond_141

    .line 320
    .line 321
    goto :goto_14c

    .line 322
    :cond_141
    const/16 v9, 0xb

    .line 323
    .line 324
    const/4 v10, 0x0

    .line 325
    const/4 v5, 0x0

    .line 326
    const/4 v6, 0x0

    .line 327
    const/4 v7, 0x0

    .line 328
    const/4 v8, 0x0

    .line 329
    invoke-static/range {v4 .. v10}, Lme/rerere/rikkahub/data/model/MessageNode;->copy$default(Lme/rerere/rikkahub/data/model/MessageNode;Lkotlin/uuid/Uuid;Ljava/util/List;IZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/MessageNode;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    :cond_14c
    :goto_14c
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    goto :goto_119

    .line 337
    :cond_150
    new-instance v5, Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    :cond_159
    :goto_159
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    if-eqz v2, :cond_174

    .line 351
    .line 352
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    move-object v3, v2

    .line 357
    check-cast v3, Lme/rerere/rikkahub/data/model/MessageNode;

    .line 358
    .line 359
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/model/MessageNode;->getMessages()Ljava/util/List;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-nez v3, :cond_159

    .line 368
    .line 369
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    goto :goto_159

    .line 373
    :cond_174
    const v22, 0xffff7

    .line 374
    .line 375
    .line 376
    const/16 v23, 0x0

    .line 377
    .line 378
    const/4 v2, 0x0

    .line 379
    const/4 v3, 0x0

    .line 380
    const/4 v4, 0x0

    .line 381
    const/4 v6, 0x0

    .line 382
    const/4 v7, 0x0

    .line 383
    const/4 v8, 0x0

    .line 384
    const/4 v9, 0x0

    .line 385
    const/4 v10, 0x0

    .line 386
    const/4 v11, 0x0

    .line 387
    const/4 v12, 0x0

    .line 388
    const/4 v13, 0x0

    .line 389
    const/4 v14, 0x0

    .line 390
    const/4 v15, 0x0

    .line 391
    const/16 v16, 0x0

    .line 392
    .line 393
    const/16 v17, 0x0

    .line 394
    .line 395
    const/16 v18, 0x0

    .line 396
    .line 397
    const/16 v19, 0x0

    .line 398
    .line 399
    const/16 v20, 0x0

    .line 400
    .line 401
    const/16 v21, 0x0

    .line 402
    .line 403
    invoke-static/range {v1 .. v23}, Lme/rerere/rikkahub/data/model/Conversation;->copy$default(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/ConversationCompression;ZLjava/lang/Integer;Ljava/util/Set;ZIZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    move-object/from16 v1, p0

    .line 408
    .line 409
    move-object/from16 v2, p1

    .line 410
    .line 411
    invoke-virtual {v1, v0, v2}, Lme/rerere/rikkahub/service/ChatService;->updateConversation(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;)V

    .line 412
    .line 413
    .line 414
    return-void
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
.end method

.method public final clearRecallHistory(Lkotlin/uuid/Uuid;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lme/rerere/rikkahub/service/ChatPool;->get(Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/service/ConversationSession;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_c

    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    iget-object v0, p1, Lme/rerere/rikkahub/service/ConversationSession;->sideEffectLogs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    check-cast v1, Ljava/lang/Iterable;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_41

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lme/rerere/rikkahub/data/recall/SideEffectLog;

    .line 39
    .line 40
    iget-object v2, v2, Lme/rerere/rikkahub/data/recall/SideEffectLog;->workspaceSnapshotId:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v2, :cond_1b

    .line 43
    .line 44
    iget-object v3, p0, Lme/rerere/rikkahub/service/ChatService;->workspaceSnapshotManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 45
    .line 46
    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lme/rerere/rikkahub/data/recall/WorkspaceSnapshotManager;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v4, Ljava/io/File;

    .line 56
    .line 57
    iget-object v3, v3, Lme/rerere/rikkahub/data/recall/WorkspaceSnapshotManager;->snapshotBase:Ljava/io/File;

    .line 58
    .line 59
    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v4}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_1b

    .line 66
    :cond_41
    iget-object p0, p1, Lme/rerere/rikkahub/service/ConversationSession;->_recallHistory:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 67
    .line 68
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 75
    .line 76
    .line 77
    return-void
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
.end method

.method public final compressConversation-hUnOzRk(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Ljava/lang/String;IILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 60

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p6

    .line 4
    .line 5
    instance-of v2, v1, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;

    .line 6
    .line 7
    if-eqz v2, :cond_18

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;

    .line 11
    .line 12
    iget v3, v2, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_18

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->label:I

    .line 22
    .line 23
    :goto_16
    move-object v12, v2

    .line 24
    goto :goto_1e

    .line 25
    :cond_18
    new-instance v2, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;

    .line 26
    .line 27
    invoke-direct {v2, v0, v1}, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 28
    .line 29
    .line 30
    goto :goto_16

    .line 31
    :goto_1e
    iget-object v1, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v2, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->label:I

    .line 34
    .line 35
    const/4 v13, 0x4

    .line 36
    const/4 v3, 0x3

    .line 37
    const/4 v4, 0x1

    .line 38
    const/4 v15, 0x2

    .line 39
    const/4 v5, 0x0

    .line 40
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 41
    .line 42
    if-eqz v2, :cond_b4

    .line 43
    .line 44
    if-eq v2, v4, :cond_9f

    .line 45
    .line 46
    if-eq v2, v15, :cond_5f

    .line 47
    .line 48
    if-eq v2, v3, :cond_3e

    .line 49
    .line 50
    if-ne v2, v13, :cond_38

    .line 51
    .line 52
    :try_start_33
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3fc

    .line 53
    .line 54
    .line 55
    goto/16 :goto_3e2

    .line 56
    .line 57
    :cond_38
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v5

    .line 63
    :cond_3e
    iget v2, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$4:I

    .line 64
    .line 65
    iget v3, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$3:I

    .line 66
    .line 67
    iget v4, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$2:I

    .line 68
    .line 69
    iget v7, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$1:I

    .line 70
    .line 71
    iget v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$0:I

    .line 72
    .line 73
    iget-object v9, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$13:Ljava/util/List;

    .line 74
    .line 75
    iget-object v10, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$12:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v11, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$11:Ljava/util/List;

    .line 78
    .line 79
    iget-object v13, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$3:Lme/rerere/rikkahub/service/ChatService;

    .line 80
    .line 81
    iget-object v14, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 82
    .line 83
    iget-object v15, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 84
    .line 85
    :try_start_54
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_5b

    .line 86
    .line 87
    .line 88
    move-object v0, v1

    .line 89
    move-object v1, v6

    .line 90
    goto/16 :goto_258

    .line 91
    .line 92
    :catchall_5b
    move-exception v0

    .line 93
    move-object v1, v6

    .line 94
    goto/16 :goto_288

    .line 95
    .line 96
    :cond_5f
    iget v0, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$4:I

    .line 97
    .line 98
    iget v2, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$3:I

    .line 99
    .line 100
    iget v4, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$2:I

    .line 101
    .line 102
    iget v7, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$1:I

    .line 103
    .line 104
    iget v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$0:I

    .line 105
    .line 106
    iget-object v9, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$12:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v10, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$11:Ljava/util/List;

    .line 109
    .line 110
    iget-object v11, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$7:Lme/rerere/ai/provider/Model;

    .line 111
    .line 112
    iget-object v13, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$6:Lme/rerere/ai/provider/Provider;

    .line 113
    .line 114
    iget-object v14, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$5:Lme/rerere/ai/provider/ProviderSetting;

    .line 115
    .line 116
    iget-object v15, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$4:Lme/rerere/rikkahub/data/datastore/Settings;

    .line 117
    .line 118
    iget-object v3, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$3:Lme/rerere/rikkahub/service/ChatService;

    .line 119
    .line 120
    iget-object v5, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$2:Ljava/lang/String;

    .line 121
    .line 122
    move/from16 p0, v0

    .line 123
    .line 124
    iget-object v0, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 125
    .line 126
    move-object/from16 p1, v0

    .line 127
    .line 128
    iget-object v0, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 129
    .line 130
    :try_start_81
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_3fc

    .line 131
    .line 132
    .line 133
    move-object/from16 v20, v13

    .line 134
    .line 135
    move/from16 v13, p0

    .line 136
    .line 137
    move-object/from16 p0, v1

    .line 138
    .line 139
    move-object v1, v0

    .line 140
    move-object/from16 v0, v20

    .line 141
    .line 142
    move-object/from16 v21, v6

    .line 143
    .line 144
    move-object v6, v10

    .line 145
    move-object v10, v14

    .line 146
    move-object/from16 v20, v15

    .line 147
    .line 148
    move v14, v2

    .line 149
    move v15, v4

    .line 150
    move v4, v8

    .line 151
    move-object v8, v5

    .line 152
    move-object v5, v9

    .line 153
    move-object v9, v3

    .line 154
    move v3, v7

    .line 155
    move-object v7, v11

    .line 156
    move-object/from16 v11, p1

    .line 157
    .line 158
    goto/16 :goto_1be

    .line 159
    .line 160
    :cond_9f
    iget v0, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$1:I

    .line 161
    .line 162
    iget v2, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$0:I

    .line 163
    .line 164
    iget-object v3, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$3:Lme/rerere/rikkahub/service/ChatService;

    .line 165
    .line 166
    iget-object v5, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$2:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v7, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 169
    .line 170
    iget-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 171
    .line 172
    :try_start_ab
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_3fc

    .line 173
    .line 174
    .line 175
    move/from16 v24, v2

    .line 176
    .line 177
    move-object v2, v8

    .line 178
    :goto_b1
    move-object/from16 v30, v5

    .line 179
    .line 180
    goto :goto_e2

    .line 181
    :cond_b4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :try_start_b7
    iget-object v1, v0, Lme/rerere/rikkahub/service/ChatService;->settingsStore:Lme/rerere/rikkahub/data/datastore/SettingsStore;

    .line 185
    .line 186
    iget-object v1, v1, Lme/rerere/rikkahub/data/datastore/SettingsStore;->settingsFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 187
    .line 188
    move-object/from16 v2, p1

    .line 189
    .line 190
    iput-object v2, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 191
    .line 192
    move-object/from16 v3, p2

    .line 193
    .line 194
    iput-object v3, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 195
    .line 196
    move-object/from16 v5, p3

    .line 197
    .line 198
    iput-object v5, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$2:Ljava/lang/String;

    .line 199
    .line 200
    iput-object v0, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$3:Lme/rerere/rikkahub/service/ChatService;

    .line 201
    .line 202
    move/from16 v7, p4

    .line 203
    .line 204
    iput v7, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$0:I

    .line 205
    .line 206
    move/from16 v8, p5

    .line 207
    .line 208
    iput v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$1:I

    .line 209
    .line 210
    iput v4, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->label:I

    .line 211
    .line 212
    invoke-static {v1, v12}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    if-ne v1, v6, :cond_dc

    .line 217
    .line 218
    move-object v1, v6

    .line 219
    goto/16 :goto_3e1

    .line 220
    .line 221
    :cond_dc
    move/from16 v24, v7

    .line 222
    .line 223
    move-object v7, v3

    .line 224
    move-object v3, v0

    .line 225
    move v0, v8

    .line 226
    goto :goto_b1

    .line 227
    :goto_e2
    check-cast v1, Lme/rerere/rikkahub/data/datastore/Settings;

    .line 228
    .line 229
    invoke-virtual {v1}, Lme/rerere/rikkahub/data/datastore/Settings;->getCompressModelId()Lkotlin/uuid/Uuid;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    const/4 v8, 0x0

    .line 234
    invoke-static {v1, v5, v8}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->findModelById(Lme/rerere/rikkahub/data/datastore/Settings;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)Lme/rerere/ai/provider/Model;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    if-nez v5, :cond_fe

    .line 239
    .line 240
    invoke-static {v1}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->getCurrentChatModel(Lme/rerere/rikkahub/data/datastore/Settings;)Lme/rerere/ai/provider/Model;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    if-eqz v5, :cond_f6

    .line 245
    .line 246
    goto :goto_fe

    .line 247
    :cond_f6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 248
    .line 249
    const-string v1, "No model available for compression"

    .line 250
    .line 251
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw v0

    .line 255
    :cond_fe
    :goto_fe
    invoke-virtual {v1}, Lme/rerere/rikkahub/data/datastore/Settings;->getProviders()Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-static {v5, v8, v4}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->findProvider(Lme/rerere/ai/provider/Model;Ljava/util/List;Z)Lme/rerere/ai/provider/ProviderSetting;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    if-eqz v4, :cond_3f4

    .line 264
    .line 265
    iget-object v8, v3, Lme/rerere/rikkahub/service/ChatService;->providerManager:Lme/rerere/ai/provider/ProviderManager;

    .line 266
    .line 267
    invoke-virtual {v8, v4}, Lme/rerere/ai/provider/ProviderManager;->getProviderByType(Lme/rerere/ai/provider/ProviderSetting;)Lme/rerere/ai/provider/Provider;

    .line 268
    .line 269
    .line 270
    move-result-object v27

    .line 271
    invoke-virtual {v7}, Lme/rerere/rikkahub/data/model/Conversation;->getActiveMessages()Ljava/util/List;

    .line 272
    .line 273
    .line 274
    move-result-object v8
    :try_end_112
    .catchall {:try_start_b7 .. :try_end_112} :catchall_3fc

    .line 275
    :try_start_112
    invoke-static {v0, v8}, Lme/rerere/rikkahub/service/ConversationCompressor;->splitRecent(ILjava/util/List;)Lme/rerere/rikkahub/service/ConversationCompressor$SplitResult;

    .line 276
    .line 277
    .line 278
    move-result-object v8
    :try_end_116
    .catch Ljava/lang/IllegalArgumentException; {:try_start_112 .. :try_end_116} :catch_3e5
    .catchall {:try_start_112 .. :try_end_116} :catchall_3fc

    .line 279
    :try_start_116
    iget-object v8, v8, Lme/rerere/rikkahub/service/ConversationCompressor$SplitResult;->messagesToCompress:Ljava/util/List;

    .line 280
    .line 281
    invoke-static {v8}, Lme/rerere/rikkahub/service/ConversationCompressor;->microTrimToolOutputs$default(Ljava/util/List;)Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object v21

    .line 285
    invoke-virtual {v7}, Lme/rerere/rikkahub/data/model/Conversation;->getCompression()Lme/rerere/rikkahub/data/model/ConversationCompression;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    if-eqz v8, :cond_127

    .line 290
    .line 291
    invoke-virtual {v8}, Lme/rerere/rikkahub/data/model/ConversationCompression;->getSummary()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    goto :goto_128

    .line 296
    :cond_127
    const/4 v8, 0x0

    .line 297
    :goto_128
    if-nez v8, :cond_12c

    .line 298
    .line 299
    const-string v8, ""

    .line 300
    .line 301
    :cond_12c
    invoke-static {v5}, Lme/rerere/rikkahub/service/ConversationCompressor;->resolveContextLength(Lme/rerere/ai/provider/Model;)I

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    mul-int/lit8 v10, v9, 0x46

    .line 306
    .line 307
    div-int/lit8 v10, v10, 0x64

    .line 308
    .line 309
    const/16 v11, 0x5dc0

    .line 310
    .line 311
    const v13, 0x30d40

    .line 312
    .line 313
    .line 314
    invoke-static {v10, v11, v13}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 315
    .line 316
    .line 317
    move-result v22

    .line 318
    div-int/lit8 v10, v9, 0x8

    .line 319
    .line 320
    const/16 v11, 0x1f40

    .line 321
    .line 322
    const v13, 0xfa00

    .line 323
    .line 324
    .line 325
    invoke-static {v10, v11, v13}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 326
    .line 327
    .line 328
    move-result v23

    .line 329
    new-instance v20, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    .line 330
    .line 331
    const/16 v31, 0x0

    .line 332
    .line 333
    move-object/from16 v26, v1

    .line 334
    .line 335
    move-object/from16 v25, v3

    .line 336
    .line 337
    move-object/from16 v28, v4

    .line 338
    .line 339
    move-object/from16 v29, v5

    .line 340
    .line 341
    invoke-direct/range {v20 .. v31}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>(Ljava/util/List;IIILme/rerere/rikkahub/service/ChatService;Lme/rerere/rikkahub/data/datastore/Settings;Lme/rerere/ai/provider/Provider;Lme/rerere/ai/provider/ProviderSetting;Lme/rerere/ai/provider/Model;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 342
    .line 343
    .line 344
    move-object/from16 v32, v20

    .line 345
    .line 346
    move-object/from16 v4, v21

    .line 347
    .line 348
    move/from16 v10, v22

    .line 349
    .line 350
    move/from16 v1, v24

    .line 351
    .line 352
    move-object/from16 v15, v26

    .line 353
    .line 354
    move-object/from16 v13, v27

    .line 355
    .line 356
    move-object/from16 v14, v28

    .line 357
    .line 358
    move-object/from16 v11, v29

    .line 359
    .line 360
    move-object/from16 v5, v30

    .line 361
    .line 362
    move-object/from16 v20, v6

    .line 363
    .line 364
    move/from16 v6, v23

    .line 365
    .line 366
    iput-object v2, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 367
    .line 368
    iput-object v7, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 369
    .line 370
    iput-object v5, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$2:Ljava/lang/String;

    .line 371
    .line 372
    iput-object v3, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$3:Lme/rerere/rikkahub/service/ChatService;

    .line 373
    .line 374
    iput-object v15, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$4:Lme/rerere/rikkahub/data/datastore/Settings;

    .line 375
    .line 376
    iput-object v14, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$5:Lme/rerere/ai/provider/ProviderSetting;

    .line 377
    .line 378
    iput-object v13, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$6:Lme/rerere/ai/provider/Provider;

    .line 379
    .line 380
    iput-object v11, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$7:Lme/rerere/ai/provider/Model;

    .line 381
    .line 382
    iput-object v4, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$11:Ljava/util/List;

    .line 383
    .line 384
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$12:Ljava/lang/String;

    .line 385
    .line 386
    iput v1, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$0:I

    .line 387
    .line 388
    iput v0, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$1:I

    .line 389
    .line 390
    iput v9, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$2:I

    .line 391
    .line 392
    iput v10, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$3:I

    .line 393
    .line 394
    iput v6, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$4:I

    .line 395
    .line 396
    move/from16 v24, v1

    .line 397
    .line 398
    const/4 v1, 0x2

    .line 399
    iput v1, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->label:I

    .line 400
    .line 401
    move-object/from16 v1, v32

    .line 402
    .line 403
    invoke-static {v1, v12}, Lkotlinx/coroutines/AwaitKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    move-object/from16 v21, v2

    .line 408
    .line 409
    move-object/from16 v2, v20

    .line 410
    .line 411
    if-ne v1, v2, :cond_19f

    .line 412
    .line 413
    move-object v1, v2

    .line 414
    goto/16 :goto_3e1

    .line 415
    .line 416
    :cond_19f
    move-object/from16 p0, v8

    .line 417
    .line 418
    move-object v8, v5

    .line 419
    move-object/from16 v5, p0

    .line 420
    .line 421
    move-object/from16 p0, v11

    .line 422
    .line 423
    move-object v11, v7

    .line 424
    move-object/from16 v7, p0

    .line 425
    .line 426
    move-object/from16 p0, v14

    .line 427
    .line 428
    move v14, v10

    .line 429
    move-object/from16 v10, p0

    .line 430
    .line 431
    move-object/from16 p0, v1

    .line 432
    .line 433
    move-object/from16 v20, v15

    .line 434
    .line 435
    move-object/from16 v1, v21

    .line 436
    .line 437
    move-object/from16 v21, v2

    .line 438
    .line 439
    move v15, v9

    .line 440
    move-object v9, v3

    .line 441
    move v3, v0

    .line 442
    move-object v0, v13

    .line 443
    move v13, v6

    .line 444
    move-object v6, v4

    .line 445
    move/from16 v4, v24

    .line 446
    .line 447
    :goto_1be
    move-object/from16 v2, p0

    .line 448
    .line 449
    check-cast v2, Ljava/util/List;

    .line 450
    .line 451
    invoke-static {v5}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 452
    .line 453
    .line 454
    move-result v22
    :try_end_1c6
    .catchall {:try_start_116 .. :try_end_1c6} :catchall_3fc

    .line 455
    if-nez v22, :cond_2d8

    .line 456
    .line 457
    move-object/from16 p0, v0

    .line 458
    .line 459
    :try_start_1ca
    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    .line 460
    .line 461
    move-object/from16 p1, v7

    .line 462
    .line 463
    const/4 v7, 0x2

    .line 464
    invoke-direct {v0, v7}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v5}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    move-object/from16 p2, v8

    .line 471
    .line 472
    const/4 v7, 0x0

    .line 473
    new-array v8, v7, [Ljava/lang/String;

    .line 474
    .line 475
    invoke-interface {v2, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v7

    .line 479
    invoke-virtual {v0, v7}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    .line 483
    .line 484
    .line 485
    move-result v7

    .line 486
    new-array v7, v7, [Ljava/lang/String;

    .line 487
    .line 488
    invoke-virtual {v0, v7}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-static {v0}, Lpalettes/TonalPalette$Companion;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 493
    .line 494
    .line 495
    move-result-object v22

    .line 496
    const-string v23, "\n\n"

    .line 497
    .line 498
    const/16 v26, 0x0

    .line 499
    .line 500
    const/16 v27, 0x3e

    .line 501
    .line 502
    const/16 v24, 0x0

    .line 503
    .line 504
    const/16 v25, 0x0

    .line 505
    .line 506
    invoke-static/range {v22 .. v27}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    move-object v7, v10

    .line 511
    const-string v10, "\u4ee5\u4e0b\u662f\u4e00\u4efd\u5df2\u6709\u7684\u524d\u60c5\u6458\u8981\u4e0e\u672c\u8f6e\u65b0\u589e\u5185\u5bb9\u7684\u5206\u6bb5\u6458\u8981\uff0c\u8bf7\u5c06\u5176\u878d\u5408\u4e3a\u4e00\u4efd\u8fde\u8d2f\u3001\u53bb\u91cd\u7684\u6574\u4f53\u6458\u8981"

    .line 512
    .line 513
    iput-object v1, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 514
    .line 515
    iput-object v11, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 516
    .line 517
    const/4 v8, 0x0

    .line 518
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$2:Ljava/lang/String;

    .line 519
    .line 520
    iput-object v9, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$3:Lme/rerere/rikkahub/service/ChatService;

    .line 521
    .line 522
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$4:Lme/rerere/rikkahub/data/datastore/Settings;

    .line 523
    .line 524
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$5:Lme/rerere/ai/provider/ProviderSetting;

    .line 525
    .line 526
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$6:Lme/rerere/ai/provider/Provider;

    .line 527
    .line 528
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$7:Lme/rerere/ai/provider/Model;

    .line 529
    .line 530
    iput-object v6, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$11:Ljava/util/List;

    .line 531
    .line 532
    iput-object v5, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$12:Ljava/lang/String;

    .line 533
    .line 534
    iput-object v2, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$13:Ljava/util/List;

    .line 535
    .line 536
    iput v4, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$0:I

    .line 537
    .line 538
    iput v3, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$1:I

    .line 539
    .line 540
    iput v15, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$2:I

    .line 541
    .line 542
    iput v14, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$3:I

    .line 543
    .line 544
    iput v13, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$4:I

    .line 545
    .line 546
    const/4 v8, 0x3

    .line 547
    iput v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->label:I
    :try_end_224
    .catchall {:try_start_1ca .. :try_end_224} :catchall_277

    .line 548
    .line 549
    move-object v8, v11

    .line 550
    move v11, v4

    .line 551
    move-object/from16 v19, v1

    .line 552
    .line 553
    move/from16 v18, v3

    .line 554
    .line 555
    move v3, v4

    .line 556
    move-object/from16 v28, v8

    .line 557
    .line 558
    move-object/from16 v27, v9

    .line 559
    .line 560
    move-object/from16 v4, v20

    .line 561
    .line 562
    move-object/from16 v1, v21

    .line 563
    .line 564
    move-object/from16 v8, p2

    .line 565
    .line 566
    move-object v9, v0

    .line 567
    move-object/from16 v21, v5

    .line 568
    .line 569
    move-object/from16 v20, v6

    .line 570
    .line 571
    move-object v6, v7

    .line 572
    move-object/from16 v5, p0

    .line 573
    .line 574
    move-object/from16 v7, p1

    .line 575
    .line 576
    :try_start_23f
    invoke-static/range {v3 .. v12}, Lme/rerere/rikkahub/service/ChatService;->compressConversation_hUnOzRk$lambda$0$compressMessages(ILme/rerere/rikkahub/data/datastore/Settings;Lme/rerere/ai/provider/Provider;Lme/rerere/ai/provider/ProviderSetting;Lme/rerere/ai/provider/Model;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v0
    :try_end_243
    .catchall {:try_start_23f .. :try_end_243} :catchall_264

    .line 580
    if-ne v0, v1, :cond_247

    .line 581
    .line 582
    goto/16 :goto_3e1

    .line 583
    .line 584
    :cond_247
    move-object v9, v2

    .line 585
    move v8, v3

    .line 586
    move v2, v13

    .line 587
    move v3, v14

    .line 588
    move v4, v15

    .line 589
    move/from16 v7, v18

    .line 590
    .line 591
    move-object/from16 v15, v19

    .line 592
    .line 593
    move-object/from16 v11, v20

    .line 594
    .line 595
    move-object/from16 v10, v21

    .line 596
    .line 597
    move-object/from16 v13, v27

    .line 598
    .line 599
    move-object/from16 v14, v28

    .line 600
    .line 601
    :goto_258
    :try_start_258
    check-cast v0, Ljava/lang/String;
    :try_end_25a
    .catchall {:try_start_258 .. :try_end_25a} :catchall_262

    .line 602
    .line 603
    move-object v5, v0

    .line 604
    :goto_25b
    move v0, v4

    .line 605
    move v4, v8

    .line 606
    move-object v6, v11

    .line 607
    move-object v11, v14

    .line 608
    move v14, v3

    .line 609
    move v3, v7

    .line 610
    goto :goto_28e

    .line 611
    :catchall_262
    move-exception v0

    .line 612
    goto :goto_288

    .line 613
    :catchall_264
    move-exception v0

    .line 614
    :goto_265
    move-object v9, v2

    .line 615
    move v8, v3

    .line 616
    move v2, v13

    .line 617
    move v3, v14

    .line 618
    move v4, v15

    .line 619
    move/from16 v7, v18

    .line 620
    .line 621
    move-object/from16 v15, v19

    .line 622
    .line 623
    move-object/from16 v11, v20

    .line 624
    .line 625
    move-object/from16 v10, v21

    .line 626
    .line 627
    move-object/from16 v13, v27

    .line 628
    .line 629
    move-object/from16 v14, v28

    .line 630
    .line 631
    goto :goto_288

    .line 632
    :catchall_277
    move-exception v0

    .line 633
    move-object/from16 v19, v1

    .line 634
    .line 635
    move/from16 v18, v3

    .line 636
    .line 637
    move v3, v4

    .line 638
    move-object/from16 v20, v6

    .line 639
    .line 640
    move-object/from16 v27, v9

    .line 641
    .line 642
    move-object/from16 v28, v11

    .line 643
    .line 644
    move-object/from16 v1, v21

    .line 645
    .line 646
    move-object/from16 v21, v5

    .line 647
    .line 648
    goto :goto_265

    .line 649
    :goto_288
    :try_start_288
    new-instance v5, Lkotlin/Result$Failure;

    .line 650
    .line 651
    invoke-direct {v5, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 652
    .line 653
    .line 654
    goto :goto_25b

    .line 655
    :goto_28e
    instance-of v7, v5, Lkotlin/Result$Failure;

    .line 656
    .line 657
    if-eqz v7, :cond_293

    .line 658
    .line 659
    const/4 v5, 0x0

    .line 660
    :cond_293
    check-cast v5, Ljava/lang/String;

    .line 661
    .line 662
    if-nez v5, :cond_2d6

    .line 663
    .line 664
    new-instance v5, Lkotlin/jvm/internal/SpreadBuilder;

    .line 665
    .line 666
    const/4 v7, 0x2

    .line 667
    invoke-direct {v5, v7}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v5, v10}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    const/4 v7, 0x0

    .line 674
    new-array v8, v7, [Ljava/lang/String;

    .line 675
    .line 676
    invoke-interface {v9, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v8

    .line 680
    invoke-virtual {v5, v8}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v5}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    .line 684
    .line 685
    .line 686
    move-result v8

    .line 687
    new-array v8, v8, [Ljava/lang/String;

    .line 688
    .line 689
    invoke-virtual {v5, v8}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v5

    .line 693
    invoke-static {v5}, Lpalettes/TonalPalette$Companion;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 694
    .line 695
    .line 696
    move-result-object v5

    .line 697
    const-string v8, "\n\n"

    .line 698
    .line 699
    const/4 v9, 0x0

    .line 700
    const/16 v10, 0x3e

    .line 701
    .line 702
    const/16 v16, 0x0

    .line 703
    .line 704
    const/16 v17, 0x0

    .line 705
    .line 706
    move-object/from16 p0, v5

    .line 707
    .line 708
    move-object/from16 p1, v8

    .line 709
    .line 710
    move-object/from16 p4, v9

    .line 711
    .line 712
    move/from16 p5, v10

    .line 713
    .line 714
    move-object/from16 p2, v16

    .line 715
    .line 716
    move-object/from16 p3, v17

    .line 717
    .line 718
    invoke-static/range {p0 .. p5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v5

    .line 722
    :goto_2d1
    move-object/from16 v30, v11

    .line 723
    .line 724
    move-object v9, v13

    .line 725
    move v13, v2

    .line 726
    goto :goto_302

    .line 727
    :cond_2d6
    const/4 v7, 0x0

    .line 728
    goto :goto_2d1

    .line 729
    :cond_2d8
    move-object/from16 v19, v1

    .line 730
    .line 731
    move/from16 v18, v3

    .line 732
    .line 733
    move v3, v4

    .line 734
    move-object/from16 v20, v6

    .line 735
    .line 736
    move-object/from16 v27, v9

    .line 737
    .line 738
    move-object/from16 v28, v11

    .line 739
    .line 740
    move-object/from16 v1, v21

    .line 741
    .line 742
    const/4 v7, 0x0

    .line 743
    const-string v22, "\n\n"

    .line 744
    .line 745
    const/16 v25, 0x0

    .line 746
    .line 747
    const/16 v26, 0x3e

    .line 748
    .line 749
    const/16 v23, 0x0

    .line 750
    .line 751
    const/16 v24, 0x0

    .line 752
    .line 753
    move-object/from16 v21, v2

    .line 754
    .line 755
    invoke-static/range {v21 .. v26}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v5

    .line 759
    move v4, v3

    .line 760
    move v0, v15

    .line 761
    move/from16 v3, v18

    .line 762
    .line 763
    move-object/from16 v15, v19

    .line 764
    .line 765
    move-object/from16 v6, v20

    .line 766
    .line 767
    move-object/from16 v9, v27

    .line 768
    .line 769
    move-object/from16 v30, v28

    .line 770
    .line 771
    :goto_302
    invoke-virtual/range {v30 .. v30}, Lme/rerere/rikkahub/data/model/Conversation;->getCompression()Lme/rerere/rikkahub/data/model/ConversationCompression;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    if-eqz v2, :cond_30d

    .line 776
    .line 777
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/model/ConversationCompression;->getCompressedCount()I

    .line 778
    .line 779
    .line 780
    move-result v2

    .line 781
    goto :goto_30e

    .line 782
    :cond_30d
    move v2, v7

    .line 783
    :goto_30e
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 784
    .line 785
    .line 786
    move-result v7

    .line 787
    add-int/2addr v2, v7

    .line 788
    invoke-static {v5}, Lme/rerere/rikkahub/service/ConversationCompressor;->markedAsCompressionSummary(Ljava/lang/String;)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v5

    .line 792
    iget-object v7, v9, Lme/rerere/rikkahub/service/ChatService;->context:Landroid/app/Application;

    .line 793
    .line 794
    sget v8, Lme/rerere/rikkahub/R$string;->compression_summary_lookup_hint:I

    .line 795
    .line 796
    new-instance v10, Ljava/lang/Integer;

    .line 797
    .line 798
    invoke-direct {v10, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 799
    .line 800
    .line 801
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v10

    .line 805
    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v7

    .line 809
    new-instance v8, Ljava/lang/StringBuilder;

    .line 810
    .line 811
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    const-string v5, "\n\n"

    .line 818
    .line 819
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v17

    .line 829
    invoke-virtual/range {v30 .. v30}, Lme/rerere/rikkahub/data/model/Conversation;->getCompression()Lme/rerere/rikkahub/data/model/ConversationCompression;

    .line 830
    .line 831
    .line 832
    move-result-object v5

    .line 833
    if-eqz v5, :cond_347

    .line 834
    .line 835
    invoke-virtual {v5}, Lme/rerere/rikkahub/data/model/ConversationCompression;->getCompressedMessageIds()Ljava/util/Set;

    .line 836
    .line 837
    .line 838
    move-result-object v5

    .line 839
    goto :goto_348

    .line 840
    :cond_347
    const/4 v5, 0x0

    .line 841
    :goto_348
    if-nez v5, :cond_34c

    .line 842
    .line 843
    sget-object v5, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 844
    .line 845
    :cond_34c
    new-instance v7, Ljava/util/ArrayList;

    .line 846
    .line 847
    const/16 v8, 0xa

    .line 848
    .line 849
    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 850
    .line 851
    .line 852
    move-result v8

    .line 853
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 854
    .line 855
    .line 856
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 857
    .line 858
    .line 859
    move-result-object v6

    .line 860
    :goto_35b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 861
    .line 862
    .line 863
    move-result v8

    .line 864
    if-eqz v8, :cond_36f

    .line 865
    .line 866
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v8

    .line 870
    check-cast v8, Lme/rerere/ai/ui/UIMessage;

    .line 871
    .line 872
    invoke-virtual {v8}, Lme/rerere/ai/ui/UIMessage;->getId()Lkotlin/uuid/Uuid;

    .line 873
    .line 874
    .line 875
    move-result-object v8

    .line 876
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    .line 878
    .line 879
    goto :goto_35b

    .line 880
    :cond_36f
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 881
    .line 882
    .line 883
    move-result-object v6

    .line 884
    check-cast v6, Ljava/lang/Iterable;

    .line 885
    .line 886
    invoke-static {v5, v6}, Lkotlin/collections/SetsKt___SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 887
    .line 888
    .line 889
    move-result-object v18

    .line 890
    new-instance v44, Lme/rerere/rikkahub/data/model/ConversationCompression;

    .line 891
    .line 892
    const/16 v20, 0x0

    .line 893
    .line 894
    const/16 v21, 0x8

    .line 895
    .line 896
    const/16 v22, 0x0

    .line 897
    .line 898
    move/from16 v19, v2

    .line 899
    .line 900
    move-object/from16 v16, v44

    .line 901
    .line 902
    invoke-direct/range {v16 .. v22}, Lme/rerere/rikkahub/data/model/ConversationCompression;-><init>(Ljava/lang/String;Ljava/util/Set;ILjava/time/Instant;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 903
    .line 904
    .line 905
    sget-object v35, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 906
    .line 907
    const v51, 0xfdfef

    .line 908
    .line 909
    .line 910
    const/16 v52, 0x0

    .line 911
    .line 912
    const/16 v31, 0x0

    .line 913
    .line 914
    const/16 v32, 0x0

    .line 915
    .line 916
    const/16 v33, 0x0

    .line 917
    .line 918
    const/16 v34, 0x0

    .line 919
    .line 920
    const/16 v36, 0x0

    .line 921
    .line 922
    const/16 v37, 0x0

    .line 923
    .line 924
    const/16 v38, 0x0

    .line 925
    .line 926
    const/16 v39, 0x0

    .line 927
    .line 928
    const/16 v40, 0x0

    .line 929
    .line 930
    const/16 v41, 0x0

    .line 931
    .line 932
    const/16 v42, 0x0

    .line 933
    .line 934
    const/16 v43, 0x0

    .line 935
    .line 936
    const/16 v45, 0x0

    .line 937
    .line 938
    const/16 v46, 0x0

    .line 939
    .line 940
    const/16 v47, 0x0

    .line 941
    .line 942
    const/16 v48, 0x0

    .line 943
    .line 944
    const/16 v49, 0x0

    .line 945
    .line 946
    const/16 v50, 0x0

    .line 947
    .line 948
    invoke-static/range {v30 .. v52}, Lme/rerere/rikkahub/data/model/Conversation;->copy$default(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/ConversationCompression;ZLjava/lang/Integer;Ljava/util/Set;ZIZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 949
    .line 950
    .line 951
    move-result-object v2

    .line 952
    const/4 v8, 0x0

    .line 953
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 954
    .line 955
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 956
    .line 957
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$2:Ljava/lang/String;

    .line 958
    .line 959
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$3:Lme/rerere/rikkahub/service/ChatService;

    .line 960
    .line 961
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$4:Lme/rerere/rikkahub/data/datastore/Settings;

    .line 962
    .line 963
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$5:Lme/rerere/ai/provider/ProviderSetting;

    .line 964
    .line 965
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$6:Lme/rerere/ai/provider/Provider;

    .line 966
    .line 967
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$7:Lme/rerere/ai/provider/Model;

    .line 968
    .line 969
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$11:Ljava/util/List;

    .line 970
    .line 971
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$12:Ljava/lang/String;

    .line 972
    .line 973
    iput-object v8, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->L$13:Ljava/util/List;

    .line 974
    .line 975
    iput v4, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$0:I

    .line 976
    .line 977
    iput v3, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$1:I

    .line 978
    .line 979
    iput v0, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$2:I

    .line 980
    .line 981
    iput v14, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$3:I

    .line 982
    .line 983
    iput v13, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->I$4:I

    .line 984
    .line 985
    const/4 v3, 0x4

    .line 986
    iput v3, v12, Lme/rerere/rikkahub/service/ChatService$compressConversation$1;->label:I

    .line 987
    .line 988
    invoke-virtual {v9, v15, v2, v12}, Lme/rerere/rikkahub/service/ChatService;->saveConversation(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    if-ne v0, v1, :cond_3e2

    .line 993
    .line 994
    :goto_3e1
    return-object v1

    .line 995
    :cond_3e2
    :goto_3e2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 996
    .line 997
    goto :goto_403

    .line 998
    :catch_3e5
    move-exception v0

    .line 999
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1000
    .line 1001
    iget-object v2, v3, Lme/rerere/rikkahub/service/ChatService;->context:Landroid/app/Application;

    .line 1002
    .line 1003
    sget v3, Lme/rerere/rikkahub/R$string;->chat_page_compress_not_enough_messages:I

    .line 1004
    .line 1005
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v2

    .line 1009
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1010
    .line 1011
    .line 1012
    throw v1

    .line 1013
    :cond_3f4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1014
    .line 1015
    const-string v1, "Provider not found"

    .line 1016
    .line 1017
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1018
    .line 1019
    .line 1020
    throw v0
    :try_end_3fc
    .catchall {:try_start_288 .. :try_end_3fc} :catchall_3fc

    .line 1021
    :catchall_3fc
    move-exception v0

    .line 1022
    new-instance v1, Lkotlin/Result$Failure;

    .line 1023
    .line 1024
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 1025
    .line 1026
    .line 1027
    move-object v0, v1

    .line 1028
    :goto_403
    return-object v0
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
.end method

.method public final copyWithForkedFileUrl(Lme/rerere/ai/ui/UIMessagePart;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 12

    .line 1
    instance-of v0, p2, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;

    .line 7
    .line 8
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_13

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;->label:I

    .line 18
    .line 19
    goto :goto_18

    .line 20
    :cond_13
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_18
    iget-object p2, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    const/4 v3, 0x3

    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x2

    .line 33
    const/4 v6, 0x0

    .line 34
    if-eqz v1, :cond_54

    .line 35
    .line 36
    if-eq v1, v4, :cond_4c

    .line 37
    .line 38
    if-eq v1, v5, :cond_43

    .line 39
    .line 40
    if-eq v1, v3, :cond_3a

    .line 41
    .line 42
    if-ne v1, v2, :cond_34

    .line 43
    .line 44
    iget-object p0, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;->L$1:Lme/rerere/ai/ui/UIMessagePart;

    .line 45
    .line 46
    check-cast p0, Lme/rerere/ai/ui/UIMessagePart$Audio;

    .line 47
    .line 48
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_cd

    .line 52
    .line 53
    :cond_34
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v6

    .line 59
    :cond_3a
    iget-object p0, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;->L$1:Lme/rerere/ai/ui/UIMessagePart;

    .line 60
    .line 61
    check-cast p0, Lme/rerere/ai/ui/UIMessagePart$Video;

    .line 62
    .line 63
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_b0

    .line 67
    .line 68
    :cond_43
    iget-object p0, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;->L$1:Lme/rerere/ai/ui/UIMessagePart;

    .line 69
    .line 70
    check-cast p0, Lme/rerere/ai/ui/UIMessagePart$Document;

    .line 71
    .line 72
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    move-object v2, p0

    .line 76
    goto :goto_8c

    .line 77
    :cond_4c
    iget-object p0, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;->L$1:Lme/rerere/ai/ui/UIMessagePart;

    .line 78
    .line 79
    check-cast p0, Lme/rerere/ai/ui/UIMessagePart$Image;

    .line 80
    .line 81
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_6f

    .line 85
    :cond_54
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    instance-of p2, p1, Lme/rerere/ai/ui/UIMessagePart$Image;

    .line 89
    .line 90
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 91
    .line 92
    if-eqz p2, :cond_76

    .line 93
    .line 94
    check-cast p1, Lme/rerere/ai/ui/UIMessagePart$Image;

    .line 95
    .line 96
    invoke-virtual {p1}, Lme/rerere/ai/ui/UIMessagePart$Image;->getUrl()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iput-object p1, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;->L$1:Lme/rerere/ai/ui/UIMessagePart;

    .line 101
    .line 102
    iput v4, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;->label:I

    .line 103
    .line 104
    invoke-static {p0, p2, v0}, Lme/rerere/rikkahub/service/ChatService;->copyWithForkedFileUrl$copyLocalFileIfNeeded(Lme/rerere/rikkahub/service/ChatService;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    if-ne p2, v1, :cond_6e

    .line 109
    .line 110
    goto :goto_cb

    .line 111
    :cond_6e
    move-object p0, p1

    .line 112
    :goto_6f
    check-cast p2, Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {p0, p2, v6, v5, v6}, Lme/rerere/ai/ui/UIMessagePart$Image;->copy$default(Lme/rerere/ai/ui/UIMessagePart$Image;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;ILjava/lang/Object;)Lme/rerere/ai/ui/UIMessagePart$Image;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :cond_76
    instance-of p2, p1, Lme/rerere/ai/ui/UIMessagePart$Document;

    .line 120
    .line 121
    if-eqz p2, :cond_9a

    .line 122
    .line 123
    check-cast p1, Lme/rerere/ai/ui/UIMessagePart$Document;

    .line 124
    .line 125
    invoke-virtual {p1}, Lme/rerere/ai/ui/UIMessagePart$Document;->getUrl()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    iput-object p1, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;->L$1:Lme/rerere/ai/ui/UIMessagePart;

    .line 130
    .line 131
    iput v5, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;->label:I

    .line 132
    .line 133
    invoke-static {p0, p2, v0}, Lme/rerere/rikkahub/service/ChatService;->copyWithForkedFileUrl$copyLocalFileIfNeeded(Lme/rerere/rikkahub/service/ChatService;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    if-ne p2, v1, :cond_8b

    .line 138
    .line 139
    goto :goto_cb

    .line 140
    :cond_8b
    move-object v2, p1

    .line 141
    :goto_8c
    move-object v3, p2

    .line 142
    check-cast v3, Ljava/lang/String;

    .line 143
    .line 144
    const/16 v7, 0xe

    .line 145
    .line 146
    const/4 v8, 0x0

    .line 147
    const/4 v4, 0x0

    .line 148
    const/4 v5, 0x0

    .line 149
    const/4 v6, 0x0

    .line 150
    invoke-static/range {v2 .. v8}, Lme/rerere/ai/ui/UIMessagePart$Document;->copy$default(Lme/rerere/ai/ui/UIMessagePart$Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;ILjava/lang/Object;)Lme/rerere/ai/ui/UIMessagePart$Document;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :cond_9a
    instance-of p2, p1, Lme/rerere/ai/ui/UIMessagePart$Video;

    .line 156
    .line 157
    if-eqz p2, :cond_b7

    .line 158
    .line 159
    check-cast p1, Lme/rerere/ai/ui/UIMessagePart$Video;

    .line 160
    .line 161
    invoke-virtual {p1}, Lme/rerere/ai/ui/UIMessagePart$Video;->getUrl()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    iput-object p1, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;->L$1:Lme/rerere/ai/ui/UIMessagePart;

    .line 166
    .line 167
    iput v3, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;->label:I

    .line 168
    .line 169
    invoke-static {p0, p2, v0}, Lme/rerere/rikkahub/service/ChatService;->copyWithForkedFileUrl$copyLocalFileIfNeeded(Lme/rerere/rikkahub/service/ChatService;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    if-ne p2, v1, :cond_af

    .line 174
    .line 175
    goto :goto_cb

    .line 176
    :cond_af
    move-object p0, p1

    .line 177
    :goto_b0
    check-cast p2, Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {p0, p2, v6, v5, v6}, Lme/rerere/ai/ui/UIMessagePart$Video;->copy$default(Lme/rerere/ai/ui/UIMessagePart$Video;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;ILjava/lang/Object;)Lme/rerere/ai/ui/UIMessagePart$Video;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    return-object p0

    .line 184
    :cond_b7
    instance-of p2, p1, Lme/rerere/ai/ui/UIMessagePart$Audio;

    .line 185
    .line 186
    if-eqz p2, :cond_d4

    .line 187
    .line 188
    check-cast p1, Lme/rerere/ai/ui/UIMessagePart$Audio;

    .line 189
    .line 190
    invoke-virtual {p1}, Lme/rerere/ai/ui/UIMessagePart$Audio;->getUrl()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    iput-object p1, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;->L$1:Lme/rerere/ai/ui/UIMessagePart;

    .line 195
    .line 196
    iput v2, v0, Lme/rerere/rikkahub/service/ChatService$copyWithForkedFileUrl$1;->label:I

    .line 197
    .line 198
    invoke-static {p0, p2, v0}, Lme/rerere/rikkahub/service/ChatService;->copyWithForkedFileUrl$copyLocalFileIfNeeded(Lme/rerere/rikkahub/service/ChatService;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    if-ne p2, v1, :cond_cc

    .line 203
    .line 204
    :goto_cb
    return-object v1

    .line 205
    :cond_cc
    move-object p0, p1

    .line 206
    :goto_cd
    check-cast p2, Ljava/lang/String;

    .line 207
    .line 208
    invoke-static {p0, p2, v6, v5, v6}, Lme/rerere/ai/ui/UIMessagePart$Audio;->copy$default(Lme/rerere/ai/ui/UIMessagePart$Audio;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;ILjava/lang/Object;)Lme/rerere/ai/ui/UIMessagePart$Audio;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    return-object p0

    .line 213
    :cond_d4
    return-object p1
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
.end method

.method public final createWorkspaceToolsIfReady(Ljava/lang/String;Ljava/util/Set;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    instance-of v2, v1, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;

    .line 6
    .line 7
    if-eqz v2, :cond_17

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;

    .line 11
    .line 12
    iget v3, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_17

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->label:I

    .line 22
    .line 23
    goto :goto_1c

    .line 24
    :cond_17
    new-instance v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 27
    .line 28
    .line 29
    :goto_1c
    iget-object v1, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->label:I

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x0

    .line 36
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 37
    .line 38
    if-eqz v3, :cond_5f

    .line 39
    .line 40
    if-eq v3, v5, :cond_42

    .line 41
    .line 42
    if-ne v3, v4, :cond_3c

    .line 43
    .line 44
    iget v3, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->I$0:I

    .line 45
    .line 46
    iget-boolean v8, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->Z$0:Z

    .line 47
    .line 48
    iget-object v9, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->L$6:Ljava/util/Iterator;

    .line 49
    .line 50
    iget-object v10, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->L$4:Ljava/util/Collection;

    .line 51
    .line 52
    check-cast v10, Ljava/util/Collection;

    .line 53
    .line 54
    iget-object v11, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->L$1:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_117

    .line 60
    .line 61
    :cond_3c
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v6

    .line 67
    :cond_42
    iget v3, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->I$2:I

    .line 68
    .line 69
    iget v8, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->I$1:I

    .line 70
    .line 71
    iget v9, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->I$0:I

    .line 72
    .line 73
    iget-boolean v10, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->Z$0:Z

    .line 74
    .line 75
    iget-object v11, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->L$10:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v12, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->L$6:Ljava/util/Iterator;

    .line 78
    .line 79
    iget-object v13, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->L$4:Ljava/util/Collection;

    .line 80
    .line 81
    check-cast v13, Ljava/util/Collection;

    .line 82
    .line 83
    iget-object v14, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->L$1:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    move-object v15, v13

    .line 89
    move-object v13, v2

    .line 90
    move v2, v9

    .line 91
    move-object v9, v14

    .line 92
    move-object v14, v12

    .line 93
    :goto_5c
    move v12, v10

    .line 94
    goto/16 :goto_c8

    .line 95
    .line 96
    :cond_5f
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_6b

    .line 104
    .line 105
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_6b
    iget-object v1, v0, Lme/rerere/rikkahub/service/ChatService;->settingsStore:Lme/rerere/rikkahub/data/datastore/SettingsStore;

    .line 109
    .line 110
    iget-object v1, v1, Lme/rerere/rikkahub/data/datastore/SettingsStore;->settingsFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 111
    .line 112
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Lme/rerere/rikkahub/data/datastore/Settings;

    .line 117
    .line 118
    invoke-virtual {v1}, Lme/rerere/rikkahub/data/datastore/Settings;->getAutoApproveTools()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    move-object/from16 v3, p2

    .line 123
    .line 124
    check-cast v3, Ljava/lang/Iterable;

    .line 125
    .line 126
    new-instance v8, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    const/4 v9, 0x0

    .line 136
    move v10, v1

    .line 137
    move-object/from16 v1, p1

    .line 138
    .line 139
    :goto_8a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v11

    .line 143
    if-eqz v11, :cond_12d

    .line 144
    .line 145
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    add-int/lit8 v12, v9, 0x1

    .line 150
    .line 151
    if-ltz v9, :cond_129

    .line 152
    .line 153
    check-cast v11, Lkotlin/uuid/Uuid;

    .line 154
    .line 155
    invoke-virtual {v11}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    iput-object v1, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->L$1:Ljava/lang/String;

    .line 160
    .line 161
    move-object v13, v8

    .line 162
    check-cast v13, Ljava/util/Collection;

    .line 163
    .line 164
    iput-object v13, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->L$4:Ljava/util/Collection;

    .line 165
    .line 166
    iput-object v3, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->L$6:Ljava/util/Iterator;

    .line 167
    .line 168
    iput-object v11, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->L$10:Ljava/lang/String;

    .line 169
    .line 170
    iput-boolean v10, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->Z$0:Z

    .line 171
    .line 172
    iput v12, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->I$0:I

    .line 173
    .line 174
    iput v9, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->I$1:I

    .line 175
    .line 176
    iput v9, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->I$2:I

    .line 177
    .line 178
    iput v5, v2, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->label:I

    .line 179
    .line 180
    iget-object v13, v0, Lme/rerere/rikkahub/service/ChatService;->workspaceRepository:Lme/rerere/rikkahub/data/repository/WorkspaceRepository;

    .line 181
    .line 182
    iget-object v13, v13, Lme/rerere/rikkahub/data/repository/WorkspaceRepository;->dao:Lme/rerere/rikkahub/data/db/dao/WorkspaceDAO;

    .line 183
    .line 184
    invoke-interface {v13, v11, v2}, Lme/rerere/rikkahub/data/db/dao/WorkspaceDAO;->getById(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v13

    .line 188
    if-ne v13, v7, :cond_bf

    .line 189
    .line 190
    goto/16 :goto_110

    .line 191
    .line 192
    :cond_bf
    move-object v14, v3

    .line 193
    move-object v15, v8

    .line 194
    move v3, v9

    .line 195
    move v8, v3

    .line 196
    move-object v9, v1

    .line 197
    move-object v1, v13

    .line 198
    move-object v13, v2

    .line 199
    move v2, v12

    .line 200
    goto :goto_5c

    .line 201
    :goto_c8
    check-cast v1, Lme/rerere/rikkahub/data/db/entity/WorkspaceEntity;

    .line 202
    .line 203
    if-nez v1, :cond_d3

    .line 204
    .line 205
    :goto_cc
    move v5, v2

    .line 206
    move-object v1, v6

    .line 207
    move v10, v12

    .line 208
    move-object v2, v13

    .line 209
    move-object v3, v14

    .line 210
    move-object v8, v15

    .line 211
    goto :goto_11f

    .line 212
    :cond_d3
    iget-object v1, v1, Lme/rerere/rikkahub/data/db/entity/WorkspaceEntity;->shellStatus:Ljava/lang/String;

    .line 213
    .line 214
    const-string v10, "READY"

    .line 215
    .line 216
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-nez v1, :cond_de

    .line 221
    .line 222
    goto :goto_cc

    .line 223
    :cond_de
    if-nez v3, :cond_e3

    .line 224
    .line 225
    const-string v1, ""

    .line 226
    .line 227
    goto :goto_eb

    .line 228
    :cond_e3
    add-int/lit8 v1, v3, 0x1

    .line 229
    .line 230
    const-string v10, "_"

    .line 231
    .line 232
    invoke-static {v1, v10}, Landroidx/camera/camera2/pipe/CameraId$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    :goto_eb
    if-nez v3, :cond_ef

    .line 237
    .line 238
    move-object v10, v9

    .line 239
    goto :goto_f0

    .line 240
    :cond_ef
    move-object v10, v6

    .line 241
    :goto_f0
    iput-object v9, v13, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->L$1:Ljava/lang/String;

    .line 242
    .line 243
    move-object v5, v15

    .line 244
    check-cast v5, Ljava/util/Collection;

    .line 245
    .line 246
    iput-object v5, v13, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->L$4:Ljava/util/Collection;

    .line 247
    .line 248
    iput-object v14, v13, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->L$6:Ljava/util/Iterator;

    .line 249
    .line 250
    iput-object v6, v13, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->L$10:Ljava/lang/String;

    .line 251
    .line 252
    iput-boolean v12, v13, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->Z$0:Z

    .line 253
    .line 254
    iput v2, v13, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->I$0:I

    .line 255
    .line 256
    iput v8, v13, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->I$1:I

    .line 257
    .line 258
    iput v3, v13, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->I$2:I

    .line 259
    .line 260
    iput v4, v13, Lme/rerere/rikkahub/service/ChatService$createWorkspaceToolsIfReady$1;->label:I

    .line 261
    .line 262
    move-object v3, v9

    .line 263
    iget-object v9, v0, Lme/rerere/rikkahub/service/ChatService;->workspaceRepository:Lme/rerere/rikkahub/data/repository/WorkspaceRepository;

    .line 264
    .line 265
    move-object v8, v11

    .line 266
    move-object v11, v1

    .line 267
    invoke-static/range {v8 .. v13}, Lme/rerere/rikkahub/data/ai/tools/WorkspaceToolsKt;->createWorkspaceTools(Ljava/lang/String;Lme/rerere/rikkahub/data/repository/WorkspaceRepository;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    if-ne v1, v7, :cond_111

    .line 272
    .line 273
    :goto_110
    return-object v7

    .line 274
    :cond_111
    move-object v11, v3

    .line 275
    move v8, v12

    .line 276
    move-object v9, v14

    .line 277
    move-object v10, v15

    .line 278
    move v3, v2

    .line 279
    move-object v2, v13

    .line 280
    :goto_117
    check-cast v1, Ljava/util/List;

    .line 281
    .line 282
    move-object v5, v10

    .line 283
    move v10, v8

    .line 284
    move-object v8, v5

    .line 285
    move v5, v3

    .line 286
    move-object v3, v9

    .line 287
    move-object v9, v11

    .line 288
    :goto_11f
    if-eqz v1, :cond_124

    .line 289
    .line 290
    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    :cond_124
    move-object v1, v9

    .line 294
    move v9, v5

    .line 295
    const/4 v5, 0x1

    .line 296
    goto/16 :goto_8a

    .line 297
    .line 298
    :cond_129
    invoke-static {}, Lpalettes/TonalPalette$Companion;->throwIndexOverflow()V

    .line 299
    .line 300
    .line 301
    throw v6

    .line 302
    :cond_12d
    check-cast v8, Ljava/util/List;

    .line 303
    .line 304
    invoke-static {v8}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->flatten(Ljava/util/List;)Ljava/util/ArrayList;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    return-object v0
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
.end method

.method public final deleteFolder(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .registers 7

    .line 1
    iget-object v0, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 2
    .line 3
    iget-object v0, v0, Lme/rerere/rikkahub/service/ChatPool;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_39

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object v3, v2

    .line 34
    check-cast v3, Lme/rerere/rikkahub/service/ConversationSession;

    .line 35
    .line 36
    iget-object v3, v3, Lme/rerere/rikkahub/service/ConversationSession;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 37
    .line 38
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lme/rerere/rikkahub/data/model/Conversation;

    .line 43
    .line 44
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/model/Conversation;->getFolderId()Lkotlin/uuid/Uuid;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_16

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_16

    .line 58
    :cond_39
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_56

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lme/rerere/rikkahub/service/ConversationSession;

    .line 73
    .line 74
    iget-object v1, v1, Lme/rerere/rikkahub/service/ConversationSession;->id:Lkotlin/uuid/Uuid;

    .line 75
    .line 76
    new-instance v2, Lme/rerere/rikkahub/di/AppModuleKt$$ExternalSyntheticLambda2;

    .line 77
    .line 78
    const/16 v3, 0xe

    .line 79
    .line 80
    invoke-direct {v2, v3}, Lme/rerere/rikkahub/di/AppModuleKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1, v2}, Lme/rerere/rikkahub/service/ChatService;->updateConversationState(Lkotlin/uuid/Uuid;Lkotlin/jvm/functions/Function1;)V

    .line 84
    .line 85
    .line 86
    goto :goto_3d

    .line 87
    :cond_56
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatService;->folderRepository:Lme/rerere/rikkahub/data/repository/FolderRepository;

    .line 88
    .line 89
    iget-object p0, p0, Lme/rerere/rikkahub/data/repository/FolderRepository;->conversationDAO:Lme/rerere/rikkahub/data/db/dao/ConversationDAO;

    .line 90
    .line 91
    invoke-virtual {p1}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p0, p1, p2}, Lme/rerere/rikkahub/data/db/dao/ConversationDAO;->deleteFolderAndDetachConversations(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
.end method

.method public final deleteMessage(Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    instance-of v3, v2, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;

    .line 8
    .line 9
    if-eqz v3, :cond_19

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;

    .line 13
    .line 14
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_19

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;->label:I

    .line 24
    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    new-instance v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_1e
    iget-object v2, v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;->label:I

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 39
    .line 40
    if-eqz v4, :cond_44

    .line 41
    .line 42
    if-eq v4, v6, :cond_37

    .line 43
    .line 44
    if-ne v4, v5, :cond_31

    .line 45
    .line 46
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v7

    .line 56
    :cond_37
    iget-boolean v1, v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;->Z$0:Z

    .line 57
    .line 58
    iget-object v4, v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;->L$1:Lkotlin/uuid/Uuid;

    .line 59
    .line 60
    iget-object v9, v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 61
    .line 62
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object v2, v4

    .line 66
    move v4, v1

    .line 67
    move-object v1, v9

    .line 68
    goto :goto_5b

    .line 69
    :cond_44
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 73
    .line 74
    move-object/from16 v2, p2

    .line 75
    .line 76
    iput-object v2, v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;->L$1:Lkotlin/uuid/Uuid;

    .line 77
    .line 78
    move/from16 v4, p3

    .line 79
    .line 80
    iput-boolean v4, v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;->Z$0:Z

    .line 81
    .line 82
    iput v6, v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;->label:I

    .line 83
    .line 84
    invoke-virtual {v0, v1, v3}, Lme/rerere/rikkahub/service/ChatService;->ensureConversationFullyLoaded(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    if-ne v9, v8, :cond_5b

    .line 89
    .line 90
    goto/16 :goto_190

    .line 91
    .line 92
    :cond_5b
    :goto_5b
    invoke-virtual {v0, v1}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {v9}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    move-object v10, v9

    .line 101
    check-cast v10, Lme/rerere/rikkahub/data/model/Conversation;

    .line 102
    .line 103
    sget-object v9, Lme/rerere/rikkahub/service/ChatServiceKt;->DEEPSEEK_MODEL_RE:Lkotlin/text/Regex;

    .line 104
    .line 105
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    const/4 v11, 0x0

    .line 120
    move v12, v11

    .line 121
    :goto_78
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    const/4 v14, -0x1

    .line 126
    if-eqz v13, :cond_b0

    .line 127
    .line 128
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v13

    .line 132
    check-cast v13, Lme/rerere/rikkahub/data/model/MessageNode;

    .line 133
    .line 134
    invoke-virtual {v13}, Lme/rerere/rikkahub/data/model/MessageNode;->getMessages()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    if-eqz v13, :cond_92

    .line 139
    .line 140
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    if-eqz v15, :cond_92

    .line 145
    .line 146
    goto :goto_ad

    .line 147
    :cond_92
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    :cond_96
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v15

    .line 155
    if-eqz v15, :cond_ad

    .line 156
    .line 157
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v15

    .line 161
    check-cast v15, Lme/rerere/ai/ui/UIMessage;

    .line 162
    .line 163
    invoke-virtual {v15}, Lme/rerere/ai/ui/UIMessage;->getId()Lkotlin/uuid/Uuid;

    .line 164
    .line 165
    .line 166
    move-result-object v15

    .line 167
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v15

    .line 171
    if-eqz v15, :cond_96

    .line 172
    .line 173
    goto :goto_b1

    .line 174
    :cond_ad
    :goto_ad
    add-int/lit8 v12, v12, 0x1

    .line 175
    .line 176
    goto :goto_78

    .line 177
    :cond_b0
    move v12, v14

    .line 178
    :goto_b1
    if-ne v12, v14, :cond_b6

    .line 179
    .line 180
    move-object v2, v7

    .line 181
    goto/16 :goto_16d

    .line 182
    .line 183
    :cond_b6
    invoke-virtual {v10}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    new-instance v14, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    :goto_c3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v13

    .line 200
    if-eqz v13, :cond_142

    .line 201
    .line 202
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    add-int/lit8 v15, v11, 0x1

    .line 207
    .line 208
    if-ltz v11, :cond_13e

    .line 209
    .line 210
    move-object/from16 v16, v13

    .line 211
    .line 212
    check-cast v16, Lme/rerere/rikkahub/data/model/MessageNode;

    .line 213
    .line 214
    if-eq v11, v12, :cond_dc

    .line 215
    .line 216
    move/from16 p4, v6

    .line 217
    .line 218
    :goto_d9
    move-object/from16 v5, v16

    .line 219
    .line 220
    goto :goto_134

    .line 221
    :cond_dc
    invoke-virtual/range {v16 .. v16}, Lme/rerere/rikkahub/data/model/MessageNode;->getMessages()Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    new-instance v13, Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    :goto_e9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v17

    .line 238
    if-eqz v17, :cond_10a

    .line 239
    .line 240
    move/from16 p4, v6

    .line 241
    .line 242
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    move-object/from16 v17, v6

    .line 247
    .line 248
    check-cast v17, Lme/rerere/ai/ui/UIMessage;

    .line 249
    .line 250
    invoke-virtual/range {v17 .. v17}, Lme/rerere/ai/ui/UIMessage;->getId()Lkotlin/uuid/Uuid;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-nez v5, :cond_106

    .line 259
    .line 260
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    :cond_106
    move/from16 v6, p4

    .line 264
    .line 265
    const/4 v5, 0x2

    .line 266
    goto :goto_e9

    .line 267
    :cond_10a
    move/from16 p4, v6

    .line 268
    .line 269
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_114

    .line 274
    .line 275
    move-object v5, v7

    .line 276
    goto :goto_134

    .line 277
    :cond_114
    invoke-virtual/range {v16 .. v16}, Lme/rerere/rikkahub/data/model/MessageNode;->getSelectIndex()I

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    add-int/lit8 v6, v6, -0x1

    .line 286
    .line 287
    if-le v5, v6, :cond_123

    .line 288
    .line 289
    move/from16 v19, v6

    .line 290
    .line 291
    goto :goto_125

    .line 292
    :cond_123
    move/from16 v19, v5

    .line 293
    .line 294
    :goto_125
    const/16 v21, 0x9

    .line 295
    .line 296
    const/16 v22, 0x0

    .line 297
    .line 298
    const/16 v17, 0x0

    .line 299
    .line 300
    const/16 v20, 0x0

    .line 301
    .line 302
    move-object/from16 v18, v13

    .line 303
    .line 304
    invoke-static/range {v16 .. v22}, Lme/rerere/rikkahub/data/model/MessageNode;->copy$default(Lme/rerere/rikkahub/data/model/MessageNode;Lkotlin/uuid/Uuid;Ljava/util/List;IZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/MessageNode;

    .line 305
    .line 306
    .line 307
    move-result-object v16

    .line 308
    goto :goto_d9

    .line 309
    :goto_134
    if-eqz v5, :cond_139

    .line 310
    .line 311
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    :cond_139
    move/from16 v6, p4

    .line 315
    .line 316
    move v11, v15

    .line 317
    const/4 v5, 0x2

    .line 318
    goto :goto_c3

    .line 319
    :cond_13e
    invoke-static {}, Lpalettes/TonalPalette$Companion;->throwIndexOverflow()V

    .line 320
    .line 321
    .line 322
    throw v7

    .line 323
    :cond_142
    const v31, 0xffff7

    .line 324
    .line 325
    .line 326
    const/16 v32, 0x0

    .line 327
    .line 328
    const/4 v11, 0x0

    .line 329
    const/4 v12, 0x0

    .line 330
    const/4 v13, 0x0

    .line 331
    const/4 v15, 0x0

    .line 332
    const/16 v16, 0x0

    .line 333
    .line 334
    const/16 v17, 0x0

    .line 335
    .line 336
    const/16 v18, 0x0

    .line 337
    .line 338
    const/16 v19, 0x0

    .line 339
    .line 340
    const/16 v20, 0x0

    .line 341
    .line 342
    const/16 v21, 0x0

    .line 343
    .line 344
    const/16 v22, 0x0

    .line 345
    .line 346
    const/16 v23, 0x0

    .line 347
    .line 348
    const/16 v24, 0x0

    .line 349
    .line 350
    const/16 v25, 0x0

    .line 351
    .line 352
    const/16 v26, 0x0

    .line 353
    .line 354
    const/16 v27, 0x0

    .line 355
    .line 356
    const/16 v28, 0x0

    .line 357
    .line 358
    const/16 v29, 0x0

    .line 359
    .line 360
    const/16 v30, 0x0

    .line 361
    .line 362
    invoke-static/range {v10 .. v32}, Lme/rerere/rikkahub/data/model/Conversation;->copy$default(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/ConversationCompression;ZLjava/lang/Integer;Ljava/util/Set;ZIZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    :goto_16d
    if-nez v2, :cond_17e

    .line 367
    .line 368
    if-nez v4, :cond_174

    .line 369
    .line 370
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 371
    .line 372
    return-object v0

    .line 373
    :cond_174
    new-instance v0, Lme/rerere/rikkahub/web/NotFoundException;

    .line 374
    .line 375
    const-string v1, "Message not found"

    .line 376
    .line 377
    sget-object v2, Lio/ktor/http/HttpStatusCode;->NotFound:Lio/ktor/http/HttpStatusCode;

    .line 378
    .line 379
    invoke-direct {v0, v1, v2}, Lme/rerere/rikkahub/web/ApiException;-><init>(Ljava/lang/String;Lio/ktor/http/HttpStatusCode;)V

    .line 380
    .line 381
    .line 382
    throw v0

    .line 383
    :cond_17e
    invoke-virtual {v0, v1}, Lme/rerere/rikkahub/service/ChatService;->clearRecallHistory(Lkotlin/uuid/Uuid;)V

    .line 384
    .line 385
    .line 386
    iput-object v7, v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 387
    .line 388
    iput-object v7, v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;->L$1:Lkotlin/uuid/Uuid;

    .line 389
    .line 390
    iput-boolean v4, v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;->Z$0:Z

    .line 391
    .line 392
    const/4 v4, 0x2

    .line 393
    iput v4, v3, Lme/rerere/rikkahub/service/ChatService$deleteMessage$1;->label:I

    .line 394
    .line 395
    invoke-virtual {v0, v1, v2, v3}, Lme/rerere/rikkahub/service/ChatService;->saveConversation(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    if-ne v0, v8, :cond_191

    .line 400
    .line 401
    :goto_190
    return-object v8

    .line 402
    :cond_191
    return-object v0
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
.end method

.method public final editMessage(Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    instance-of v3, v2, Lme/rerere/rikkahub/service/ChatService$editMessage$1;

    .line 8
    .line 9
    if-eqz v3, :cond_19

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;

    .line 13
    .line 14
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_19

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->label:I

    .line 24
    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    new-instance v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lme/rerere/rikkahub/service/ChatService$editMessage$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_1e
    iget-object v2, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->label:I

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    const/4 v8, 0x0

    .line 39
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 40
    .line 41
    if-eqz v4, :cond_54

    .line 42
    .line 43
    if-eq v4, v7, :cond_47

    .line 44
    .line 45
    if-eq v4, v6, :cond_3a

    .line 46
    .line 47
    if-ne v4, v5, :cond_34

    .line 48
    .line 49
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :cond_34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v8

    .line 59
    :cond_3a
    iget-object v1, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$3:Lme/rerere/rikkahub/data/model/Conversation;

    .line 60
    .line 61
    iget-object v4, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$2:Ljava/util/List;

    .line 62
    .line 63
    iget-object v6, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$1:Lkotlin/uuid/Uuid;

    .line 64
    .line 65
    iget-object v10, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 66
    .line 67
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    move-object v11, v1

    .line 71
    goto :goto_98

    .line 72
    :cond_47
    iget-object v1, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$2:Ljava/util/List;

    .line 73
    .line 74
    iget-object v4, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$1:Lkotlin/uuid/Uuid;

    .line 75
    .line 76
    iget-object v10, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 77
    .line 78
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    move-object v2, v4

    .line 82
    move-object v4, v1

    .line 83
    move-object v1, v10

    .line 84
    goto :goto_73

    .line 85
    :cond_54
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static/range {p3 .. p3}, Lme/rerere/ai/ui/MessageKt;->isEmptyInputMessage(Ljava/util/List;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_5f

    .line 93
    .line 94
    goto/16 :goto_15a

    .line 95
    .line 96
    :cond_5f
    iput-object v1, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 97
    .line 98
    move-object/from16 v2, p2

    .line 99
    .line 100
    iput-object v2, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$1:Lkotlin/uuid/Uuid;

    .line 101
    .line 102
    move-object/from16 v4, p3

    .line 103
    .line 104
    iput-object v4, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$2:Ljava/util/List;

    .line 105
    .line 106
    iput v7, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->label:I

    .line 107
    .line 108
    invoke-virtual {v0, v1, v3}, Lme/rerere/rikkahub/service/ChatService;->ensureConversationFullyLoaded(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    if-ne v10, v9, :cond_73

    .line 113
    .line 114
    goto/16 :goto_19d

    .line 115
    .line 116
    :cond_73
    :goto_73
    invoke-virtual {v0, v1}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-virtual {v10}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    check-cast v10, Lme/rerere/rikkahub/data/model/Conversation;

    .line 125
    .line 126
    iget-object v11, v0, Lme/rerere/rikkahub/service/ChatService;->settingsStore:Lme/rerere/rikkahub/data/datastore/SettingsStore;

    .line 127
    .line 128
    iget-object v11, v11, Lme/rerere/rikkahub/data/datastore/SettingsStore;->settingsFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 129
    .line 130
    iput-object v1, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 131
    .line 132
    iput-object v2, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$1:Lkotlin/uuid/Uuid;

    .line 133
    .line 134
    iput-object v4, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$2:Ljava/util/List;

    .line 135
    .line 136
    iput-object v10, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$3:Lme/rerere/rikkahub/data/model/Conversation;

    .line 137
    .line 138
    iput v6, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->label:I

    .line 139
    .line 140
    invoke-static {v11, v3}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    if-ne v6, v9, :cond_93

    .line 145
    .line 146
    goto/16 :goto_19d

    .line 147
    .line 148
    :cond_93
    move-object v11, v6

    .line 149
    move-object v6, v2

    .line 150
    move-object v2, v11

    .line 151
    move-object v11, v10

    .line 152
    move-object v10, v1

    .line 153
    :goto_98
    check-cast v2, Lme/rerere/rikkahub/data/datastore/Settings;

    .line 154
    .line 155
    invoke-virtual {v11}, Lme/rerere/rikkahub/data/model/Conversation;->getAssistantId()Lkotlin/uuid/Uuid;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v2, v1}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->getAssistantById(Lme/rerere/rikkahub/data/datastore/Settings;Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/data/model/Assistant;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    if-nez v1, :cond_a8

    .line 164
    .line 165
    invoke-static {v2}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->getCurrentAssistant(Lme/rerere/rikkahub/data/datastore/Settings;)Lme/rerere/rikkahub/data/model/Assistant;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    :cond_a8
    invoke-static {v4, v1}, Lme/rerere/rikkahub/service/ChatService;->preprocessUserInputParts(Ljava/util/List;Lme/rerere/rikkahub/data/model/Assistant;)Ljava/util/ArrayList;

    .line 170
    .line 171
    .line 172
    move-result-object v15

    .line 173
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 174
    .line 175
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v11}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    new-instance v4, Ljava/util/ArrayList;

    .line 183
    .line 184
    const/16 v12, 0xa

    .line 185
    .line 186
    invoke-static {v2, v12}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    invoke-direct {v4, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .line 192
    .line 193
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    :goto_c4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v12

    .line 201
    if-eqz v12, :cond_156

    .line 202
    .line 203
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v12

    .line 207
    move-object/from16 v26, v12

    .line 208
    .line 209
    check-cast v26, Lme/rerere/rikkahub/data/model/MessageNode;

    .line 210
    .line 211
    invoke-virtual/range {v26 .. v26}, Lme/rerere/rikkahub/data/model/MessageNode;->getMessages()Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    if-eqz v12, :cond_e2

    .line 216
    .line 217
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    if-eqz v13, :cond_e2

    .line 222
    .line 223
    :cond_de
    move-object/from16 v16, v26

    .line 224
    .line 225
    goto/16 :goto_14e

    .line 226
    .line 227
    :cond_e2
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object v12

    .line 231
    :cond_e6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    .line 233
    .line 234
    move-result v13

    .line 235
    if-eqz v13, :cond_de

    .line 236
    .line 237
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    check-cast v13, Lme/rerere/ai/ui/UIMessage;

    .line 242
    .line 243
    invoke-virtual {v13}, Lme/rerere/ai/ui/UIMessage;->getId()Lkotlin/uuid/Uuid;

    .line 244
    .line 245
    .line 246
    move-result-object v13

    .line 247
    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v13

    .line 251
    if-eqz v13, :cond_e6

    .line 252
    .line 253
    iput-boolean v7, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 254
    .line 255
    invoke-virtual/range {v26 .. v26}, Lme/rerere/rikkahub/data/model/MessageNode;->getMessages()Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v12

    .line 259
    move-object v13, v12

    .line 260
    new-instance v12, Lme/rerere/ai/ui/UIMessage;

    .line 261
    .line 262
    invoke-virtual/range {v26 .. v26}, Lme/rerere/rikkahub/data/model/MessageNode;->getRole()Lme/rerere/ai/core/MessageRole;

    .line 263
    .line 264
    .line 265
    move-result-object v14

    .line 266
    const/16 v24, 0x7f9

    .line 267
    .line 268
    const/16 v25, 0x0

    .line 269
    .line 270
    move-object/from16 v16, v13

    .line 271
    .line 272
    const/4 v13, 0x0

    .line 273
    move-object/from16 v17, v16

    .line 274
    .line 275
    const/16 v16, 0x0

    .line 276
    .line 277
    move-object/from16 v18, v17

    .line 278
    .line 279
    const/16 v17, 0x0

    .line 280
    .line 281
    move-object/from16 v19, v18

    .line 282
    .line 283
    const/16 v18, 0x0

    .line 284
    .line 285
    move-object/from16 v20, v19

    .line 286
    .line 287
    const/16 v19, 0x0

    .line 288
    .line 289
    move-object/from16 v21, v20

    .line 290
    .line 291
    const/16 v20, 0x0

    .line 292
    .line 293
    move-object/from16 v22, v21

    .line 294
    .line 295
    const/16 v21, 0x0

    .line 296
    .line 297
    move-object/from16 v23, v22

    .line 298
    .line 299
    const/16 v22, 0x0

    .line 300
    .line 301
    move-object/from16 v27, v23

    .line 302
    .line 303
    const/16 v23, 0x0

    .line 304
    .line 305
    move-object/from16 v7, v27

    .line 306
    .line 307
    invoke-direct/range {v12 .. v25}, Lme/rerere/ai/ui/UIMessage;-><init>(Lkotlin/uuid/Uuid;Lme/rerere/ai/core/MessageRole;Ljava/util/List;Ljava/util/List;Lkotlinx/datetime/LocalDateTime;Lkotlinx/datetime/LocalDateTime;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Lme/rerere/ai/core/TokenUsage;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 308
    .line 309
    .line 310
    invoke-static {v7, v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 311
    .line 312
    .line 313
    move-result-object v18

    .line 314
    invoke-virtual/range {v26 .. v26}, Lme/rerere/rikkahub/data/model/MessageNode;->getMessages()Ljava/util/List;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 319
    .line 320
    .line 321
    move-result v19

    .line 322
    const/16 v21, 0x9

    .line 323
    .line 324
    const/16 v20, 0x0

    .line 325
    .line 326
    move-object/from16 v16, v26

    .line 327
    .line 328
    invoke-static/range {v16 .. v22}, Lme/rerere/rikkahub/data/model/MessageNode;->copy$default(Lme/rerere/rikkahub/data/model/MessageNode;Lkotlin/uuid/Uuid;Ljava/util/List;IZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/MessageNode;

    .line 329
    .line 330
    .line 331
    move-result-object v26

    .line 332
    move-object/from16 v7, v26

    .line 333
    .line 334
    goto :goto_150

    .line 335
    :goto_14e
    move-object/from16 v7, v16

    .line 336
    .line 337
    :goto_150
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    const/4 v7, 0x1

    .line 341
    goto/16 :goto_c4

    .line 342
    .line 343
    :cond_156
    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 344
    .line 345
    if-nez v1, :cond_15d

    .line 346
    .line 347
    :goto_15a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 348
    .line 349
    return-object v0

    .line 350
    :cond_15d
    invoke-virtual {v0, v10}, Lme/rerere/rikkahub/service/ChatService;->clearRecallHistory(Lkotlin/uuid/Uuid;)V

    .line 351
    .line 352
    .line 353
    const v32, 0xffff7

    .line 354
    .line 355
    .line 356
    const/16 v33, 0x0

    .line 357
    .line 358
    const/4 v12, 0x0

    .line 359
    const/4 v13, 0x0

    .line 360
    const/4 v14, 0x0

    .line 361
    const/16 v16, 0x0

    .line 362
    .line 363
    const/16 v17, 0x0

    .line 364
    .line 365
    const/16 v18, 0x0

    .line 366
    .line 367
    const/16 v19, 0x0

    .line 368
    .line 369
    const/16 v20, 0x0

    .line 370
    .line 371
    const/16 v21, 0x0

    .line 372
    .line 373
    const/16 v22, 0x0

    .line 374
    .line 375
    const/16 v23, 0x0

    .line 376
    .line 377
    const/16 v24, 0x0

    .line 378
    .line 379
    const/16 v25, 0x0

    .line 380
    .line 381
    const/16 v26, 0x0

    .line 382
    .line 383
    const/16 v27, 0x0

    .line 384
    .line 385
    const/16 v28, 0x0

    .line 386
    .line 387
    const/16 v29, 0x0

    .line 388
    .line 389
    const/16 v30, 0x0

    .line 390
    .line 391
    const/16 v31, 0x0

    .line 392
    .line 393
    move-object v15, v4

    .line 394
    invoke-static/range {v11 .. v33}, Lme/rerere/rikkahub/data/model/Conversation;->copy$default(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/ConversationCompression;ZLjava/lang/Integer;Ljava/util/Set;ZIZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    iput-object v8, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 399
    .line 400
    iput-object v8, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$1:Lkotlin/uuid/Uuid;

    .line 401
    .line 402
    iput-object v8, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$2:Ljava/util/List;

    .line 403
    .line 404
    iput-object v8, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->L$3:Lme/rerere/rikkahub/data/model/Conversation;

    .line 405
    .line 406
    iput v5, v3, Lme/rerere/rikkahub/service/ChatService$editMessage$1;->label:I

    .line 407
    .line 408
    invoke-virtual {v0, v10, v1, v3}, Lme/rerere/rikkahub/service/ChatService;->saveConversation(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    if-ne v0, v9, :cond_19e

    .line 413
    .line 414
    :goto_19d
    return-object v9

    .line 415
    :cond_19e
    return-object v0
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
.end method

.method public final ensureConversationFullyLoaded(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p2, Lme/rerere/rikkahub/service/ChatService$ensureConversationFullyLoaded$1;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lme/rerere/rikkahub/service/ChatService$ensureConversationFullyLoaded$1;

    .line 7
    .line 8
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$ensureConversationFullyLoaded$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_13

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lme/rerere/rikkahub/service/ChatService$ensureConversationFullyLoaded$1;->label:I

    .line 18
    .line 19
    goto :goto_18

    .line 20
    :cond_13
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$ensureConversationFullyLoaded$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lme/rerere/rikkahub/service/ChatService$ensureConversationFullyLoaded$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_18
    iget-object p2, v0, Lme/rerere/rikkahub/service/ChatService$ensureConversationFullyLoaded$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$ensureConversationFullyLoaded$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-eqz v1, :cond_37

    .line 35
    .line 36
    if-eq v1, v3, :cond_31

    .line 37
    .line 38
    if-ne v1, v2, :cond_2b

    .line 39
    .line 40
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object p2

    .line 44
    :cond_2b
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v4

    .line 50
    :cond_31
    iget-object p1, v0, Lme/rerere/rikkahub/service/ChatService$ensureConversationFullyLoaded$1;->L$0:Lkotlin/uuid/Uuid;

    .line 51
    .line 52
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_63

    .line 56
    :cond_37
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lme/rerere/rikkahub/service/ChatService;->conversationPagers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Lme/rerere/rikkahub/data/repository/ConversationRepository$ConversationPager;

    .line 66
    .line 67
    if-nez p2, :cond_45

    .line 68
    .line 69
    goto :goto_55

    .line 70
    :cond_45
    invoke-virtual {p0, p1}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lme/rerere/rikkahub/data/model/Conversation;

    .line 79
    .line 80
    invoke-virtual {v1}, Lme/rerere/rikkahub/data/model/Conversation;->getNodesFullyLoaded()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_58

    .line 85
    .line 86
    :goto_55
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p0

    .line 89
    :cond_58
    iput-object p1, v0, Lme/rerere/rikkahub/service/ChatService$ensureConversationFullyLoaded$1;->L$0:Lkotlin/uuid/Uuid;

    .line 90
    .line 91
    iput v3, v0, Lme/rerere/rikkahub/service/ChatService$ensureConversationFullyLoaded$1;->label:I

    .line 92
    .line 93
    invoke-virtual {p2, v0}, Lme/rerere/rikkahub/data/repository/ConversationRepository$ConversationPager;->loadAll(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    if-ne p2, v5, :cond_63

    .line 98
    .line 99
    goto :goto_72

    .line 100
    :cond_63
    :goto_63
    check-cast p2, Lme/rerere/rikkahub/data/model/Conversation;

    .line 101
    .line 102
    invoke-virtual {p0, p2, p1}, Lme/rerere/rikkahub/service/ChatService;->updateConversation(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;)V

    .line 103
    .line 104
    .line 105
    iput-object v4, v0, Lme/rerere/rikkahub/service/ChatService$ensureConversationFullyLoaded$1;->L$0:Lkotlin/uuid/Uuid;

    .line 106
    .line 107
    iput v2, v0, Lme/rerere/rikkahub/service/ChatService$ensureConversationFullyLoaded$1;->label:I

    .line 108
    .line 109
    invoke-virtual {p0, p1, p2, v0}, Lme/rerere/rikkahub/service/ChatService;->finalizeLoadedConversation(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    if-ne p0, v5, :cond_73

    .line 114
    .line 115
    :goto_72
    return-object v5

    .line 116
    :cond_73
    return-object p0
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
.end method

.method public final finalizeLoadedConversation(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Lme/rerere/rikkahub/data/model/Conversation;->getNodesFullyLoaded()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_a

    .line 8
    .line 9
    goto/16 :goto_c6

    .line 10
    .line 11
    :cond_a
    invoke-static/range {p2 .. p2}, Lme/rerere/rikkahub/service/ChatService;->finalizeInterruptedAssistantMessages(Lme/rerere/rikkahub/data/model/Conversation;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v1, v0, Lme/rerere/rikkahub/service/ChatService;->sideEffectRollbacker$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 16
    .line 17
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lme/rerere/rikkahub/service/SideEffectRollbacker;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v6, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_77

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    move-object v4, v3

    .line 53
    check-cast v4, Lme/rerere/rikkahub/data/model/MessageNode;

    .line 54
    .line 55
    invoke-virtual {v4}, Lme/rerere/rikkahub/data/model/MessageNode;->getCurrentMessage()Lme/rerere/ai/ui/UIMessage;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Lme/rerere/ai/ui/UIMessage;->getRole()Lme/rerere/ai/core/MessageRole;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    sget-object v7, Lme/rerere/ai/core/MessageRole;->SYSTEM:Lme/rerere/ai/core/MessageRole;

    .line 64
    .line 65
    if-ne v5, v7, :cond_73

    .line 66
    .line 67
    invoke-virtual {v4}, Lme/rerere/ai/ui/UIMessage;->getParts()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-eqz v4, :cond_4f

    .line 72
    .line 73
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_4f

    .line 78
    .line 79
    goto :goto_73

    .line 80
    :cond_4f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    :cond_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_73

    .line 89
    .line 90
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Lme/rerere/ai/ui/UIMessagePart;

    .line 95
    .line 96
    instance-of v7, v5, Lme/rerere/ai/ui/UIMessagePart$Text;

    .line 97
    .line 98
    if-eqz v7, :cond_53

    .line 99
    .line 100
    check-cast v5, Lme/rerere/ai/ui/UIMessagePart$Text;

    .line 101
    .line 102
    invoke-virtual {v5}, Lme/rerere/ai/ui/UIMessagePart$Text;->getText()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const/4 v7, 0x0

    .line 107
    const-string v8, "[\u64a4\u56de] "

    .line 108
    .line 109
    invoke-static {v5, v8, v7}, Lkotlin/text/StringsKt___StringsJvmKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_53

    .line 114
    .line 115
    goto :goto_29

    .line 116
    :cond_73
    :goto_73
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_29

    .line 120
    :cond_77
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-ne v1, v3, :cond_88

    .line 133
    .line 134
    :goto_85
    move-object/from16 v1, p1

    .line 135
    .line 136
    goto :goto_ac

    .line 137
    :cond_88
    const v23, 0xffff7

    .line 138
    .line 139
    .line 140
    const/16 v24, 0x0

    .line 141
    .line 142
    const/4 v3, 0x0

    .line 143
    const/4 v4, 0x0

    .line 144
    const/4 v5, 0x0

    .line 145
    const/4 v7, 0x0

    .line 146
    const/4 v8, 0x0

    .line 147
    const/4 v9, 0x0

    .line 148
    const/4 v10, 0x0

    .line 149
    const/4 v11, 0x0

    .line 150
    const/4 v12, 0x0

    .line 151
    const/4 v13, 0x0

    .line 152
    const/4 v14, 0x0

    .line 153
    const/4 v15, 0x0

    .line 154
    const/16 v16, 0x0

    .line 155
    .line 156
    const/16 v17, 0x0

    .line 157
    .line 158
    const/16 v18, 0x0

    .line 159
    .line 160
    const/16 v19, 0x0

    .line 161
    .line 162
    const/16 v20, 0x0

    .line 163
    .line 164
    const/16 v21, 0x0

    .line 165
    .line 166
    const/16 v22, 0x0

    .line 167
    .line 168
    invoke-static/range {v2 .. v24}, Lme/rerere/rikkahub/data/model/Conversation;->copy$default(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/ConversationCompression;ZLjava/lang/Integer;Ljava/util/Set;ZIZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    goto :goto_85

    .line 173
    :goto_ac
    invoke-virtual {v0, v2, v1}, Lme/rerere/rikkahub/service/ChatService;->updateConversation(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual/range {p2 .. p2}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_c6

    .line 189
    .line 190
    iget-object v0, v0, Lme/rerere/rikkahub/service/ChatService;->conversationRepo:Lme/rerere/rikkahub/data/repository/ConversationRepository;

    .line 191
    .line 192
    move-object/from16 v1, p3

    .line 193
    .line 194
    invoke-virtual {v0, v2, v1}, Lme/rerere/rikkahub/data/repository/ConversationRepository;->updateConversation(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    return-object v0

    .line 199
    :cond_c6
    :goto_c6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 200
    .line 201
    return-object v0
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
.end method

.method public final finishInterruptedPendingTools(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 27

    .line 1
    invoke-virtual/range {p0 .. p1}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lme/rerere/rikkahub/data/model/Conversation;

    .line 11
    .line 12
    invoke-virtual {v1}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v2, v0

    .line 21
    check-cast v2, Lme/rerere/rikkahub/data/model/MessageNode;

    .line 22
    .line 23
    if-nez v2, :cond_1a

    .line 24
    .line 25
    goto/16 :goto_9f

    .line 26
    .line 27
    :cond_1a
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/model/MessageNode;->getCurrentMessage()Lme/rerere/ai/ui/UIMessage;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    new-instance v4, Lme/rerere/rikkahub/service/ChatService$finishInterruptedPendingTools$updatedMessage$1;

    .line 32
    .line 33
    const-string v9, "cancelToolByUser(Lme/rerere/ai/ui/UIMessagePart$Tool;)Lme/rerere/ai/ui/UIMessagePart$Tool;"

    .line 34
    .line 35
    const/4 v10, 0x0

    .line 36
    const/4 v5, 0x1

    .line 37
    const-class v7, Lme/rerere/rikkahub/service/ChatService;

    .line 38
    .line 39
    const-string v8, "cancelToolByUser"

    .line 40
    .line 41
    move-object/from16 v6, p0

    .line 42
    .line 43
    invoke-direct/range {v4 .. v10}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lme/rerere/ai/ui/UIMessage;->getParts()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v6, Ljava/util/ArrayList;

    .line 54
    .line 55
    const/16 v5, 0xa

    .line 56
    .line 57
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_66

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Lme/rerere/ai/ui/UIMessagePart;

    .line 79
    .line 80
    instance-of v8, v7, Lme/rerere/ai/ui/UIMessagePart$Tool;

    .line 81
    .line 82
    if-eqz v8, :cond_62

    .line 83
    .line 84
    move-object v8, v7

    .line 85
    check-cast v8, Lme/rerere/ai/ui/UIMessagePart$Tool;

    .line 86
    .line 87
    invoke-virtual {v8}, Lme/rerere/ai/ui/UIMessagePart$Tool;->isExecuted()Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-nez v8, :cond_62

    .line 92
    .line 93
    invoke-virtual {v4, v7}, Lme/rerere/rikkahub/service/ChatService$finishInterruptedPendingTools$updatedMessage$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    check-cast v7, Lme/rerere/ai/ui/UIMessagePart;

    .line 98
    .line 99
    :cond_62
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_43

    .line 103
    :cond_66
    invoke-virtual {v3}, Lme/rerere/ai/ui/UIMessage;->getParts()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_73

    .line 112
    .line 113
    move-object v4, v3

    .line 114
    move v0, v5

    .line 115
    goto :goto_99

    .line 116
    :cond_73
    sget-object v0, Lkotlin/time/InstantJvmKt;->systemClock:Lkotlin/time/Clock;

    .line 117
    .line 118
    invoke-interface {v0}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    sget v4, Lkotlinx/datetime/TimeZone;->$r8$clinit:I

    .line 123
    .line 124
    invoke-static {}, Lkotlinx/datetime/TimeZone$Companion;->currentSystemDefault()Lkotlinx/datetime/TimeZone;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-static {v0, v4}, Lkotlinx/datetime/TimeZoneKt__TimeZoneJvmKt;->toLocalDateTime(Lkotlin/time/Instant;Lkotlinx/datetime/TimeZone;)Lkotlinx/datetime/LocalDateTime;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    const/16 v15, 0x7db

    .line 133
    .line 134
    const/16 v16, 0x0

    .line 135
    .line 136
    const/4 v4, 0x0

    .line 137
    move v0, v5

    .line 138
    const/4 v5, 0x0

    .line 139
    const/4 v7, 0x0

    .line 140
    const/4 v8, 0x0

    .line 141
    const/4 v10, 0x0

    .line 142
    const/4 v11, 0x0

    .line 143
    const/4 v12, 0x0

    .line 144
    const/4 v13, 0x0

    .line 145
    const/4 v14, 0x0

    .line 146
    invoke-static/range {v3 .. v16}, Lme/rerere/ai/ui/UIMessage;->copy$default(Lme/rerere/ai/ui/UIMessage;Lkotlin/uuid/Uuid;Lme/rerere/ai/core/MessageRole;Ljava/util/List;Ljava/util/List;Lkotlinx/datetime/LocalDateTime;Lkotlinx/datetime/LocalDateTime;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Lme/rerere/ai/core/TokenUsage;Ljava/lang/String;ZILjava/lang/Object;)Lme/rerere/ai/ui/UIMessage;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-static {v4}, Lme/rerere/ai/ui/MessageKt;->finishReasoning(Lme/rerere/ai/ui/UIMessage;)Lme/rerere/ai/ui/UIMessage;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    :goto_99
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_a2

    .line 159
    .line 160
    :goto_9f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 161
    .line 162
    return-object v0

    .line 163
    :cond_a2
    invoke-virtual {v1}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    const/4 v6, 0x1

    .line 168
    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->dropLast(ILjava/util/List;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/model/MessageNode;->getMessages()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    move-object v6, v4

    .line 177
    new-instance v4, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 184
    .line 185
    .line 186
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    :goto_bd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-eqz v5, :cond_dc

    .line 195
    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    check-cast v5, Lme/rerere/ai/ui/UIMessage;

    .line 201
    .line 202
    invoke-virtual {v5}, Lme/rerere/ai/ui/UIMessage;->getId()Lkotlin/uuid/Uuid;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-virtual {v3}, Lme/rerere/ai/ui/UIMessage;->getId()Lkotlin/uuid/Uuid;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-eqz v7, :cond_d8

    .line 215
    .line 216
    move-object v5, v6

    .line 217
    :cond_d8
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_bd

    .line 221
    :cond_dc
    const/16 v7, 0xd

    .line 222
    .line 223
    const/4 v8, 0x0

    .line 224
    const/4 v3, 0x0

    .line 225
    const/4 v5, 0x0

    .line 226
    const/4 v6, 0x0

    .line 227
    invoke-static/range {v2 .. v8}, Lme/rerere/rikkahub/data/model/MessageNode;->copy$default(Lme/rerere/rikkahub/data/model/MessageNode;Lkotlin/uuid/Uuid;Ljava/util/List;IZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/MessageNode;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v9, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    const v22, 0xffff7

    .line 236
    .line 237
    .line 238
    const/16 v23, 0x0

    .line 239
    .line 240
    const/4 v2, 0x0

    .line 241
    const/4 v4, 0x0

    .line 242
    const/4 v6, 0x0

    .line 243
    const/4 v7, 0x0

    .line 244
    const/4 v9, 0x0

    .line 245
    const/4 v10, 0x0

    .line 246
    const/4 v11, 0x0

    .line 247
    const/4 v12, 0x0

    .line 248
    const/4 v13, 0x0

    .line 249
    const/4 v14, 0x0

    .line 250
    const/4 v15, 0x0

    .line 251
    const/16 v16, 0x0

    .line 252
    .line 253
    const/16 v17, 0x0

    .line 254
    .line 255
    const/16 v18, 0x0

    .line 256
    .line 257
    const/16 v19, 0x0

    .line 258
    .line 259
    const/16 v20, 0x0

    .line 260
    .line 261
    const/16 v21, 0x0

    .line 262
    .line 263
    invoke-static/range {v1 .. v23}, Lme/rerere/rikkahub/data/model/Conversation;->copy$default(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/ConversationCompression;ZLjava/lang/Integer;Ljava/util/Set;ZIZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    move-object/from16 v6, p0

    .line 268
    .line 269
    move-object/from16 v1, p1

    .line 270
    .line 271
    move-object/from16 v2, p2

    .line 272
    .line 273
    invoke-virtual {v6, v1, v0, v2}, Lme/rerere/rikkahub/service/ChatService;->saveConversation(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    return-object v0
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
.end method

.method public final forkConversationAtMessage(Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 1
    instance-of v0, p3, Lme/rerere/rikkahub/service/ChatService$forkConversationAtMessage$1;

    .line 2
    .line 3
    if-eqz v0, :cond_14

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lme/rerere/rikkahub/service/ChatService$forkConversationAtMessage$1;

    .line 7
    .line 8
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$forkConversationAtMessage$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_14

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lme/rerere/rikkahub/service/ChatService$forkConversationAtMessage$1;->label:I

    .line 18
    .line 19
    :goto_12
    move-object v7, v0

    .line 20
    goto :goto_1a

    .line 21
    :cond_14
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$forkConversationAtMessage$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p3}, Lme/rerere/rikkahub/service/ChatService$forkConversationAtMessage$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_12

    .line 27
    :goto_1a
    iget-object p3, v7, Lme/rerere/rikkahub/service/ChatService$forkConversationAtMessage$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget v0, v7, Lme/rerere/rikkahub/service/ChatService$forkConversationAtMessage$1;->label:I

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 35
    .line 36
    if-eqz v0, :cond_3b

    .line 37
    .line 38
    if-eq v0, v2, :cond_33

    .line 39
    .line 40
    if-ne v0, v1, :cond_2d

    .line 41
    .line 42
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object p3

    .line 46
    :cond_2d
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v3

    .line 52
    :cond_33
    iget-object p2, v7, Lme/rerere/rikkahub/service/ChatService$forkConversationAtMessage$1;->L$1:Lkotlin/uuid/Uuid;

    .line 53
    .line 54
    iget-object p1, v7, Lme/rerere/rikkahub/service/ChatService$forkConversationAtMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 55
    .line 56
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_4b

    .line 60
    :cond_3b
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iput-object p1, v7, Lme/rerere/rikkahub/service/ChatService$forkConversationAtMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 64
    .line 65
    iput-object p2, v7, Lme/rerere/rikkahub/service/ChatService$forkConversationAtMessage$1;->L$1:Lkotlin/uuid/Uuid;

    .line 66
    .line 67
    iput v2, v7, Lme/rerere/rikkahub/service/ChatService$forkConversationAtMessage$1;->label:I

    .line 68
    .line 69
    invoke-virtual {p0, p1, v7}, Lme/rerere/rikkahub/service/ChatService;->ensureConversationFullyLoaded(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    if-ne p3, v8, :cond_4b

    .line 74
    .line 75
    goto :goto_7c

    .line 76
    :cond_4b
    :goto_4b
    invoke-virtual {p0, p1}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lme/rerere/rikkahub/data/model/Conversation;

    .line 85
    .line 86
    iget-object p3, p0, Lme/rerere/rikkahub/service/ChatService;->branchService$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 87
    .line 88
    invoke-virtual {p3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    check-cast p3, Lme/rerere/rikkahub/service/ConversationBranchService;

    .line 93
    .line 94
    new-instance v4, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda1;

    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    invoke-direct {v4, v0}, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 98
    .line 99
    .line 100
    new-instance v5, Lme/rerere/rikkahub/service/ChatService$1;

    .line 101
    .line 102
    invoke-direct {v5, p0, v3, v2}, Lme/rerere/rikkahub/service/ChatService$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/Continuation;I)V

    .line 103
    .line 104
    .line 105
    new-instance v6, Lme/rerere/rikkahub/service/ChatService$1;

    .line 106
    .line 107
    invoke-direct {v6, p0, v3, v1}, Lme/rerere/rikkahub/service/ChatService$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/Continuation;I)V

    .line 108
    .line 109
    .line 110
    iput-object v3, v7, Lme/rerere/rikkahub/service/ChatService$forkConversationAtMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 111
    .line 112
    iput-object v3, v7, Lme/rerere/rikkahub/service/ChatService$forkConversationAtMessage$1;->L$1:Lkotlin/uuid/Uuid;

    .line 113
    .line 114
    iput v1, v7, Lme/rerere/rikkahub/service/ChatService$forkConversationAtMessage$1;->label:I

    .line 115
    .line 116
    move-object v2, p1

    .line 117
    move-object v3, p2

    .line 118
    move-object v1, p3

    .line 119
    invoke-virtual/range {v1 .. v7}, Lme/rerere/rikkahub/service/ConversationBranchService;->forkConversationAtMessage(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda1;Lme/rerere/rikkahub/service/ChatService$1;Lme/rerere/rikkahub/service/ChatService$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    if-ne p0, v8, :cond_7d

    .line 124
    .line 125
    :goto_7c
    return-object v8

    .line 126
    :cond_7d
    return-object p0
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
.end method

.method public final generateSuggestion-0E7RQCE(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p3, Lme/rerere/rikkahub/service/ChatService$generateSuggestion$1;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lme/rerere/rikkahub/service/ChatService$generateSuggestion$1;

    .line 7
    .line 8
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$generateSuggestion$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_13

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lme/rerere/rikkahub/service/ChatService$generateSuggestion$1;->label:I

    .line 18
    .line 19
    goto :goto_18

    .line 20
    :cond_13
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$generateSuggestion$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lme/rerere/rikkahub/service/ChatService$generateSuggestion$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_18
    iget-object p3, v0, Lme/rerere/rikkahub/service/ChatService$generateSuggestion$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$generateSuggestion$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2c

    .line 32
    .line 33
    if-ne v1, v2, :cond_26

    .line 34
    .line 35
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_43

    .line 39
    :cond_26
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v3

    .line 45
    :cond_2c
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object p3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 49
    .line 50
    sget-object p3, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 51
    .line 52
    new-instance v1, Lme/rerere/rikkahub/service/ChatService$generateSuggestion$2;

    .line 53
    .line 54
    invoke-direct {v1, p0, p1, p2, v3}, Lme/rerere/rikkahub/service/ChatService$generateSuggestion$2;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    iput v2, v0, Lme/rerere/rikkahub/service/ChatService$generateSuggestion$1;->label:I

    .line 58
    .line 59
    invoke-static {p3, v1, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 64
    .line 65
    if-ne p3, p0, :cond_43

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_43
    :goto_43
    check-cast p3, Lkotlin/Result;

    .line 69
    .line 70
    iget-object p0, p3, Lkotlin/Result;->value:Ljava/lang/Object;

    .line 71
    .line 72
    return-object p0
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
.end method

.method public final generateTitle(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;ZLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .registers 12

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 4
    .line 5
    new-instance v1, Lme/rerere/rikkahub/service/ChatService$generateTitle$2;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v4, p0

    .line 9
    move-object v5, p1

    .line 10
    move-object v3, p2

    .line 11
    move v2, p3

    .line 12
    invoke-direct/range {v1 .. v6}, Lme/rerere/rikkahub/service/ChatService$generateTitle$2;-><init>(ZLme/rerere/rikkahub/data/model/Conversation;Lme/rerere/rikkahub/service/ChatService;Lkotlin/uuid/Uuid;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 20
    .line 21
    if-ne p0, p1, :cond_17

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_17
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
.end method

.method public final getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lme/rerere/rikkahub/service/ChatPool;->getOrCreateSession(Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/service/ConversationSession;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object p0, p0, Lme/rerere/rikkahub/service/ConversationSession;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 14
    .line 15
    return-object p0
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
.end method

.method public final getConversationJobs()Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;
    .registers 4

    .line 1
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 2
    .line 3
    iget-object v0, p0, Lme/rerere/rikkahub/service/ChatPool;->_sessionsVersion:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 4
    .line 5
    new-instance v1, Lme/rerere/rikkahub/service/ChatPool$getConversationJobs$$inlined$flatMapLatest$1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2, p0}, Lme/rerere/rikkahub/service/ChatPool$getConversationJobs$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lme/rerere/rikkahub/service/ChatPool;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt__MergeKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final getGenerationJobStateFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/Flow;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatPool;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lme/rerere/rikkahub/service/ConversationSession;

    .line 16
    .line 17
    if-eqz p0, :cond_15

    .line 18
    .line 19
    iget-object p0, p0, Lme/rerere/rikkahub/service/ConversationSession;->generationJob:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_15
    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    .line 23
    .line 24
    const/4 p1, 0x7

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    return-object p0
    .line 30
.end method

.method public final handleMessageComplete(Lkotlin/uuid/Uuid;Lkotlin/ranges/IntRange;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    instance-of v2, v0, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;

    .line 6
    .line 7
    if-eqz v2, :cond_18

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;

    .line 11
    .line 12
    iget v3, v2, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_18

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->label:I

    .line 22
    .line 23
    :goto_16
    move-object v15, v2

    .line 24
    goto :goto_1e

    .line 25
    :cond_18
    new-instance v2, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;

    .line 26
    .line 27
    invoke-direct {v2, v1, v0}, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 28
    .line 29
    .line 30
    goto :goto_16

    .line 31
    :goto_1e
    iget-object v0, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v2, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->label:I

    .line 34
    .line 35
    const/16 v16, 0x0

    .line 36
    .line 37
    iget-object v3, v1, Lme/rerere/rikkahub/service/ChatService;->context:Landroid/app/Application;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    const/4 v5, 0x2

    .line 41
    const/4 v6, 0x1

    .line 42
    const/4 v7, 0x0

    .line 43
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 44
    .line 45
    if-eqz v2, :cond_70

    .line 46
    .line 47
    if-eq v2, v6, :cond_64

    .line 48
    .line 49
    if-eq v2, v5, :cond_3e

    .line 50
    .line 51
    if-ne v2, v4, :cond_38

    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_38
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v7

    .line 63
    :cond_3e
    iget v2, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->I$1:I

    .line 64
    .line 65
    iget v5, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->I$0:I

    .line 66
    .line 67
    iget-boolean v9, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->Z$0:Z

    .line 68
    .line 69
    iget-object v10, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$8:Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 70
    .line 71
    iget-object v11, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$7:Lkotlin/jvm/internal/Ref$LongRef;

    .line 72
    .line 73
    iget-object v12, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$6:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v13, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$5:Lme/rerere/ai/provider/Model;

    .line 76
    .line 77
    iget-object v14, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$4:Lme/rerere/rikkahub/data/model/Assistant;

    .line 78
    .line 79
    iget-object v4, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$2:Lme/rerere/rikkahub/data/datastore/Settings;

    .line 80
    .line 81
    iget-object v7, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$1:Lkotlin/ranges/ClosedRange;

    .line 82
    .line 83
    iget-object v6, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$0:Lkotlin/uuid/Uuid;

    .line 84
    .line 85
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    move/from16 v19, v2

    .line 89
    .line 90
    move-object/from16 v20, v3

    .line 91
    .line 92
    move-object v3, v4

    .line 93
    move v4, v5

    .line 94
    move-object v2, v6

    .line 95
    move-object v6, v7

    .line 96
    move-object v5, v13

    .line 97
    move-object v7, v14

    .line 98
    move-object v13, v11

    .line 99
    goto/16 :goto_164

    .line 100
    .line 101
    :cond_64
    iget-object v2, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$1:Lkotlin/ranges/ClosedRange;

    .line 102
    .line 103
    iget-object v4, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$0:Lkotlin/uuid/Uuid;

    .line 104
    .line 105
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    move-object v6, v4

    .line 109
    move-object v4, v2

    .line 110
    move-object v2, v6

    .line 111
    const/4 v6, 0x1

    .line 112
    goto :goto_8a

    .line 113
    :cond_70
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, v1, Lme/rerere/rikkahub/service/ChatService;->settingsStore:Lme/rerere/rikkahub/data/datastore/SettingsStore;

    .line 117
    .line 118
    iget-object v0, v0, Lme/rerere/rikkahub/data/datastore/SettingsStore;->settingsFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 119
    .line 120
    move-object/from16 v2, p1

    .line 121
    .line 122
    iput-object v2, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$0:Lkotlin/uuid/Uuid;

    .line 123
    .line 124
    move-object/from16 v4, p2

    .line 125
    .line 126
    iput-object v4, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$1:Lkotlin/ranges/ClosedRange;

    .line 127
    .line 128
    const/4 v6, 0x1

    .line 129
    iput v6, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->label:I

    .line 130
    .line 131
    invoke-static {v0, v15}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-ne v0, v8, :cond_8a

    .line 136
    .line 137
    goto/16 :goto_228

    .line 138
    .line 139
    :cond_8a
    :goto_8a
    move-object v7, v0

    .line 140
    check-cast v7, Lme/rerere/rikkahub/data/datastore/Settings;

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lme/rerere/rikkahub/data/model/Conversation;

    .line 151
    .line 152
    invoke-virtual {v0}, Lme/rerere/rikkahub/data/model/Conversation;->getAssistantId()Lkotlin/uuid/Uuid;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v7, v0}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->getAssistantById(Lme/rerere/rikkahub/data/datastore/Settings;Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/data/model/Assistant;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    if-nez v0, :cond_a5

    .line 161
    .line 162
    invoke-static {v7}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->getCurrentAssistant(Lme/rerere/rikkahub/data/datastore/Settings;)Lme/rerere/rikkahub/data/model/Assistant;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    :cond_a5
    move-object v14, v0

    .line 167
    invoke-virtual {v14}, Lme/rerere/rikkahub/data/model/Assistant;->getChatModelId()Lkotlin/uuid/Uuid;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-nez v0, :cond_b0

    .line 172
    .line 173
    invoke-virtual {v7}, Lme/rerere/rikkahub/data/datastore/Settings;->getChatModelId()Lkotlin/uuid/Uuid;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    :cond_b0
    const/4 v9, 0x0

    .line 178
    invoke-static {v7, v0, v9}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->findModelById(Lme/rerere/rikkahub/data/datastore/Settings;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)Lme/rerere/ai/provider/Model;

    .line 179
    .line 180
    .line 181
    move-result-object v13

    .line 182
    if-nez v13, :cond_ba

    .line 183
    .line 184
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 185
    .line 186
    return-object v0

    .line 187
    :cond_ba
    invoke-virtual {v14}, Lme/rerere/rikkahub/data/model/Assistant;->getUseAssistantAvatar()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_d5

    .line 192
    .line 193
    invoke-virtual {v14}, Lme/rerere/rikkahub/data/model/Assistant;->getName()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    if-nez v10, :cond_d3

    .line 202
    .line 203
    sget v0, Lme/rerere/rikkahub/R$string;->assistant_page_default_assistant:I

    .line 204
    .line 205
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    :cond_d3
    :goto_d3
    move-object v12, v0

    .line 213
    goto :goto_da

    .line 214
    :cond_d5
    invoke-virtual {v13}, Lme/rerere/ai/provider/Model;->getDisplayName()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    goto :goto_d3

    .line 219
    :goto_da
    sget-object v0, Lme/rerere/rikkahub/service/ChatServiceKt;->DEEPSEEK_MODEL_RE:Lkotlin/text/Regex;

    .line 220
    .line 221
    invoke-virtual {v14}, Lme/rerere/rikkahub/data/model/Assistant;->getEnableWebSearch()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_f0

    .line 226
    .line 227
    invoke-virtual {v13}, Lme/rerere/ai/provider/Model;->getTools()Ljava/util/Set;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    sget-object v10, Lme/rerere/ai/provider/BuiltInTools$Search;->INSTANCE:Lme/rerere/ai/provider/BuiltInTools$Search;

    .line 232
    .line 233
    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-nez v0, :cond_f0

    .line 238
    .line 239
    move v10, v6

    .line 240
    goto :goto_f2

    .line 241
    :cond_f0
    move/from16 v10, v16

    .line 242
    .line 243
    :goto_f2
    new-instance v11, Lkotlin/jvm/internal/Ref$LongRef;

    .line 244
    .line 245
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-static {v13, v7}, Lme/rerere/rikkahub/service/ConversationCompressor;->resolveAutoCompressThreshold(Lme/rerere/ai/provider/Model;Lme/rerere/rikkahub/data/datastore/Settings;)I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    invoke-static {v13}, Lme/rerere/rikkahub/service/ConversationCompressor;->resolveContextLength(Lme/rerere/ai/provider/Model;)I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    div-int/lit8 v0, v0, 0x8

    .line 257
    .line 258
    const/16 v9, 0x800

    .line 259
    .line 260
    const/16 v5, 0x7d00

    .line 261
    .line 262
    invoke-static {v0, v9, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    :try_start_109
    iget-object v0, v1, Lme/rerere/rikkahub/service/ChatService;->cordisRuntimeHost:Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;

    .line 267
    .line 268
    invoke-virtual {v0}, Lme/rerere/rikkahub/data/plugin/CordisRuntimeHost;->pipelineSnapshot()Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 269
    .line 270
    .line 271
    move-result-object v0
    :try_end_10f
    .catchall {:try_start_109 .. :try_end_10f} :catchall_110

    .line 272
    goto :goto_117

    .line 273
    :catchall_110
    move-exception v0

    .line 274
    new-instance v9, Lkotlin/Result$Failure;

    .line 275
    .line 276
    invoke-direct {v9, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 277
    .line 278
    .line 279
    move-object v0, v9

    .line 280
    :goto_117
    nop

    .line 281
    instance-of v9, v0, Lkotlin/Result$Failure;

    .line 282
    .line 283
    if-eqz v9, :cond_11d

    .line 284
    .line 285
    const/4 v0, 0x0

    .line 286
    :cond_11d
    check-cast v0, Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 287
    .line 288
    if-nez v0, :cond_131

    .line 289
    .line 290
    new-instance v0, Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 291
    .line 292
    sget-object v9, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 293
    .line 294
    move-object/from16 v20, v3

    .line 295
    .line 296
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 297
    .line 298
    move-object/from16 v21, v8

    .line 299
    .line 300
    sget-object v8, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 301
    .line 302
    invoke-direct {v0, v8, v9, v3, v3}, Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;-><init>(Ljava/util/Set;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    .line 303
    .line 304
    .line 305
    goto :goto_135

    .line 306
    :cond_131
    move-object/from16 v20, v3

    .line 307
    .line 308
    move-object/from16 v21, v8

    .line 309
    .line 310
    :goto_135
    iput-object v2, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$0:Lkotlin/uuid/Uuid;

    .line 311
    .line 312
    iput-object v4, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$1:Lkotlin/ranges/ClosedRange;

    .line 313
    .line 314
    iput-object v7, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$2:Lme/rerere/rikkahub/data/datastore/Settings;

    .line 315
    .line 316
    iput-object v14, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$4:Lme/rerere/rikkahub/data/model/Assistant;

    .line 317
    .line 318
    iput-object v13, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$5:Lme/rerere/ai/provider/Model;

    .line 319
    .line 320
    iput-object v12, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$6:Ljava/lang/String;

    .line 321
    .line 322
    iput-object v11, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$7:Lkotlin/jvm/internal/Ref$LongRef;

    .line 323
    .line 324
    iput-object v0, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$8:Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 325
    .line 326
    iput-boolean v10, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->Z$0:Z

    .line 327
    .line 328
    iput v6, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->I$0:I

    .line 329
    .line 330
    iput v5, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->I$1:I

    .line 331
    .line 332
    const/4 v3, 0x2

    .line 333
    iput v3, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->label:I

    .line 334
    .line 335
    invoke-virtual {v1, v14, v13, v15}, Lme/rerere/rikkahub/service/ChatService;->resolveWorkspaceIds(Lme/rerere/rikkahub/data/model/Assistant;Lme/rerere/ai/provider/Model;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    move-object/from16 v8, v21

    .line 340
    .line 341
    if-ne v3, v8, :cond_158

    .line 342
    .line 343
    goto/16 :goto_228

    .line 344
    .line 345
    :cond_158
    move v9, v6

    .line 346
    move-object v6, v4

    .line 347
    move v4, v9

    .line 348
    move/from16 v19, v5

    .line 349
    .line 350
    move v9, v10

    .line 351
    move-object v10, v0

    .line 352
    move-object v0, v3

    .line 353
    move-object v3, v7

    .line 354
    move-object v5, v13

    .line 355
    move-object v13, v11

    .line 356
    move-object v7, v14

    .line 357
    :goto_164
    check-cast v0, Ljava/util/Set;

    .line 358
    .line 359
    iget-object v11, v1, Lme/rerere/rikkahub/service/ChatService;->workspaceSnapshotManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 360
    .line 361
    invoke-virtual {v11}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v11

    .line 365
    check-cast v11, Lme/rerere/rikkahub/data/recall/WorkspaceSnapshotManager;

    .line 366
    .line 367
    move-object v14, v0

    .line 368
    check-cast v14, Ljava/lang/Iterable;

    .line 369
    .line 370
    move-object/from16 p1, v0

    .line 371
    .line 372
    new-instance v0, Ljava/util/ArrayList;

    .line 373
    .line 374
    const/16 v1, 0xa

    .line 375
    .line 376
    invoke-static {v14, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 381
    .line 382
    .line 383
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    :goto_182
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 388
    .line 389
    .line 390
    move-result v14

    .line 391
    if-eqz v14, :cond_196

    .line 392
    .line 393
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v14

    .line 397
    check-cast v14, Lkotlin/uuid/Uuid;

    .line 398
    .line 399
    invoke-virtual {v14}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v14

    .line 403
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    goto :goto_182

    .line 407
    :cond_196
    new-instance v1, Lme/rerere/rikkahub/data/recall/SideEffectRecorder;

    .line 408
    .line 409
    move-object/from16 v14, v20

    .line 410
    .line 411
    invoke-direct {v1, v14, v11, v0}, Lme/rerere/rikkahub/data/recall/SideEffectRecorder;-><init>(Landroid/content/Context;Lme/rerere/rikkahub/data/recall/WorkspaceSnapshotManager;Ljava/util/ArrayList;)V

    .line 412
    .line 413
    .line 414
    new-instance v0, Lme/rerere/rikkahub/service/GenerationRunCoordinator;

    .line 415
    .line 416
    new-instance v11, Lme/rerere/rikkahub/service/GenerationRunPolicy;

    .line 417
    .line 418
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/datastore/Settings;->getAutoReconnectEnabled()Z

    .line 419
    .line 420
    .line 421
    move-result v14

    .line 422
    move-object/from16 p2, v1

    .line 423
    .line 424
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/datastore/Settings;->getAutoReconnectMaxRetries()I

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    move-object/from16 v20, v2

    .line 429
    .line 430
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/datastore/Settings;->getGenerationAutoRetryEnabled()Z

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    move-object/from16 v21, v3

    .line 435
    .line 436
    invoke-virtual/range {v21 .. v21}, Lme/rerere/rikkahub/data/datastore/Settings;->getGenerationAutoRetryMaxAttempts()I

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    invoke-direct {v11, v1, v3, v14, v2}, Lme/rerere/rikkahub/service/GenerationRunPolicy;-><init>(IIZZ)V

    .line 441
    .line 442
    .line 443
    invoke-direct {v0, v11}, Lme/rerere/rikkahub/service/GenerationRunCoordinator;-><init>(Lme/rerere/rikkahub/service/GenerationRunPolicy;)V

    .line 444
    .line 445
    .line 446
    move-object v3, v0

    .line 447
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$attempt$1;

    .line 448
    .line 449
    const/4 v14, 0x0

    .line 450
    move-object v1, v7

    .line 451
    move v7, v4

    .line 452
    move v4, v9

    .line 453
    move-object v9, v10

    .line 454
    move-object v10, v1

    .line 455
    const/16 v18, 0x1

    .line 456
    .line 457
    move-object/from16 v1, p0

    .line 458
    .line 459
    move-object/from16 v11, p2

    .line 460
    .line 461
    move-object/from16 v17, v3

    .line 462
    .line 463
    move-object v3, v5

    .line 464
    move-object/from16 v22, v8

    .line 465
    .line 466
    move-object/from16 v2, v20

    .line 467
    .line 468
    move-object/from16 v5, v21

    .line 469
    .line 470
    move-object/from16 v8, p1

    .line 471
    .line 472
    invoke-direct/range {v0 .. v14}, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$attempt$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/uuid/Uuid;Lme/rerere/ai/provider/Model;ZLme/rerere/rikkahub/data/datastore/Settings;Lkotlin/ranges/ClosedRange;ILjava/util/Set;Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;Lme/rerere/rikkahub/data/model/Assistant;Lme/rerere/rikkahub/data/recall/SideEffectRecorder;Ljava/lang/String;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V

    .line 473
    .line 474
    .line 475
    move v9, v4

    .line 476
    move-object v1, v5

    .line 477
    move-object v8, v6

    .line 478
    move v4, v7

    .line 479
    move-object v6, v10

    .line 480
    move-object v10, v0

    .line 481
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$compress$1;

    .line 482
    .line 483
    const/4 v7, 0x0

    .line 484
    move-object v3, v1

    .line 485
    move/from16 v5, v19

    .line 486
    .line 487
    move-object/from16 v1, p0

    .line 488
    .line 489
    invoke-direct/range {v0 .. v7}, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$compress$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/datastore/Settings;IILme/rerere/rikkahub/data/model/Assistant;Lkotlin/coroutines/Continuation;)V

    .line 490
    .line 491
    .line 492
    move-object v14, v0

    .line 493
    move-object v1, v3

    .line 494
    move v13, v5

    .line 495
    if-nez v8, :cond_1f2

    .line 496
    .line 497
    move/from16 v16, v18

    .line 498
    .line 499
    :cond_1f2
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$2;

    .line 500
    .line 501
    move-object v3, v2

    .line 502
    move-object v7, v6

    .line 503
    move-object v6, v11

    .line 504
    move-object v5, v12

    .line 505
    move-object/from16 v2, p0

    .line 506
    .line 507
    invoke-direct/range {v0 .. v7}, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$2;-><init>(Lme/rerere/rikkahub/data/datastore/Settings;Lme/rerere/rikkahub/service/ChatService;Lkotlin/uuid/Uuid;ILjava/lang/String;Lme/rerere/rikkahub/data/recall/SideEffectRecorder;Lme/rerere/rikkahub/data/model/Assistant;)V

    .line 508
    .line 509
    .line 510
    const/4 v1, 0x0

    .line 511
    iput-object v1, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$0:Lkotlin/uuid/Uuid;

    .line 512
    .line 513
    iput-object v1, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$1:Lkotlin/ranges/ClosedRange;

    .line 514
    .line 515
    iput-object v1, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$2:Lme/rerere/rikkahub/data/datastore/Settings;

    .line 516
    .line 517
    iput-object v1, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$4:Lme/rerere/rikkahub/data/model/Assistant;

    .line 518
    .line 519
    iput-object v1, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$5:Lme/rerere/ai/provider/Model;

    .line 520
    .line 521
    iput-object v1, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$6:Ljava/lang/String;

    .line 522
    .line 523
    iput-object v1, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$7:Lkotlin/jvm/internal/Ref$LongRef;

    .line 524
    .line 525
    iput-object v1, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->L$8:Lme/rerere/rikkahub/data/plugin/PluginPipelineSnapshot;

    .line 526
    .line 527
    iput-boolean v9, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->Z$0:Z

    .line 528
    .line 529
    iput v4, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->I$0:I

    .line 530
    .line 531
    iput v13, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->I$1:I

    .line 532
    .line 533
    const/4 v1, 0x3

    .line 534
    iput v1, v15, Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$1;->label:I

    .line 535
    .line 536
    move-object v8, v0

    .line 537
    move v5, v4

    .line 538
    move-object v6, v10

    .line 539
    move-object v7, v14

    .line 540
    move-object v9, v15

    .line 541
    move/from16 v4, v16

    .line 542
    .line 543
    move-object/from16 v3, v17

    .line 544
    .line 545
    invoke-virtual/range {v3 .. v9}, Lme/rerere/rikkahub/service/GenerationRunCoordinator;->run(ZILme/rerere/rikkahub/service/ChatService$handleMessageComplete$attempt$1;Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$compress$1;Lme/rerere/rikkahub/service/ChatService$handleMessageComplete$2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    move-object/from16 v8, v22

    .line 550
    .line 551
    if-ne v0, v8, :cond_229

    .line 552
    .line 553
    :goto_228
    return-object v8

    .line 554
    :cond_229
    return-object v0
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
.end method

.method public final handleToolApproval(Lkotlin/uuid/Uuid;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lme/rerere/rikkahub/service/ChatPool;->getOrCreateSession(Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/service/ConversationSession;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v0, v2, Lme/rerere/rikkahub/service/ConversationSession;->_generationJob:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 17
    .line 18
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 23
    .line 24
    if-eqz v0, :cond_1d

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    iget-object v0, v2, Lme/rerere/rikkahub/service/ConversationSession;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 31
    .line 32
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lme/rerere/rikkahub/data/model/Conversation;

    .line 37
    .line 38
    invoke-virtual {v0}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 v3, 0x1

    .line 44
    if-eqz v0, :cond_34

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_34

    .line 51
    .line 52
    goto :goto_7c

    .line 53
    :cond_34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_38
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_7c

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lme/rerere/rikkahub/data/model/MessageNode;

    .line 68
    .line 69
    invoke-virtual {v4}, Lme/rerere/rikkahub/data/model/MessageNode;->getCurrentMessage()Lme/rerere/ai/ui/UIMessage;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Lme/rerere/ai/ui/UIMessage;->getParts()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    if-eqz v4, :cond_55

    .line 78
    .line 79
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_55

    .line 84
    .line 85
    goto :goto_38

    .line 86
    :cond_55
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    :cond_59
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_38

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Lme/rerere/ai/ui/UIMessagePart;

    .line 101
    .line 102
    instance-of v6, v5, Lme/rerere/ai/ui/UIMessagePart$Tool;

    .line 103
    .line 104
    if-eqz v6, :cond_59

    .line 105
    .line 106
    check-cast v5, Lme/rerere/ai/ui/UIMessagePart$Tool;

    .line 107
    .line 108
    invoke-virtual {v5}, Lme/rerere/ai/ui/UIMessagePart$Tool;->isPending()Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_59

    .line 113
    .line 114
    invoke-virtual {v5}, Lme/rerere/ai/ui/UIMessagePart$Tool;->getToolCallId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-nez v5, :cond_59

    .line 123
    .line 124
    move v1, v3

    .line 125
    :cond_7c
    :goto_7c
    xor-int/lit8 v0, v1, 0x1

    .line 126
    .line 127
    new-instance v1, Lme/rerere/rikkahub/service/ChatService$handleToolApproval$job$1;

    .line 128
    .line 129
    const/4 v9, 0x0

    .line 130
    move-object v6, p0

    .line 131
    move-object v7, p1

    .line 132
    move-object v8, p2

    .line 133
    move v4, p3

    .line 134
    move-object v5, p4

    .line 135
    move-object v3, p5

    .line 136
    invoke-direct/range {v1 .. v9}, Lme/rerere/rikkahub/service/ChatService$handleToolApproval$job$1;-><init>(Lme/rerere/rikkahub/service/ConversationSession;Ljava/lang/String;ZLjava/lang/String;Lme/rerere/rikkahub/service/ChatService;Lkotlin/uuid/Uuid;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v7, v0, v1}, Lme/rerere/rikkahub/service/ChatService;->launchGenerationJob(Lkotlin/uuid/Uuid;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {v2, p0}, Lme/rerere/rikkahub/service/ConversationSession;->setJob(Lkotlinx/coroutines/StandaloneCoroutine;)V

    .line 144
    .line 145
    .line 146
    return-void
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
.end method

.method public final hasGeneratingConversationInFolder(Lkotlin/uuid/Uuid;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 5
    .line 6
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatPool;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p0, Ljava/lang/Iterable;

    .line 16
    .line 17
    instance-of v0, p0, Ljava/util/Collection;

    .line 18
    .line 19
    if-eqz v0, :cond_1e

    .line 20
    .line 21
    move-object v0, p0

    .line 22
    check-cast v0, Ljava/util/Collection;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1e

    .line 29
    .line 30
    goto :goto_48

    .line 31
    :cond_1e
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :cond_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_48

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lme/rerere/rikkahub/service/ConversationSession;

    .line 46
    .line 47
    invoke-virtual {v0}, Lme/rerere/rikkahub/service/ConversationSession;->isGenerating()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_22

    .line 52
    .line 53
    iget-object v0, v0, Lme/rerere/rikkahub/service/ConversationSession;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 54
    .line 55
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lme/rerere/rikkahub/data/model/Conversation;

    .line 60
    .line 61
    invoke-virtual {v0}, Lme/rerere/rikkahub/data/model/Conversation;->getFolderId()Lkotlin/uuid/Uuid;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_22

    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    return p0

    .line 73
    :cond_48
    :goto_48
    const/4 p0, 0x0

    .line 74
    return p0
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
.end method

.method public final initializeConversation(Lkotlin/uuid/Uuid;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    instance-of v3, v2, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;

    .line 8
    .line 9
    if-eqz v3, :cond_19

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;

    .line 13
    .line 14
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_19

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->label:I

    .line 24
    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    new-instance v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_1e
    iget-object v2, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->label:I

    .line 34
    .line 35
    iget-object v5, v0, Lme/rerere/rikkahub/service/ChatService;->settingsStore:Lme/rerere/rikkahub/data/datastore/SettingsStore;

    .line 36
    .line 37
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 38
    .line 39
    const/4 v7, 0x4

    .line 40
    const/4 v8, 0x3

    .line 41
    const/4 v9, 0x2

    .line 42
    const/4 v10, 0x1

    .line 43
    const/4 v11, 0x0

    .line 44
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 45
    .line 46
    if-eqz v4, :cond_62

    .line 47
    .line 48
    if-eq v4, v10, :cond_54

    .line 49
    .line 50
    if-eq v4, v9, :cond_4c

    .line 51
    .line 52
    if-eq v4, v8, :cond_41

    .line 53
    .line 54
    if-ne v4, v7, :cond_3b

    .line 55
    .line 56
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-object v2

    .line 60
    :cond_3b
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v11

    .line 66
    :cond_41
    iget-boolean v1, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->Z$0:Z

    .line 67
    .line 68
    iget-object v4, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->L$3:Lme/rerere/rikkahub/data/model/Conversation;

    .line 69
    .line 70
    iget-object v5, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 71
    .line 72
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_b9

    .line 76
    .line 77
    :cond_4c
    iget-boolean v1, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->Z$0:Z

    .line 78
    .line 79
    iget-object v4, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 80
    .line 81
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_9f

    .line 85
    :cond_54
    iget-boolean v1, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->Z$0:Z

    .line 86
    .line 87
    iget-object v4, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 88
    .line 89
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    move-object/from16 v36, v2

    .line 93
    .line 94
    move v2, v1

    .line 95
    move-object v1, v4

    .line 96
    move-object/from16 v4, v36

    .line 97
    .line 98
    goto :goto_83

    .line 99
    :cond_62
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, v0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 103
    .line 104
    invoke-virtual {v2, v1}, Lme/rerere/rikkahub/service/ChatPool;->getOrCreateSession(Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/service/ConversationSession;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2}, Lme/rerere/rikkahub/service/ConversationSession;->isGenerating()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_72

    .line 113
    .line 114
    goto :goto_cf

    .line 115
    :cond_72
    iput-object v1, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 116
    .line 117
    move/from16 v2, p2

    .line 118
    .line 119
    iput-boolean v2, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->Z$0:Z

    .line 120
    .line 121
    iput v10, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->label:I

    .line 122
    .line 123
    iget-object v4, v0, Lme/rerere/rikkahub/service/ChatService;->conversationRepo:Lme/rerere/rikkahub/data/repository/ConversationRepository;

    .line 124
    .line 125
    invoke-virtual {v4, v1, v3}, Lme/rerere/rikkahub/data/repository/ConversationRepository;->openConversationPager(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    if-ne v4, v12, :cond_83

    .line 130
    .line 131
    goto :goto_cd

    .line 132
    :cond_83
    :goto_83
    check-cast v4, Lme/rerere/rikkahub/data/repository/ConversationRepository$ConversationPager;

    .line 133
    .line 134
    if-eqz v4, :cond_d0

    .line 135
    .line 136
    iget-object v10, v0, Lme/rerere/rikkahub/service/ChatService;->conversationPagers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    .line 138
    invoke-virtual {v10, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    iput-object v1, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 142
    .line 143
    iput-boolean v2, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->Z$0:Z

    .line 144
    .line 145
    iput v9, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->label:I

    .line 146
    .line 147
    invoke-virtual {v4, v3}, Lme/rerere/rikkahub/data/repository/ConversationRepository$ConversationPager;->loadTail(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    if-ne v4, v12, :cond_99

    .line 152
    .line 153
    goto :goto_cd

    .line 154
    :cond_99
    move-object/from16 v36, v4

    .line 155
    .line 156
    move-object v4, v1

    .line 157
    move v1, v2

    .line 158
    move-object/from16 v2, v36

    .line 159
    .line 160
    :goto_9f
    check-cast v2, Lme/rerere/rikkahub/data/model/Conversation;

    .line 161
    .line 162
    invoke-virtual {v0, v2, v4}, Lme/rerere/rikkahub/service/ChatService;->updateConversation(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/model/Conversation;->getAssistantId()Lkotlin/uuid/Uuid;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    iput-object v4, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 170
    .line 171
    iput-object v2, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->L$3:Lme/rerere/rikkahub/data/model/Conversation;

    .line 172
    .line 173
    iput-boolean v1, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->Z$0:Z

    .line 174
    .line 175
    iput v8, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->label:I

    .line 176
    .line 177
    invoke-virtual {v5, v9, v3}, Lme/rerere/rikkahub/data/datastore/SettingsStore;->updateAssistant(Lkotlin/uuid/Uuid;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    if-ne v5, v12, :cond_b7

    .line 182
    .line 183
    goto :goto_cd

    .line 184
    :cond_b7
    move-object v5, v4

    .line 185
    move-object v4, v2

    .line 186
    :goto_b9
    invoke-virtual {v4}, Lme/rerere/rikkahub/data/model/Conversation;->getNodesFullyLoaded()Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_cf

    .line 191
    .line 192
    iput-object v11, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 193
    .line 194
    iput-object v11, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->L$3:Lme/rerere/rikkahub/data/model/Conversation;

    .line 195
    .line 196
    iput-boolean v1, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->Z$0:Z

    .line 197
    .line 198
    iput v7, v3, Lme/rerere/rikkahub/service/ChatService$initializeConversation$1;->label:I

    .line 199
    .line 200
    invoke-virtual {v0, v5, v4, v3}, Lme/rerere/rikkahub/service/ChatService;->finalizeLoadedConversation(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-ne v0, v12, :cond_ce

    .line 205
    .line 206
    :goto_cd
    return-object v12

    .line 207
    :cond_ce
    return-object v0

    .line 208
    :cond_cf
    :goto_cf
    return-object v6

    .line 209
    :cond_d0
    iget-object v3, v5, Lme/rerere/rikkahub/data/datastore/SettingsStore;->settingsFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 210
    .line 211
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    check-cast v3, Lme/rerere/rikkahub/data/datastore/Settings;

    .line 216
    .line 217
    invoke-static {v3}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->getCurrentAssistant(Lme/rerere/rikkahub/data/datastore/Settings;)Lme/rerere/rikkahub/data/model/Assistant;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    sget-object v4, Lme/rerere/rikkahub/data/model/Conversation;->Companion:Lme/rerere/rikkahub/data/model/Conversation$Companion;

    .line 222
    .line 223
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/model/Assistant;->getId()Lkotlin/uuid/Uuid;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-static {v4, v1, v5, v7}, Lme/rerere/rikkahub/data/model/Conversation$Companion;->ofId$default(Lme/rerere/rikkahub/data/model/Conversation$Companion;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;I)Lme/rerere/rikkahub/data/model/Conversation;

    .line 228
    .line 229
    .line 230
    move-result-object v13

    .line 231
    const v34, 0xfbfff

    .line 232
    .line 233
    .line 234
    const/16 v35, 0x0

    .line 235
    .line 236
    const/4 v14, 0x0

    .line 237
    const/4 v15, 0x0

    .line 238
    const/16 v16, 0x0

    .line 239
    .line 240
    const/16 v17, 0x0

    .line 241
    .line 242
    const/16 v18, 0x0

    .line 243
    .line 244
    const/16 v19, 0x0

    .line 245
    .line 246
    const/16 v20, 0x0

    .line 247
    .line 248
    const/16 v21, 0x0

    .line 249
    .line 250
    const/16 v22, 0x0

    .line 251
    .line 252
    const/16 v23, 0x0

    .line 253
    .line 254
    const/16 v24, 0x0

    .line 255
    .line 256
    const/16 v25, 0x0

    .line 257
    .line 258
    const/16 v26, 0x0

    .line 259
    .line 260
    const/16 v27, 0x0

    .line 261
    .line 262
    const/16 v29, 0x0

    .line 263
    .line 264
    const/16 v30, 0x0

    .line 265
    .line 266
    const/16 v31, 0x0

    .line 267
    .line 268
    const/16 v32, 0x0

    .line 269
    .line 270
    const/16 v33, 0x0

    .line 271
    .line 272
    move/from16 v28, v2

    .line 273
    .line 274
    invoke-static/range {v13 .. v35}, Lme/rerere/rikkahub/data/model/Conversation;->copy$default(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/ConversationCompression;ZLjava/lang/Integer;Ljava/util/Set;ZIZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/model/Assistant;->getPresetMessages()Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {v2, v3}, Lme/rerere/rikkahub/data/model/Conversation;->updateCurrentMessages(Ljava/util/List;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v0, v2, v1}, Lme/rerere/rikkahub/service/ChatService;->updateConversation(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;)V

    .line 287
    .line 288
    .line 289
    return-object v6
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
.end method

.method public final launchGenerationJob(Lkotlin/uuid/Uuid;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/StandaloneCoroutine;
    .registers 11

    .line 1
    iget-object v0, p0, Lme/rerere/rikkahub/service/ChatService;->appScope:Lme/rerere/rikkahub/AppScope;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez p2, :cond_12

    .line 6
    .line 7
    new-instance p0, Lme/rerere/rikkahub/data/chat/RikkaScriptChatBridge$db$1;

    .line 8
    .line 9
    const/16 p1, 0x8

    .line 10
    .line 11
    invoke-direct {p0, p3, v2, p1}, Lme/rerere/rikkahub/data/chat/RikkaScriptChatBridge$db$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, v2, p0, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_12
    invoke-static {}, Lkotlin/uuid/UuidKt;->secureRandomUuid()Lkotlin/uuid/Uuid;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    sget v3, Lme/rerere/rikkahub/service/ChatGenerationForegroundService;->activeGenerationCount:I

    .line 24
    .line 25
    iget-object v3, p0, Lme/rerere/rikkahub/service/ChatService;->context:Landroid/app/Application;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v4, Landroid/content/Intent;

    .line 34
    .line 35
    const-class v5, Lme/rerere/rikkahub/service/ChatGenerationForegroundService;

    .line 36
    .line 37
    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    const-string v5, "me.rerere.rikkahub.action.CHAT_GENERATION_ACQUIRE"

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const-string v5, "generation_id"

    .line 46
    .line 47
    invoke-virtual {p2}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    const-string v5, "conversation_id"

    .line 55
    .line 56
    invoke-virtual {p1}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    :try_start_3e
    invoke-virtual {v3, v4}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    .line 65
    .line 66
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_44

    .line 67
    .line 68
    goto :goto_4b

    .line 69
    :catchall_44
    move-exception p1

    .line 70
    new-instance v3, Lkotlin/Result$Failure;

    .line 71
    .line 72
    invoke-direct {v3, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    move-object p1, v3

    .line 76
    :goto_4b
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_58

    .line 81
    .line 82
    const-string v4, "ChatGenerationFgs"

    .line 83
    .line 84
    const-string v5, "Unable to start chat generation foreground service"

    .line 85
    .line 86
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    :cond_58
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 90
    .line 91
    instance-of v4, p1, Lkotlin/Result$Failure;

    .line 92
    .line 93
    if-eqz v4, :cond_5f

    .line 94
    .line 95
    move-object p1, v3

    .line 96
    :cond_5f
    check-cast p1, Ljava/lang/Boolean;

    .line 97
    .line 98
    new-instance p1, Lme/rerere/rikkahub/service/ChatService$launchGenerationJob$2;

    .line 99
    .line 100
    invoke-direct {p1, p3, p0, p2, v2}, Lme/rerere/rikkahub/service/ChatService$launchGenerationJob$2;-><init>(Lkotlin/jvm/functions/Function1;Lme/rerere/rikkahub/service/ChatService;Lkotlin/uuid/Uuid;Lkotlin/coroutines/Continuation;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v2, v2, p1, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
.end method

.method public final loadOlderMessages(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p2, Lme/rerere/rikkahub/service/ChatService$loadOlderMessages$1;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lme/rerere/rikkahub/service/ChatService$loadOlderMessages$1;

    .line 7
    .line 8
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$loadOlderMessages$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_13

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lme/rerere/rikkahub/service/ChatService$loadOlderMessages$1;->label:I

    .line 18
    .line 19
    goto :goto_18

    .line 20
    :cond_13
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$loadOlderMessages$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lme/rerere/rikkahub/service/ChatService$loadOlderMessages$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_18
    iget-object p2, v0, Lme/rerere/rikkahub/service/ChatService$loadOlderMessages$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$loadOlderMessages$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-eqz v1, :cond_37

    .line 35
    .line 36
    if-eq v1, v3, :cond_31

    .line 37
    .line 38
    if-ne v1, v2, :cond_2b

    .line 39
    .line 40
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object p2

    .line 44
    :cond_2b
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v4

    .line 50
    :cond_31
    iget-object p1, v0, Lme/rerere/rikkahub/service/ChatService$loadOlderMessages$1;->L$0:Lkotlin/uuid/Uuid;

    .line 51
    .line 52
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_50

    .line 56
    :cond_37
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lme/rerere/rikkahub/service/ChatService;->conversationPagers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Lme/rerere/rikkahub/data/repository/ConversationRepository$ConversationPager;

    .line 66
    .line 67
    if-nez p2, :cond_45

    .line 68
    .line 69
    goto :goto_6a

    .line 70
    :cond_45
    iput-object p1, v0, Lme/rerere/rikkahub/service/ChatService$loadOlderMessages$1;->L$0:Lkotlin/uuid/Uuid;

    .line 71
    .line 72
    iput v3, v0, Lme/rerere/rikkahub/service/ChatService$loadOlderMessages$1;->label:I

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Lme/rerere/rikkahub/data/repository/ConversationRepository$ConversationPager;->loadOlder(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    if-ne p2, v5, :cond_50

    .line 79
    .line 80
    goto :goto_68

    .line 81
    :cond_50
    :goto_50
    check-cast p2, Lme/rerere/rikkahub/data/model/Conversation;

    .line 82
    .line 83
    if-nez p2, :cond_55

    .line 84
    .line 85
    goto :goto_6a

    .line 86
    :cond_55
    invoke-virtual {p0, p2, p1}, Lme/rerere/rikkahub/service/ChatService;->updateConversation(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lme/rerere/rikkahub/data/model/Conversation;->getNodesFullyLoaded()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_6a

    .line 94
    .line 95
    iput-object v4, v0, Lme/rerere/rikkahub/service/ChatService$loadOlderMessages$1;->L$0:Lkotlin/uuid/Uuid;

    .line 96
    .line 97
    iput v2, v0, Lme/rerere/rikkahub/service/ChatService$loadOlderMessages$1;->label:I

    .line 98
    .line 99
    invoke-virtual {p0, p1, p2, v0}, Lme/rerere/rikkahub/service/ChatService;->finalizeLoadedConversation(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-ne p0, v5, :cond_69

    .line 104
    .line 105
    :goto_68
    return-object v5

    .line 106
    :cond_69
    return-object p0

    .line 107
    :cond_6a
    :goto_6a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p0
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
.end method

.method public final manualCompressConversation-gIAlu-s(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 13

    .line 1
    instance-of v0, p2, Lme/rerere/rikkahub/service/ChatService$manualCompressConversation$1;

    .line 2
    .line 3
    if-eqz v0, :cond_14

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lme/rerere/rikkahub/service/ChatService$manualCompressConversation$1;

    .line 7
    .line 8
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$manualCompressConversation$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_14

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lme/rerere/rikkahub/service/ChatService$manualCompressConversation$1;->label:I

    .line 18
    .line 19
    :goto_12
    move-object v7, v0

    .line 20
    goto :goto_1a

    .line 21
    :cond_14
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$manualCompressConversation$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2}, Lme/rerere/rikkahub/service/ChatService$manualCompressConversation$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 24
    .line 25
    .line 26
    goto :goto_12

    .line 27
    :goto_1a
    iget-object p2, v7, Lme/rerere/rikkahub/service/ChatService$manualCompressConversation$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget v0, v7, Lme/rerere/rikkahub/service/ChatService$manualCompressConversation$1;->label:I

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iget-object v8, p0, Lme/rerere/rikkahub/service/ChatService;->_compressingConversations:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    const/4 v3, 0x1

    .line 36
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 37
    .line 38
    if-eqz v0, :cond_46

    .line 39
    .line 40
    if-eq v0, v3, :cond_40

    .line 41
    .line 42
    if-ne v0, v2, :cond_3a

    .line 43
    .line 44
    iget-object p1, v7, Lme/rerere/rikkahub/service/ChatService$manualCompressConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 45
    .line 46
    :try_start_2d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    check-cast p2, Lkotlin/Result;

    .line 50
    .line 51
    iget-object p0, p2, Lkotlin/Result;->value:Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_36

    .line 52
    .line 53
    goto/16 :goto_133

    .line 54
    .line 55
    :catchall_36
    move-exception v0

    .line 56
    :goto_37
    move-object p0, v0

    .line 57
    goto/16 :goto_14d

    .line 58
    .line 59
    :cond_3a
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_40
    iget-object p1, v7, Lme/rerere/rikkahub/service/ChatService$manualCompressConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 66
    .line 67
    :try_start_42
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_36

    .line 68
    .line 69
    .line 70
    goto :goto_8b

    .line 71
    :cond_46
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object p2, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 75
    .line 76
    invoke-virtual {p2, p1}, Lme/rerere/rikkahub/service/ChatPool;->get(Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/service/ConversationSession;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-eqz p2, :cond_6a

    .line 81
    .line 82
    invoke-virtual {p2}, Lme/rerere/rikkahub/service/ConversationSession;->isGenerating()Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-ne p2, v3, :cond_6a

    .line 87
    .line 88
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatService;->context:Landroid/app/Application;

    .line 91
    .line 92
    sget p2, Lme/rerere/rikkahub/R$string;->chat_page_compress_generating:I

    .line 93
    .line 94
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance p0, Lkotlin/Result$Failure;

    .line 102
    .line 103
    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    return-object p0

    .line 107
    :cond_6a
    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    move-object v0, p2

    .line 112
    check-cast v0, Ljava/util/Set;

    .line 113
    .line 114
    invoke-static {v0, p1}, Lkotlin/collections/SetsKt___SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v8, p2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_6a

    .line 123
    .line 124
    :try_start_7b
    iget-object p2, p0, Lme/rerere/rikkahub/service/ChatService;->settingsStore:Lme/rerere/rikkahub/data/datastore/SettingsStore;

    .line 125
    .line 126
    iget-object p2, p2, Lme/rerere/rikkahub/data/datastore/SettingsStore;->settingsFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 127
    .line 128
    iput-object p1, v7, Lme/rerere/rikkahub/service/ChatService$manualCompressConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 129
    .line 130
    iput v3, v7, Lme/rerere/rikkahub/service/ChatService$manualCompressConversation$1;->label:I

    .line 131
    .line 132
    invoke-static {p2, v7}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p2
    :try_end_87
    .catchall {:try_start_7b .. :try_end_87} :catchall_36

    .line 136
    if-ne p2, v9, :cond_8b

    .line 137
    .line 138
    goto/16 :goto_131

    .line 139
    .line 140
    :cond_8b
    :goto_8b
    :try_start_8b
    check-cast p2, Lme/rerere/rikkahub/data/datastore/Settings;

    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lme/rerere/rikkahub/data/model/Conversation;

    .line 151
    .line 152
    invoke-virtual {v0}, Lme/rerere/rikkahub/data/model/Conversation;->getAssistantId()Lkotlin/uuid/Uuid;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {p2, v0}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->getAssistantById(Lme/rerere/rikkahub/data/datastore/Settings;Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/data/model/Assistant;

    .line 157
    .line 158
    .line 159
    move-result-object v0
    :try_end_9f
    .catchall {:try_start_8b .. :try_end_9f} :catchall_149

    .line 160
    if-nez v0, :cond_a5

    .line 161
    .line 162
    :try_start_a1
    invoke-static {p2}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->getCurrentAssistant(Lme/rerere/rikkahub/data/datastore/Settings;)Lme/rerere/rikkahub/data/model/Assistant;

    .line 163
    .line 164
    .line 165
    move-result-object v0
    :try_end_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_36

    .line 166
    :cond_a5
    :try_start_a5
    invoke-virtual {v0}, Lme/rerere/rikkahub/data/model/Assistant;->getChatModelId()Lkotlin/uuid/Uuid;

    .line 167
    .line 168
    .line 169
    move-result-object v0
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_149

    .line 170
    if-nez v0, :cond_af

    .line 171
    .line 172
    :try_start_ab
    invoke-virtual {p2}, Lme/rerere/rikkahub/data/datastore/Settings;->getChatModelId()Lkotlin/uuid/Uuid;

    .line 173
    .line 174
    .line 175
    move-result-object v0
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_36

    .line 176
    :cond_af
    :try_start_af
    invoke-static {p2, v0, v1}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->findModelById(Lme/rerere/rikkahub/data/datastore/Settings;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)Lme/rerere/ai/provider/Model;

    .line 177
    .line 178
    .line 179
    move-result-object v0
    :try_end_b3
    .catchall {:try_start_af .. :try_end_b3} :catchall_149

    .line 180
    if-nez v0, :cond_b9

    .line 181
    .line 182
    :try_start_b5
    invoke-static {p2}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->getCurrentChatModel(Lme/rerere/rikkahub/data/datastore/Settings;)Lme/rerere/ai/provider/Model;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    :cond_b9
    const/16 v1, 0x800

    .line 187
    .line 188
    if-eqz v0, :cond_c9

    .line 189
    .line 190
    invoke-static {v0}, Lme/rerere/rikkahub/service/ConversationCompressor;->resolveContextLength(Lme/rerere/ai/provider/Model;)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    div-int/lit8 v0, v0, 0x8

    .line 195
    .line 196
    const/16 v3, 0x7d00

    .line 197
    .line 198
    invoke-static {v0, v1, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 199
    .line 200
    .line 201
    move-result v1
    :try_end_c9
    .catchall {:try_start_b5 .. :try_end_c9} :catchall_36

    .line 202
    :cond_c9
    move v5, v1

    .line 203
    :try_start_ca
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2}, Lme/rerere/rikkahub/data/datastore/Settings;->getCompressionPreserve()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-static {v1}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v1
    :try_end_d7
    .catchall {:try_start_ca .. :try_end_d7} :catchall_149

    .line 216
    if-nez v1, :cond_e5

    .line 217
    .line 218
    :try_start_d9
    const-string v1, "\u59cb\u7ec8\u4fdd\u7559\u4ee5\u4e0b\u5173\u952e\u4fe1\u606f\uff0c\u5e76\u5c06\u5176\u5e76\u5165\u6458\u8981\uff0c\u4e0d\u8981\u9057\u6f0f\u6216\u6539\u5199\uff1a\n"

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2}, Lme/rerere/rikkahub/data/datastore/Settings;->getCompressionPreserve()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e5
    .catchall {:try_start_d9 .. :try_end_e5} :catchall_36

    .line 228
    .line 229
    .line 230
    :cond_e5
    :try_start_e5
    iget-object v1, p0, Lme/rerere/rikkahub/service/ChatService;->compactRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 231
    .line 232
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    check-cast v1, Ljava/lang/String;
    :try_end_ed
    .catchall {:try_start_e5 .. :try_end_ed} :catchall_149

    .line 237
    .line 238
    if-eqz v1, :cond_109

    .line 239
    .line 240
    :try_start_ef
    invoke-static {v1}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-eqz v3, :cond_f6

    .line 245
    .line 246
    goto :goto_109

    .line 247
    :cond_f6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-lez v3, :cond_101

    .line 252
    .line 253
    const-string v3, "\n"

    .line 254
    .line 255
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    :cond_101
    const-string v3, "Focus on preserving the following when compacting, and merge it into the summary without omission:\n"

    .line 259
    .line 260
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_109
    .catchall {:try_start_ef .. :try_end_109} :catchall_36

    .line 264
    .line 265
    .line 266
    :cond_109
    :goto_109
    :try_start_109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-virtual {p0, p1}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    move-object v3, v0

    .line 279
    check-cast v3, Lme/rerere/rikkahub/data/model/Conversation;

    .line 280
    .line 281
    invoke-virtual {p2}, Lme/rerere/rikkahub/data/datastore/Settings;->getAutoCompressMaxMode()Z

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    if-eqz p2, :cond_122

    .line 286
    .line 287
    const/16 p2, 0x60

    .line 288
    .line 289
    :goto_120
    move v6, p2

    .line 290
    goto :goto_125

    .line 291
    :cond_122
    const/16 p2, 0x20

    .line 292
    .line 293
    goto :goto_120

    .line 294
    :goto_125
    iput-object p1, v7, Lme/rerere/rikkahub/service/ChatService$manualCompressConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 295
    .line 296
    iput v2, v7, Lme/rerere/rikkahub/service/ChatService$manualCompressConversation$1;->label:I
    :try_end_129
    .catchall {:try_start_109 .. :try_end_129} :catchall_149

    .line 297
    .line 298
    move-object v1, p0

    .line 299
    move-object v2, p1

    .line 300
    :try_start_12b
    invoke-virtual/range {v1 .. v7}, Lme/rerere/rikkahub/service/ChatService;->compressConversation-hUnOzRk(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Ljava/lang/String;IILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object p0
    :try_end_12f
    .catchall {:try_start_12b .. :try_end_12f} :catchall_145

    .line 304
    if-ne p0, v9, :cond_132

    .line 305
    .line 306
    :goto_131
    return-object v9

    .line 307
    :cond_132
    move-object p1, v2

    .line 308
    :cond_133
    :goto_133
    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    move-object v0, p2

    .line 313
    check-cast v0, Ljava/util/Set;

    .line 314
    .line 315
    invoke-static {v0, p1}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v8, p2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result p2

    .line 323
    if-eqz p2, :cond_133

    .line 324
    .line 325
    return-object p0

    .line 326
    :catchall_145
    move-exception v0

    .line 327
    move-object p0, v0

    .line 328
    move-object p1, v2

    .line 329
    goto :goto_14d

    .line 330
    :catchall_149
    move-exception v0

    .line 331
    move-object v2, p1

    .line 332
    goto/16 :goto_37

    .line 333
    .line 334
    :goto_14d
    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object p2

    .line 338
    move-object v0, p2

    .line 339
    check-cast v0, Ljava/util/Set;

    .line 340
    .line 341
    invoke-static {v0, p1}, Lkotlin/collections/SetsKt___SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {v8, p2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result p2

    .line 349
    if-nez p2, :cond_15f

    .line 350
    .line 351
    goto :goto_14d

    .line 352
    :cond_15f
    throw p0
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
.end method

.method public final maybeRetryRefusal(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lme/rerere/rikkahub/data/datastore/Settings;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v0, p4

    .line 6
    .line 7
    instance-of v2, v0, Lme/rerere/rikkahub/service/ChatService$maybeRetryRefusal$1;

    .line 8
    .line 9
    if-eqz v2, :cond_1a

    .line 10
    .line 11
    move-object v2, v0

    .line 12
    check-cast v2, Lme/rerere/rikkahub/service/ChatService$maybeRetryRefusal$1;

    .line 13
    .line 14
    iget v3, v2, Lme/rerere/rikkahub/service/ChatService$maybeRetryRefusal$1;->label:I

    .line 15
    .line 16
    const/high16 v4, -0x80000000

    .line 17
    .line 18
    and-int v5, v3, v4

    .line 19
    .line 20
    if-eqz v5, :cond_1a

    .line 21
    .line 22
    sub-int/2addr v3, v4

    .line 23
    iput v3, v2, Lme/rerere/rikkahub/service/ChatService$maybeRetryRefusal$1;->label:I

    .line 24
    .line 25
    :goto_18
    move-object v8, v2

    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    new-instance v2, Lme/rerere/rikkahub/service/ChatService$maybeRetryRefusal$1;

    .line 28
    .line 29
    invoke-direct {v2, v1, v0}, Lme/rerere/rikkahub/service/ChatService$maybeRetryRefusal$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 30
    .line 31
    .line 32
    goto :goto_18

    .line 33
    :goto_20
    iget-object v0, v8, Lme/rerere/rikkahub/service/ChatService$maybeRetryRefusal$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    iget v2, v8, Lme/rerere/rikkahub/service/ChatService$maybeRetryRefusal$1;->label:I

    .line 36
    .line 37
    iget-object v9, v1, Lme/rerere/rikkahub/service/ChatService;->refusalRetryCount:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    const/4 v10, 0x0

    .line 40
    const/4 v11, 0x1

    .line 41
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 42
    .line 43
    const/4 v13, 0x0

    .line 44
    if-eqz v2, :cond_42

    .line 45
    .line 46
    if-ne v2, v11, :cond_3c

    .line 47
    .line 48
    iget-object v2, v8, Lme/rerere/rikkahub/service/ChatService$maybeRetryRefusal$1;->L$6:Lme/rerere/rikkahub/data/ai/ReplyVerdict;

    .line 49
    .line 50
    iget-object v3, v8, Lme/rerere/rikkahub/service/ChatService$maybeRetryRefusal$1;->L$5:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v4, v8, Lme/rerere/rikkahub/service/ChatService$maybeRetryRefusal$1;->L$0:Lkotlin/uuid/Uuid;

    .line 53
    .line 54
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object/from16 p4, v13

    .line 58
    .line 59
    goto/16 :goto_2de

    .line 60
    .line 61
    :cond_3c
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v13

    .line 67
    :cond_42
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p3 .. p3}, Lme/rerere/rikkahub/data/datastore/Settings;->getRefusalRetryEnabled()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_4d

    .line 75
    .line 76
    goto/16 :goto_34f

    .line 77
    .line 78
    :cond_4d
    invoke-virtual/range {p3 .. p3}, Lme/rerere/rikkahub/data/datastore/Settings;->getRefusalRetryMaxAttempts()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget v2, v1, Lme/rerere/rikkahub/service/ChatService;->REFUSAL_RETRY_HARD_CAP:I

    .line 83
    .line 84
    invoke-static {v0, v11, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    new-instance v2, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9, v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Ljava/lang/Number;

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-lt v2, v0, :cond_6a

    .line 104
    .line 105
    goto/16 :goto_34f

    .line 106
    .line 107
    :cond_6a
    invoke-virtual/range {p2 .. p2}, Lme/rerere/rikkahub/data/model/Conversation;->getCurrentMessages()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :cond_76
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_8c

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    move-object v3, v2

    .line 130
    check-cast v3, Lme/rerere/ai/ui/UIMessage;

    .line 131
    .line 132
    invoke-virtual {v3}, Lme/rerere/ai/ui/UIMessage;->getRole()Lme/rerere/ai/core/MessageRole;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    sget-object v4, Lme/rerere/ai/core/MessageRole;->ASSISTANT:Lme/rerere/ai/core/MessageRole;

    .line 137
    .line 138
    if-ne v3, v4, :cond_76

    .line 139
    .line 140
    goto :goto_8d

    .line 141
    :cond_8c
    move-object v2, v13

    .line 142
    :goto_8d
    check-cast v2, Lme/rerere/ai/ui/UIMessage;

    .line 143
    .line 144
    if-eqz v2, :cond_96

    .line 145
    .line 146
    invoke-virtual {v2}, Lme/rerere/ai/ui/UIMessage;->toText()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    goto :goto_97

    .line 151
    :cond_96
    move-object v0, v13

    .line 152
    :goto_97
    if-nez v0, :cond_9b

    .line 153
    .line 154
    const-string v0, ""

    .line 155
    .line 156
    :cond_9b
    invoke-virtual/range {p2 .. p2}, Lme/rerere/rikkahub/data/model/Conversation;->getCurrentMessages()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v2}, Lme/rerere/rikkahub/service/ChatServiceKt;->latestUserText(Ljava/util/List;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-static {v3}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_ab

    .line 169
    .line 170
    goto/16 :goto_34f

    .line 171
    .line 172
    :cond_ab
    sget-object v2, Lme/rerere/rikkahub/data/ai/RefusalDetector;->REFUSAL_PHRASES:Ljava/util/List;

    .line 173
    .line 174
    invoke-static {v0}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_b9

    .line 179
    .line 180
    new-instance v2, Lme/rerere/rikkahub/data/ai/RefusalVerdict;

    .line 181
    .line 182
    invoke-direct {v2}, Lme/rerere/rikkahub/data/ai/RefusalVerdict;-><init>()V

    .line 183
    .line 184
    .line 185
    goto :goto_100

    .line 186
    :cond_b9
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 187
    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    const/16 v5, 0x78

    .line 200
    .line 201
    if-ge v4, v5, :cond_cc

    .line 202
    .line 203
    move v4, v11

    .line 204
    goto :goto_cd

    .line 205
    :cond_cc
    move v4, v10

    .line 206
    :goto_cd
    sget-object v5, Lme/rerere/rikkahub/data/ai/RefusalDetector;->REFUSAL_PHRASES:Ljava/util/List;

    .line 207
    .line 208
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    :cond_d3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-eqz v6, :cond_fb

    .line 217
    .line 218
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    check-cast v6, Ljava/lang/String;

    .line 223
    .line 224
    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 225
    .line 226
    invoke-virtual {v6, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v14

    .line 230
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    const/4 v15, 0x6

    .line 234
    invoke-static {v2, v14, v10, v10, v15}, Lkotlin/text/StringsKt___StringsJvmKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 235
    .line 236
    .line 237
    move-result v14

    .line 238
    if-ltz v14, :cond_d3

    .line 239
    .line 240
    const/16 v15, 0xc8

    .line 241
    .line 242
    if-le v14, v15, :cond_f5

    .line 243
    .line 244
    if-eqz v4, :cond_d3

    .line 245
    .line 246
    :cond_f5
    new-instance v2, Lme/rerere/rikkahub/data/ai/RefusalVerdict;

    .line 247
    .line 248
    invoke-direct {v2, v11, v6}, Lme/rerere/rikkahub/data/ai/RefusalVerdict;-><init>(ZLjava/lang/String;)V

    .line 249
    .line 250
    .line 251
    goto :goto_100

    .line 252
    :cond_fb
    new-instance v2, Lme/rerere/rikkahub/data/ai/RefusalVerdict;

    .line 253
    .line 254
    invoke-direct {v2}, Lme/rerere/rikkahub/data/ai/RefusalVerdict;-><init>()V

    .line 255
    .line 256
    .line 257
    :goto_100
    iget-boolean v4, v2, Lme/rerere/rikkahub/data/ai/RefusalVerdict;->isRefusal:Z

    .line 258
    .line 259
    if-eqz v4, :cond_112

    .line 260
    .line 261
    new-instance v0, Lme/rerere/rikkahub/data/ai/ReplyVerdict;

    .line 262
    .line 263
    sget-object v4, Lme/rerere/rikkahub/data/ai/ReplyIssue;->REFUSAL:Lme/rerere/rikkahub/data/ai/ReplyIssue;

    .line 264
    .line 265
    iget-object v2, v2, Lme/rerere/rikkahub/data/ai/RefusalVerdict;->matchedPhrase:Ljava/lang/String;

    .line 266
    .line 267
    invoke-direct {v0, v4, v2}, Lme/rerere/rikkahub/data/ai/ReplyVerdict;-><init>(Lme/rerere/rikkahub/data/ai/ReplyIssue;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :goto_10d
    move-object/from16 p4, v13

    .line 271
    .line 272
    :goto_10f
    move-object v13, v0

    .line 273
    goto/16 :goto_2b5

    .line 274
    .line 275
    :cond_112
    invoke-static {v0}, Lkotlin/text/StringsKt___StringsJvmKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-nez v2, :cond_126

    .line 288
    .line 289
    new-instance v0, Lme/rerere/rikkahub/data/ai/ReplyVerdict;

    .line 290
    .line 291
    invoke-direct {v0}, Lme/rerere/rikkahub/data/ai/ReplyVerdict;-><init>()V

    .line 292
    .line 293
    .line 294
    goto :goto_10d

    .line 295
    :cond_126
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    const/16 v4, 0x50

    .line 300
    .line 301
    if-ge v2, v4, :cond_16d

    .line 302
    .line 303
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 304
    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    sget-object v4, Lme/rerere/rikkahub/data/ai/RefusalDetector;->EVASION_PHRASES:Ljava/util/List;

    .line 313
    .line 314
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    :cond_13d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-eqz v5, :cond_15a

    .line 323
    .line 324
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    move-object v6, v5

    .line 329
    check-cast v6, Ljava/lang/String;

    .line 330
    .line 331
    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 332
    .line 333
    invoke-virtual {v6, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    invoke-static {v2, v6, v10}, Lkotlin/text/StringsKt___StringsJvmKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    if-eqz v6, :cond_13d

    .line 345
    .line 346
    goto :goto_15b

    .line 347
    :cond_15a
    move-object v5, v13

    .line 348
    :goto_15b
    check-cast v5, Ljava/lang/String;

    .line 349
    .line 350
    if-eqz v5, :cond_16d

    .line 351
    .line 352
    invoke-static {v0}, Lme/rerere/rikkahub/data/ai/RefusalDetector;->hasSubstance(Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-nez v2, :cond_16d

    .line 357
    .line 358
    new-instance v0, Lme/rerere/rikkahub/data/ai/ReplyVerdict;

    .line 359
    .line 360
    sget-object v2, Lme/rerere/rikkahub/data/ai/ReplyIssue;->EVASION:Lme/rerere/rikkahub/data/ai/ReplyIssue;

    .line 361
    .line 362
    invoke-direct {v0, v2, v5}, Lme/rerere/rikkahub/data/ai/ReplyVerdict;-><init>(Lme/rerere/rikkahub/data/ai/ReplyIssue;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    goto :goto_10d

    .line 366
    :cond_16d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    const/16 v4, 0x96

    .line 371
    .line 372
    if-ge v2, v4, :cond_196

    .line 373
    .line 374
    const-string v2, "\uff1f"

    .line 375
    .line 376
    invoke-static {v0, v2, v10}, Lkotlin/text/StringsKt___StringsJvmKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    if-nez v2, :cond_185

    .line 381
    .line 382
    const-string v2, "?"

    .line 383
    .line 384
    invoke-static {v0, v2, v10}, Lkotlin/text/StringsKt___StringsJvmKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-eqz v2, :cond_196

    .line 389
    .line 390
    :cond_185
    invoke-static {v0}, Lme/rerere/rikkahub/data/ai/RefusalDetector;->hasSubstance(Ljava/lang/String;)Z

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-nez v2, :cond_196

    .line 395
    .line 396
    new-instance v0, Lme/rerere/rikkahub/data/ai/ReplyVerdict;

    .line 397
    .line 398
    sget-object v2, Lme/rerere/rikkahub/data/ai/ReplyIssue;->INCOMPLETE:Lme/rerere/rikkahub/data/ai/ReplyIssue;

    .line 399
    .line 400
    const-string v4, "\u53cd\u95ee\u672a\u4f5c\u7b54"

    .line 401
    .line 402
    invoke-direct {v0, v2, v4}, Lme/rerere/rikkahub/data/ai/ReplyVerdict;-><init>(Lme/rerere/rikkahub/data/ai/ReplyIssue;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    goto/16 :goto_10d

    .line 406
    .line 407
    :cond_196
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    const/16 v4, 0x1e

    .line 412
    .line 413
    if-lt v2, v4, :cond_2ac

    .line 414
    .line 415
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    const/16 v4, 0x64

    .line 420
    .line 421
    if-lt v2, v4, :cond_2ac

    .line 422
    .line 423
    sget-object v2, Lme/rerere/rikkahub/data/ai/RefusalDetector;->STOP_FRAGMENTS:Ljava/util/Set;

    .line 424
    .line 425
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 426
    .line 427
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 428
    .line 429
    .line 430
    new-instance v5, Lkotlin/text/Regex;

    .line 431
    .line 432
    const-string v6, "[A-Za-z][A-Za-z0-9_]{2,}"

    .line 433
    .line 434
    invoke-direct {v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-static {v5, v3}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;)Lkotlin/sequences/GeneratorSequence;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    new-instance v6, Lkotlin/sequences/SubSequence$iterator$1;

    .line 442
    .line 443
    invoke-direct {v6, v5}, Lkotlin/sequences/SubSequence$iterator$1;-><init>(Lkotlin/sequences/GeneratorSequence;)V

    .line 444
    .line 445
    .line 446
    :goto_1bd
    invoke-virtual {v6}, Lkotlin/sequences/SubSequence$iterator$1;->hasNext()Z

    .line 447
    .line 448
    .line 449
    move-result v5

    .line 450
    if-eqz v5, :cond_1dc

    .line 451
    .line 452
    invoke-virtual {v6}, Lkotlin/sequences/SubSequence$iterator$1;->next()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    check-cast v5, Lkotlin/text/MatchResult;

    .line 457
    .line 458
    check-cast v5, Lkotlin/text/MatcherMatchResult;

    .line 459
    .line 460
    invoke-virtual {v5}, Lkotlin/text/MatcherMatchResult;->getValue()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 465
    .line 466
    invoke-virtual {v5, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    .line 472
    .line 473
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    goto :goto_1bd

    .line 477
    :cond_1dc
    new-instance v5, Lkotlin/text/Regex;

    .line 478
    .line 479
    const-string v6, "[\\u4e00-\\u9fa5]{2,}"

    .line 480
    .line 481
    invoke-direct {v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-static {v5, v3}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;)Lkotlin/sequences/GeneratorSequence;

    .line 485
    .line 486
    .line 487
    move-result-object v5

    .line 488
    new-instance v6, Lkotlin/sequences/SubSequence$iterator$1;

    .line 489
    .line 490
    invoke-direct {v6, v5}, Lkotlin/sequences/SubSequence$iterator$1;-><init>(Lkotlin/sequences/GeneratorSequence;)V

    .line 491
    .line 492
    .line 493
    :goto_1ec
    invoke-virtual {v6}, Lkotlin/sequences/SubSequence$iterator$1;->hasNext()Z

    .line 494
    .line 495
    .line 496
    move-result v5

    .line 497
    if-eqz v5, :cond_21d

    .line 498
    .line 499
    invoke-virtual {v6}, Lkotlin/sequences/SubSequence$iterator$1;->next()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v5

    .line 503
    check-cast v5, Lkotlin/text/MatchResult;

    .line 504
    .line 505
    check-cast v5, Lkotlin/text/MatcherMatchResult;

    .line 506
    .line 507
    invoke-virtual {v5}, Lkotlin/text/MatcherMatchResult;->getValue()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    move v14, v10

    .line 512
    :goto_1ff
    add-int/lit8 v15, v14, 0x2

    .line 513
    .line 514
    move-object/from16 p4, v13

    .line 515
    .line 516
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 517
    .line 518
    .line 519
    move-result v13

    .line 520
    if-gt v15, v13, :cond_21a

    .line 521
    .line 522
    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v13

    .line 526
    invoke-interface {v2, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result v14

    .line 530
    if-nez v14, :cond_216

    .line 531
    .line 532
    invoke-interface {v4, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    :cond_216
    move-object/from16 v13, p4

    .line 536
    .line 537
    move v14, v15

    .line 538
    goto :goto_1ff

    .line 539
    :cond_21a
    move-object/from16 v13, p4

    .line 540
    .line 541
    goto :goto_1ec

    .line 542
    :cond_21d
    move-object/from16 p4, v13

    .line 543
    .line 544
    new-instance v5, Ljava/util/ArrayList;

    .line 545
    .line 546
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .line 548
    .line 549
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    :cond_228
    :goto_228
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 554
    .line 555
    .line 556
    move-result v6

    .line 557
    if-eqz v6, :cond_23f

    .line 558
    .line 559
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v6

    .line 563
    move-object v13, v6

    .line 564
    check-cast v13, Ljava/lang/String;

    .line 565
    .line 566
    invoke-interface {v2, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v13

    .line 570
    if-nez v13, :cond_228

    .line 571
    .line 572
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    goto :goto_228

    .line 576
    :cond_23f
    const/16 v2, 0x40

    .line 577
    .line 578
    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 583
    .line 584
    .line 585
    move-result v4

    .line 586
    const/4 v5, 0x3

    .line 587
    if-lt v4, v5, :cond_2ae

    .line 588
    .line 589
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 590
    .line 591
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    .line 597
    .line 598
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 599
    .line 600
    .line 601
    move-result v4

    .line 602
    if-eqz v4, :cond_25d

    .line 603
    .line 604
    move v5, v10

    .line 605
    goto :goto_27d

    .line 606
    :cond_25d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 607
    .line 608
    .line 609
    move-result-object v4

    .line 610
    move v5, v10

    .line 611
    :cond_262
    :goto_262
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 612
    .line 613
    .line 614
    move-result v6

    .line 615
    if-eqz v6, :cond_27d

    .line 616
    .line 617
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v6

    .line 621
    check-cast v6, Ljava/lang/String;

    .line 622
    .line 623
    invoke-static {v0, v6, v10}, Lkotlin/text/StringsKt___StringsJvmKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 624
    .line 625
    .line 626
    move-result v6

    .line 627
    if-eqz v6, :cond_262

    .line 628
    .line 629
    add-int/lit8 v5, v5, 0x1

    .line 630
    .line 631
    if-ltz v5, :cond_279

    .line 632
    .line 633
    goto :goto_262

    .line 634
    :cond_279
    invoke-static {}, Lpalettes/TonalPalette$Companion;->throwCountOverflow()V

    .line 635
    .line 636
    .line 637
    throw p4

    .line 638
    :cond_27d
    :goto_27d
    int-to-float v0, v5

    .line 639
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 640
    .line 641
    .line 642
    move-result v4

    .line 643
    int-to-float v4, v4

    .line 644
    div-float/2addr v0, v4

    .line 645
    const v4, 0x3e19999a    # 0.15f

    .line 646
    .line 647
    .line 648
    cmpg-float v4, v0, v4

    .line 649
    .line 650
    if-gez v4, :cond_2ae

    .line 651
    .line 652
    new-instance v4, Lme/rerere/rikkahub/data/ai/ReplyVerdict;

    .line 653
    .line 654
    const/high16 v6, 0x42c80000    # 100.0f

    .line 655
    .line 656
    mul-float/2addr v0, v6

    .line 657
    float-to-int v0, v0

    .line 658
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 659
    .line 660
    .line 661
    move-result v2

    .line 662
    const-string v6, "%\uff08"

    .line 663
    .line 664
    const-string v13, "/"

    .line 665
    .line 666
    const-string v14, "\u7528\u6237\u5b9e\u8bcd\u547d\u4e2d\u7387 "

    .line 667
    .line 668
    invoke-static {v14, v0, v6, v13, v5}, Landroidx/collection/ObjectFloatMap$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    const-string v5, "\uff09"

    .line 673
    .line 674
    invoke-static {v0, v2, v5}, Landroidx/camera/camera2/pipe/CameraId$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    sget-object v2, Lme/rerere/rikkahub/data/ai/ReplyIssue;->OFF_TOPIC:Lme/rerere/rikkahub/data/ai/ReplyIssue;

    .line 679
    .line 680
    invoke-direct {v4, v2, v0}, Lme/rerere/rikkahub/data/ai/ReplyVerdict;-><init>(Lme/rerere/rikkahub/data/ai/ReplyIssue;Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    move-object v13, v4

    .line 684
    goto :goto_2b5

    .line 685
    :cond_2ac
    move-object/from16 p4, v13

    .line 686
    .line 687
    :cond_2ae
    new-instance v0, Lme/rerere/rikkahub/data/ai/ReplyVerdict;

    .line 688
    .line 689
    invoke-direct {v0}, Lme/rerere/rikkahub/data/ai/ReplyVerdict;-><init>()V

    .line 690
    .line 691
    .line 692
    goto/16 :goto_10f

    .line 693
    .line 694
    :goto_2b5
    sget-object v0, Lme/rerere/rikkahub/data/ai/ReplyIssue;->NONE:Lme/rerere/rikkahub/data/ai/ReplyIssue;

    .line 695
    .line 696
    iget-object v2, v13, Lme/rerere/rikkahub/data/ai/ReplyVerdict;->issue:Lme/rerere/rikkahub/data/ai/ReplyIssue;

    .line 697
    .line 698
    if-ne v2, v0, :cond_2bd

    .line 699
    .line 700
    goto/16 :goto_34f

    .line 701
    .line 702
    :cond_2bd
    iput-object v7, v8, Lme/rerere/rikkahub/service/ChatService$maybeRetryRefusal$1;->L$0:Lkotlin/uuid/Uuid;

    .line 703
    .line 704
    iput-object v3, v8, Lme/rerere/rikkahub/service/ChatService$maybeRetryRefusal$1;->L$5:Ljava/lang/String;

    .line 705
    .line 706
    iput-object v13, v8, Lme/rerere/rikkahub/service/ChatService$maybeRetryRefusal$1;->L$6:Lme/rerere/rikkahub/data/ai/ReplyVerdict;

    .line 707
    .line 708
    iput v11, v8, Lme/rerere/rikkahub/service/ChatService$maybeRetryRefusal$1;->label:I

    .line 709
    .line 710
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 711
    .line 712
    sget-object v14, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 713
    .line 714
    new-instance v0, Lme/rerere/rikkahub/ui/hooks/DebounceKt$useThrottle$1$1$1;

    .line 715
    .line 716
    const/4 v5, 0x0

    .line 717
    const/16 v6, 0xb

    .line 718
    .line 719
    iget-object v4, v13, Lme/rerere/rikkahub/data/ai/ReplyVerdict;->matchedPhrase:Ljava/lang/String;

    .line 720
    .line 721
    invoke-direct/range {v0 .. v6}, Lme/rerere/rikkahub/ui/hooks/DebounceKt$useThrottle$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 722
    .line 723
    .line 724
    invoke-static {v14, v0, v8}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 729
    .line 730
    if-ne v0, v2, :cond_2dc

    .line 731
    .line 732
    return-object v2

    .line 733
    :cond_2dc
    move-object v4, v7

    .line 734
    move-object v2, v13

    .line 735
    :goto_2de
    check-cast v0, Ljava/lang/String;

    .line 736
    .line 737
    invoke-static {v0}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 738
    .line 739
    .line 740
    move-result v5

    .line 741
    if-nez v5, :cond_34f

    .line 742
    .line 743
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    move-result v5

    .line 747
    if-eqz v5, :cond_2ed

    .line 748
    .line 749
    goto :goto_34f

    .line 750
    :cond_2ed
    iget-object v5, v1, Lme/rerere/rikkahub/service/ChatService;->_refusalRewrites:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 751
    .line 752
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v6

    .line 756
    check-cast v6, Ljava/util/Map;

    .line 757
    .line 758
    new-instance v7, Lme/rerere/rikkahub/data/ai/RefusalRewriteRecord;

    .line 759
    .line 760
    iget-object v8, v2, Lme/rerere/rikkahub/data/ai/ReplyVerdict;->matchedPhrase:Ljava/lang/String;

    .line 761
    .line 762
    iget-object v13, v2, Lme/rerere/rikkahub/data/ai/ReplyVerdict;->issue:Lme/rerere/rikkahub/data/ai/ReplyIssue;

    .line 763
    .line 764
    invoke-direct {v7, v3, v0, v8, v13}, Lme/rerere/rikkahub/data/ai/RefusalRewriteRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lme/rerere/rikkahub/data/ai/ReplyIssue;)V

    .line 765
    .line 766
    .line 767
    new-instance v3, Lkotlin/Pair;

    .line 768
    .line 769
    invoke-direct {v3, v4, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 770
    .line 771
    .line 772
    invoke-static {v6, v3}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Lkotlin/Pair;)Ljava/util/Map;

    .line 773
    .line 774
    .line 775
    move-result-object v3

    .line 776
    invoke-virtual {v5, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v3

    .line 783
    check-cast v3, Ljava/lang/Integer;

    .line 784
    .line 785
    if-eqz v3, :cond_317

    .line 786
    .line 787
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 788
    .line 789
    .line 790
    move-result v3

    .line 791
    goto :goto_318

    .line 792
    :cond_317
    move v3, v10

    .line 793
    :goto_318
    add-int/2addr v3, v11

    .line 794
    new-instance v5, Ljava/lang/Integer;

    .line 795
    .line 796
    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v9, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    iget-object v2, v2, Lme/rerere/rikkahub/data/ai/ReplyVerdict;->matchedPhrase:Ljava/lang/String;

    .line 803
    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    .line 805
    .line 806
    const-string v5, "reply issue="

    .line 807
    .line 808
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    const-string v5, " ("

    .line 815
    .line 816
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    const-string v2, "); auto-rewriting user message"

    .line 823
    .line 824
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v2

    .line 831
    const-string v3, "ChatService"

    .line 832
    .line 833
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    .line 835
    .line 836
    const/4 v2, 0x2

    .line 837
    move-object/from16 v3, p4

    .line 838
    .line 839
    invoke-static {v0, v3, v2, v3}, Lme/rerere/rikkahub/ui/components/ui/ErrorCardKt$$ExternalSyntheticLambda7;->m(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/util/List;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    const/16 v2, 0xc

    .line 844
    .line 845
    invoke-static {v1, v4, v0, v10, v2}, Lme/rerere/rikkahub/service/ChatService;->sendMessage$default(Lme/rerere/rikkahub/service/ChatService;Lkotlin/uuid/Uuid;Ljava/util/List;ZI)V

    .line 846
    .line 847
    .line 848
    :cond_34f
    :goto_34f
    return-object v12
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
.end method

.method public final moveConversationToFolder(Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lme/rerere/rikkahub/service/ChatPool;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_19

    .line 16
    .line 17
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda20;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, p2, v1}, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda20;-><init>(Lkotlin/uuid/Uuid;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Lme/rerere/rikkahub/service/ChatService;->updateConversationState(Lkotlin/uuid/Uuid;Lkotlin/jvm/functions/Function1;)V

    .line 24
    .line 25
    .line 26
    :cond_19
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatService;->conversationRepo:Lme/rerere/rikkahub/data/repository/ConversationRepository;

    .line 27
    .line 28
    iget-object p0, p0, Lme/rerere/rikkahub/data/repository/ConversationRepository;->conversationDAO:Lme/rerere/rikkahub/data/db/dao/ConversationDAO;

    .line 29
    .line 30
    invoke-virtual {p1}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p2, :cond_28

    .line 35
    .line 36
    invoke-virtual {p2}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    const-string p2, ""

    .line 42
    .line 43
    :goto_2a
    invoke-interface {p0, p1, p2, p3}, Lme/rerere/rikkahub/data/db/dao/ConversationDAO;->updateFolderId(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
.end method

.method public final persistStreamingProgress(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    instance-of v3, v2, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;

    .line 8
    .line 9
    if-eqz v3, :cond_19

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;

    .line 13
    .line 14
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_19

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->label:I

    .line 24
    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    new-instance v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_1e
    iget-object v2, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->label:I

    .line 34
    .line 35
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    .line 37
    iget-object v6, v0, Lme/rerere/rikkahub/service/ChatService;->conversationRepo:Lme/rerere/rikkahub/data/repository/ConversationRepository;

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    const/4 v8, 0x2

    .line 41
    const/4 v9, 0x1

    .line 42
    const/4 v10, 0x0

    .line 43
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 44
    .line 45
    if-eqz v4, :cond_4e

    .line 46
    .line 47
    if-eq v4, v9, :cond_42

    .line 48
    .line 49
    if-eq v4, v8, :cond_3e

    .line 50
    .line 51
    if-ne v4, v7, :cond_38

    .line 52
    .line 53
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :cond_38
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v10

    .line 63
    :cond_3e
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-object v2

    .line 67
    :cond_42
    iget-wide v0, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->J$1:J

    .line 68
    .line 69
    iget-wide v12, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->J$0:J

    .line 70
    .line 71
    iget-object v4, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 72
    .line 73
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    move-wide v14, v0

    .line 77
    move-object v1, v4

    .line 78
    goto :goto_92

    .line 79
    :cond_4e
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v12

    .line 86
    iget-object v0, v0, Lme/rerere/rikkahub/service/ChatService;->lastStreamPersistAt:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Ljava/lang/Long;

    .line 93
    .line 94
    if-eqz v2, :cond_64

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 97
    .line 98
    .line 99
    move-result-wide v14

    .line 100
    goto :goto_66

    .line 101
    :cond_64
    const-wide/16 v14, 0x0

    .line 102
    .line 103
    :goto_66
    sub-long v16, v12, v14

    .line 104
    .line 105
    const-wide/16 v18, 0x320

    .line 106
    .line 107
    cmp-long v2, v16, v18

    .line 108
    .line 109
    if-gez v2, :cond_6f

    .line 110
    .line 111
    return-object v5

    .line 112
    :cond_6f
    new-instance v2, Ljava/lang/Long;

    .line 113
    .line 114
    invoke-direct {v2, v12, v13}, Ljava/lang/Long;-><init>(J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {p2 .. p2}, Lme/rerere/rikkahub/data/model/Conversation;->getId()Lkotlin/uuid/Uuid;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    move-object/from16 v1, p2

    .line 125
    .line 126
    iput-object v1, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 127
    .line 128
    iput-wide v12, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->J$0:J

    .line 129
    .line 130
    iput-wide v14, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->J$1:J

    .line 131
    .line 132
    iput v9, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->label:I

    .line 133
    .line 134
    iget-object v2, v6, Lme/rerere/rikkahub/data/repository/ConversationRepository;->conversationDAO:Lme/rerere/rikkahub/data/db/dao/ConversationDAO;

    .line 135
    .line 136
    invoke-virtual {v0}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-interface {v2, v0, v3}, Lme/rerere/rikkahub/data/db/dao/ConversationDAO;->existsById(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    if-ne v2, v11, :cond_92

    .line 145
    .line 146
    goto :goto_d0

    .line 147
    :cond_92
    :goto_92
    check-cast v2, Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_c2

    .line 154
    .line 155
    iput-object v10, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 156
    .line 157
    iput-wide v12, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->J$0:J

    .line 158
    .line 159
    iput-wide v14, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->J$1:J

    .line 160
    .line 161
    iput v8, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->label:I

    .line 162
    .line 163
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-static {v1}, Lme/rerere/rikkahub/data/repository/ConversationRepository;->isPersistable(Lme/rerere/rikkahub/data/model/Conversation;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_ac

    .line 171
    .line 172
    goto :goto_be

    .line 173
    :cond_ac
    invoke-static {v1}, Lme/rerere/rikkahub/data/repository/ConversationRepository;->sanitizeBase64PartsForPersist(Lme/rerere/rikkahub/data/model/Conversation;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-object v1, v6, Lme/rerere/rikkahub/data/repository/ConversationRepository;->database:Lme/rerere/rikkahub/data/db/AppDatabase;

    .line 178
    .line 179
    new-instance v2, Lme/rerere/rikkahub/data/repository/ConversationRepository$deleteConversation$2;

    .line 180
    .line 181
    invoke-direct {v2, v6, v0, v10, v7}, Lme/rerere/rikkahub/data/repository/ConversationRepository$deleteConversation$2;-><init>(Lme/rerere/rikkahub/data/repository/ConversationRepository;Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/Continuation;I)V

    .line 182
    .line 183
    .line 184
    invoke-static {v1, v2, v3}, Lme/rerere/hugeicons/stroke/PlaneKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    if-ne v0, v11, :cond_be

    .line 189
    .line 190
    move-object v5, v0

    .line 191
    :cond_be
    :goto_be
    if-ne v5, v11, :cond_c1

    .line 192
    .line 193
    goto :goto_d0

    .line 194
    :cond_c1
    return-object v5

    .line 195
    :cond_c2
    iput-object v10, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 196
    .line 197
    iput-wide v12, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->J$0:J

    .line 198
    .line 199
    iput-wide v14, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->J$1:J

    .line 200
    .line 201
    iput v7, v3, Lme/rerere/rikkahub/service/ChatService$persistStreamingProgress$1;->label:I

    .line 202
    .line 203
    invoke-virtual {v6, v1, v3}, Lme/rerere/rikkahub/data/repository/ConversationRepository;->insertConversation(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-ne v0, v11, :cond_d1

    .line 208
    .line 209
    :goto_d0
    return-object v11

    .line 210
    :cond_d1
    return-object v0
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
.end method

.method public final pluginDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatService;->pluginManager:Lme/rerere/rikkahub/data/plugin/PluginManager;

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lme/rerere/rikkahub/data/plugin/PluginManager;->loadInfo(Ljava/lang/String;)Lme/rerere/rikkahub/data/plugin/PluginInfo;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_10

    .line 9
    .line 10
    invoke-virtual {p0}, Lme/rerere/rikkahub/data/plugin/PluginInfo;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    .line 14
    goto :goto_18

    .line 15
    :catchall_e
    move-exception p0

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    move-object p0, v0

    .line 18
    goto :goto_18

    .line 19
    :goto_12
    new-instance v1, Lkotlin/Result$Failure;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    move-object p0, v1

    .line 25
    :goto_18
    nop

    .line 26
    instance-of v1, p0, Lkotlin/Result$Failure;

    .line 27
    .line 28
    if-eqz v1, :cond_1e

    .line 29
    .line 30
    move-object p0, v0

    .line 31
    :cond_1e
    check-cast p0, Ljava/lang/String;

    .line 32
    .line 33
    if-eqz p0, :cond_2c

    .line 34
    .line 35
    invoke-static {p0}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_29

    .line 40
    .line 41
    move-object v0, p0

    .line 42
    :cond_29
    if-eqz v0, :cond_2c

    .line 43
    .line 44
    move-object p1, v0

    .line 45
    :cond_2c
    return-object p1
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
.end method

.method public final pluginPromptTokensText(Ljava/util/Set;)Ljava/lang/String;
    .registers 8

    .line 1
    :try_start_0
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatService;->pluginManager:Lme/rerere/rikkahub/data/plugin/PluginManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lme/rerere/rikkahub/data/plugin/PluginManager;->enabledSystemPrompts(Ljava/util/Set;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "\n"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/16 v5, 0x3e

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 18
    goto :goto_1a

    .line 19
    :catchall_12
    move-exception v0

    .line 20
    move-object p0, v0

    .line 21
    new-instance p1, Lkotlin/Result$Failure;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    move-object p0, p1

    .line 27
    :goto_1a
    nop

    .line 28
    instance-of p1, p0, Lkotlin/Result$Failure;

    .line 29
    .line 30
    if-eqz p1, :cond_21

    .line 31
    .line 32
    const-string p0, ""

    .line 33
    .line 34
    :cond_21
    check-cast p0, Ljava/lang/String;

    .line 35
    .line 36
    return-object p0
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
.end method

.method public final recallMessage(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 12

    .line 1
    instance-of v0, p2, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;

    .line 2
    .line 3
    if-eqz v0, :cond_14

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;

    .line 7
    .line 8
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_14

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->label:I

    .line 18
    .line 19
    :goto_12
    move-object v7, v0

    .line 20
    goto :goto_1a

    .line 21
    :cond_14
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2}, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 24
    .line 25
    .line 26
    goto :goto_12

    .line 27
    :goto_1a
    iget-object p2, v7, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget v0, v7, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->label:I

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    const/4 v2, 0x2

    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    .line 37
    if-eqz v0, :cond_48

    .line 38
    .line 39
    if-eq v0, v3, :cond_3e

    .line 40
    .line 41
    if-eq v0, v2, :cond_36

    .line 42
    .line 43
    if-ne v0, v1, :cond_30

    .line 44
    .line 45
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-object p2

    .line 49
    :cond_30
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v4

    .line 55
    :cond_36
    iget-object p1, v7, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->L$1:Lme/rerere/rikkahub/service/ConversationSession;

    .line 56
    .line 57
    iget-object v0, v7, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 58
    .line 59
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_73

    .line 63
    :cond_3e
    iget-object p1, v7, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->L$1:Lme/rerere/rikkahub/service/ConversationSession;

    .line 64
    .line 65
    iget-object v0, v7, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 66
    .line 67
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    move-object p2, p1

    .line 71
    move-object p1, v0

    .line 72
    goto :goto_64

    .line 73
    :cond_48
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 77
    .line 78
    invoke-virtual {p2, p1}, Lme/rerere/rikkahub/service/ChatPool;->getOrCreateSession(Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/service/ConversationSession;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Lme/rerere/rikkahub/service/ConversationSession;->isGenerating()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_64

    .line 87
    .line 88
    iput-object p1, v7, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 89
    .line 90
    iput-object p2, v7, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->L$1:Lme/rerere/rikkahub/service/ConversationSession;

    .line 91
    .line 92
    iput v3, v7, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->label:I

    .line 93
    .line 94
    invoke-virtual {p0, p1, v7}, Lme/rerere/rikkahub/service/ChatService;->stopGeneration(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-ne v0, v8, :cond_64

    .line 99
    .line 100
    goto :goto_a1

    .line 101
    :cond_64
    :goto_64
    iput-object p1, v7, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 102
    .line 103
    iput-object p2, v7, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->L$1:Lme/rerere/rikkahub/service/ConversationSession;

    .line 104
    .line 105
    iput v2, v7, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->label:I

    .line 106
    .line 107
    invoke-virtual {p0, p1, v7}, Lme/rerere/rikkahub/service/ChatService;->ensureConversationFullyLoaded(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-ne v0, v8, :cond_71

    .line 112
    .line 113
    goto :goto_a1

    .line 114
    :cond_71
    move-object v0, p1

    .line 115
    move-object p1, p2

    .line 116
    :goto_73
    invoke-virtual {p0, v0}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    check-cast p2, Lme/rerere/rikkahub/data/model/Conversation;

    .line 125
    .line 126
    iget-object v5, p0, Lme/rerere/rikkahub/service/ChatService;->branchService$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 127
    .line 128
    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Lme/rerere/rikkahub/service/ConversationBranchService;

    .line 133
    .line 134
    move v6, v1

    .line 135
    move-object v1, v5

    .line 136
    new-instance v5, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda4;

    .line 137
    .line 138
    invoke-direct {v5, p0, v2}, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda4;-><init>(Lme/rerere/rikkahub/service/ChatService;I)V

    .line 139
    .line 140
    .line 141
    move v2, v6

    .line 142
    new-instance v6, Lme/rerere/rikkahub/service/ChatService$redoMessage$3;

    .line 143
    .line 144
    invoke-direct {v6, p0, v4, v3}, Lme/rerere/rikkahub/service/ChatService$redoMessage$3;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/Continuation;I)V

    .line 145
    .line 146
    .line 147
    iput-object v4, v7, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 148
    .line 149
    iput-object v4, v7, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->L$1:Lme/rerere/rikkahub/service/ConversationSession;

    .line 150
    .line 151
    iput v2, v7, Lme/rerere/rikkahub/service/ChatService$recallMessage$1;->label:I

    .line 152
    .line 153
    move-object v3, p1

    .line 154
    move-object v4, p2

    .line 155
    move-object v2, v0

    .line 156
    invoke-virtual/range {v1 .. v7}, Lme/rerere/rikkahub/service/ConversationBranchService;->recallMessage(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/service/ConversationSession;Lme/rerere/rikkahub/data/model/Conversation;Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda4;Lme/rerere/rikkahub/service/ChatService$redoMessage$3;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    if-ne p0, v8, :cond_a2

    .line 161
    .line 162
    :goto_a1
    return-object v8

    .line 163
    :cond_a2
    return-object p0
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
.end method

.method public final redoMessage(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 12

    .line 1
    instance-of v0, p2, Lme/rerere/rikkahub/service/ChatService$redoMessage$1;

    .line 2
    .line 3
    if-eqz v0, :cond_14

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lme/rerere/rikkahub/service/ChatService$redoMessage$1;

    .line 7
    .line 8
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$redoMessage$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_14

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lme/rerere/rikkahub/service/ChatService$redoMessage$1;->label:I

    .line 18
    .line 19
    :goto_12
    move-object v7, v0

    .line 20
    goto :goto_1a

    .line 21
    :cond_14
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$redoMessage$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2}, Lme/rerere/rikkahub/service/ChatService$redoMessage$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 24
    .line 25
    .line 26
    goto :goto_12

    .line 27
    :goto_1a
    iget-object p2, v7, Lme/rerere/rikkahub/service/ChatService$redoMessage$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    iget v0, v7, Lme/rerere/rikkahub/service/ChatService$redoMessage$1;->label:I

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 35
    .line 36
    if-eqz v0, :cond_3c

    .line 37
    .line 38
    if-eq v0, v2, :cond_33

    .line 39
    .line 40
    if-ne v0, v1, :cond_2d

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object p2

    .line 46
    :cond_2d
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v3

    .line 52
    :cond_33
    iget-object p1, v7, Lme/rerere/rikkahub/service/ChatService$redoMessage$1;->L$1:Lme/rerere/rikkahub/service/ConversationSession;

    .line 53
    .line 54
    iget-object v0, v7, Lme/rerere/rikkahub/service/ChatService$redoMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 55
    .line 56
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move-object v2, v0

    .line 60
    goto :goto_5d

    .line 61
    :cond_3c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Lme/rerere/rikkahub/service/ChatPool;->getOrCreateSession(Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/service/ConversationSession;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Lme/rerere/rikkahub/service/ConversationSession;->isGenerating()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4e

    .line 75
    .line 76
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_4e
    iput-object p1, v7, Lme/rerere/rikkahub/service/ChatService$redoMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 80
    .line 81
    iput-object p2, v7, Lme/rerere/rikkahub/service/ChatService$redoMessage$1;->L$1:Lme/rerere/rikkahub/service/ConversationSession;

    .line 82
    .line 83
    iput v2, v7, Lme/rerere/rikkahub/service/ChatService$redoMessage$1;->label:I

    .line 84
    .line 85
    invoke-virtual {p0, p1, v7}, Lme/rerere/rikkahub/service/ChatService;->ensureConversationFullyLoaded(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-ne v0, v8, :cond_5b

    .line 90
    .line 91
    goto :goto_8a

    .line 92
    :cond_5b
    move-object v2, p1

    .line 93
    move-object p1, p2

    .line 94
    :goto_5d
    invoke-virtual {p0, v2}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    move-object v4, p2

    .line 103
    check-cast v4, Lme/rerere/rikkahub/data/model/Conversation;

    .line 104
    .line 105
    iget-object p2, p0, Lme/rerere/rikkahub/service/ChatService;->branchService$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 106
    .line 107
    invoke-virtual {p2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Lme/rerere/rikkahub/service/ConversationBranchService;

    .line 112
    .line 113
    new-instance v5, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda4;

    .line 114
    .line 115
    const/4 v0, 0x3

    .line 116
    invoke-direct {v5, p0, v0}, Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda4;-><init>(Lme/rerere/rikkahub/service/ChatService;I)V

    .line 117
    .line 118
    .line 119
    new-instance v6, Lme/rerere/rikkahub/service/ChatService$redoMessage$3;

    .line 120
    .line 121
    const/4 v0, 0x0

    .line 122
    invoke-direct {v6, p0, v3, v0}, Lme/rerere/rikkahub/service/ChatService$redoMessage$3;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/Continuation;I)V

    .line 123
    .line 124
    .line 125
    iput-object v3, v7, Lme/rerere/rikkahub/service/ChatService$redoMessage$1;->L$0:Lkotlin/uuid/Uuid;

    .line 126
    .line 127
    iput-object v3, v7, Lme/rerere/rikkahub/service/ChatService$redoMessage$1;->L$1:Lme/rerere/rikkahub/service/ConversationSession;

    .line 128
    .line 129
    iput v1, v7, Lme/rerere/rikkahub/service/ChatService$redoMessage$1;->label:I

    .line 130
    .line 131
    move-object v3, p1

    .line 132
    move-object v1, p2

    .line 133
    invoke-virtual/range {v1 .. v7}, Lme/rerere/rikkahub/service/ConversationBranchService;->redoMessage(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/service/ConversationSession;Lme/rerere/rikkahub/data/model/Conversation;Lme/rerere/rikkahub/service/ChatService$$ExternalSyntheticLambda4;Lme/rerere/rikkahub/service/ChatService$redoMessage$3;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    if-ne p0, v8, :cond_8b

    .line 138
    .line 139
    :goto_8a
    return-object v8

    .line 140
    :cond_8b
    return-object p0
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
.end method

.method public final regenerateAtMessage(Lkotlin/uuid/Uuid;Lme/rerere/ai/ui/UIMessage;Z)V
    .registers 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lme/rerere/rikkahub/service/ChatPool;->getOrCreateSession(Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/service/ConversationSession;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v0, v3, Lme/rerere/rikkahub/service/ConversationSession;->_generationJob:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 20
    .line 21
    if-eqz v0, :cond_1a

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 25
    .line 26
    .line 27
    :cond_1a
    invoke-virtual {p0, p1}, Lme/rerere/rikkahub/service/ChatService;->clearRecallHistory(Lkotlin/uuid/Uuid;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lme/rerere/rikkahub/service/ChatService;->generationEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lme/rerere/ai/ui/UIMessage;->getRole()Lme/rerere/ai/core/MessageRole;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Lme/rerere/ai/core/MessageRole;->USER:Lme/rerere/ai/core/MessageRole;

    .line 40
    .line 41
    if-eq v0, v1, :cond_2f

    .line 42
    .line 43
    if-eqz p3, :cond_2d

    .line 44
    .line 45
    goto :goto_2f

    .line 46
    :cond_2d
    const/4 v0, 0x0

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    .line 49
    :goto_30
    new-instance v1, Lme/rerere/rikkahub/service/ChatService$regenerateAtMessage$job$1;

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    move-object v2, p0

    .line 53
    move-object v5, p1

    .line 54
    move-object v4, p2

    .line 55
    move v6, p3

    .line 56
    invoke-direct/range {v1 .. v7}, Lme/rerere/rikkahub/service/ChatService$regenerateAtMessage$job$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lme/rerere/rikkahub/service/ConversationSession;Lme/rerere/ai/ui/UIMessage;Lkotlin/uuid/Uuid;ZLkotlin/coroutines/Continuation;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v5, v0, v1}, Lme/rerere/rikkahub/service/ChatService;->launchGenerationJob(Lkotlin/uuid/Uuid;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v3, p0}, Lme/rerere/rikkahub/service/ConversationSession;->setJob(Lkotlinx/coroutines/StandaloneCoroutine;)V

    .line 64
    .line 65
    .line 66
    return-void
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
.end method

.method public final removeConversationReference(Lkotlin/uuid/Uuid;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lme/rerere/rikkahub/service/ChatPool;->get(Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/service/ConversationSession;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_5a

    .line 11
    .line 12
    const-string p1, "release "

    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_e
    iget-object v0, p0, Lme/rerere/rikkahub/service/ConversationSession;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-gtz v0, :cond_31

    .line 22
    .line 23
    const-string v0, "ConversationSession"

    .line 24
    .line 25
    iget-object v1, p0, Lme/rerere/rikkahub/service/ConversationSession;->id:Lkotlin/uuid/Uuid;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " on zero refcount; ignoring unbalanced release"

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_56

    .line 48
    :catchall_2f
    move-exception p1

    .line 49
    goto :goto_58

    .line 50
    :cond_31
    iget-object p1, p0, Lme/rerere/rikkahub/service/ConversationSession;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget-object v0, p0, Lme/rerere/rikkahub/service/ConversationSession;->id:Lkotlin/uuid/Uuid;

    .line 57
    .line 58
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    if-gtz p1, :cond_56

    .line 62
    .line 63
    iget-object p1, p0, Lme/rerere/rikkahub/service/ConversationSession;->idleCheckJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    if-eqz p1, :cond_46

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 69
    .line 70
    .line 71
    :cond_46
    iget-object p1, p0, Lme/rerere/rikkahub/service/ConversationSession;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 72
    .line 73
    new-instance v1, Lme/rerere/rikkahub/service/ChatService$2;

    .line 74
    .line 75
    const/16 v2, 0x14

    .line 76
    .line 77
    invoke-direct {v1, p0, v0, v2}, Lme/rerere/rikkahub/service/ChatService$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 78
    .line 79
    .line 80
    const/4 v2, 0x3

    .line 81
    invoke-static {p1, v0, v0, v1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lme/rerere/rikkahub/service/ConversationSession;->idleCheckJob:Lkotlinx/coroutines/StandaloneCoroutine;
    :try_end_56
    .catchall {:try_start_e .. :try_end_56} :catchall_2f

    .line 86
    .line 87
    :cond_56
    :goto_56
    monitor-exit p0

    .line 88
    return-void

    .line 89
    :goto_58
    monitor-exit p0

    .line 90
    throw p1

    .line 91
    :cond_5a
    return-void
    .line 92
    .line 93
.end method

.method public final resolveWorkspaceIds(Lme/rerere/rikkahub/data/model/Assistant;Lme/rerere/ai/provider/Model;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 8

    .line 1
    instance-of v0, p3, Lme/rerere/rikkahub/service/ChatService$resolveWorkspaceIds$1;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lme/rerere/rikkahub/service/ChatService$resolveWorkspaceIds$1;

    .line 7
    .line 8
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$resolveWorkspaceIds$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_13

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lme/rerere/rikkahub/service/ChatService$resolveWorkspaceIds$1;->label:I

    .line 18
    .line 19
    goto :goto_18

    .line 20
    :cond_13
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$resolveWorkspaceIds$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lme/rerere/rikkahub/service/ChatService$resolveWorkspaceIds$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_18
    iget-object p3, v0, Lme/rerere/rikkahub/service/ChatService$resolveWorkspaceIds$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$resolveWorkspaceIds$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2c

    .line 32
    .line 33
    if-ne v1, v2, :cond_26

    .line 34
    .line 35
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_7f

    .line 39
    :cond_26
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v3

    .line 45
    :cond_2c
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lme/rerere/rikkahub/data/model/Assistant;->getEffectiveWorkspaceIds()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    move-object p3, p1

    .line 53
    check-cast p3, Ljava/util/Collection;

    .line 54
    .line 55
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-nez p3, :cond_3d

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_3d
    invoke-virtual {p2}, Lme/rerere/ai/provider/Model;->getModelId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object p2, Lme/rerere/rikkahub/service/ChatServiceKt;->DEEPSEEK_MODEL_RE:Lkotlin/text/Regex;

    .line 67
    .line 68
    if-eqz p1, :cond_b0

    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_4c

    .line 75
    .line 76
    goto :goto_b0

    .line 77
    :cond_4c
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    sget-object p3, Lme/rerere/rikkahub/service/ChatServiceKt;->DEEPSEEK_MODEL_RE:Lkotlin/text/Regex;

    .line 87
    .line 88
    invoke-virtual {p3, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_6e

    .line 93
    .line 94
    const-string p1, "ds-"

    .line 95
    .line 96
    const/4 p3, 0x0

    .line 97
    invoke-static {p2, p1, p3}, Lkotlin/text/StringsKt___StringsJvmKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_6e

    .line 102
    .line 103
    const-string p1, "ds/"

    .line 104
    .line 105
    invoke-static {p2, p1, p3}, Lkotlin/text/StringsKt___StringsJvmKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_b0

    .line 110
    .line 111
    :cond_6e
    iget-object p0, p0, Lme/rerere/rikkahub/service/ChatService;->workspaceRepository:Lme/rerere/rikkahub/data/repository/WorkspaceRepository;

    .line 112
    .line 113
    invoke-virtual {p0}, Lme/rerere/rikkahub/data/repository/WorkspaceRepository;->listFlow()Lkotlinx/coroutines/flow/FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    iput v2, v0, Lme/rerere/rikkahub/service/ChatService$resolveWorkspaceIds$1;->label:I

    .line 118
    .line 119
    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 124
    .line 125
    if-ne p3, p0, :cond_7f

    .line 126
    .line 127
    return-object p0

    .line 128
    :cond_7f
    :goto_7f
    check-cast p3, Ljava/lang/Iterable;

    .line 129
    .line 130
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    :cond_85
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_9d

    .line 139
    .line 140
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    move-object p2, p1

    .line 145
    check-cast p2, Lme/rerere/rikkahub/data/db/entity/WorkspaceEntity;

    .line 146
    .line 147
    iget-object p2, p2, Lme/rerere/rikkahub/data/db/entity/WorkspaceEntity;->shellStatus:Ljava/lang/String;

    .line 148
    .line 149
    const-string p3, "READY"

    .line 150
    .line 151
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-eqz p2, :cond_85

    .line 156
    .line 157
    goto :goto_9e

    .line 158
    :cond_9d
    move-object p1, v3

    .line 159
    :goto_9e
    check-cast p1, Lme/rerere/rikkahub/data/db/entity/WorkspaceEntity;

    .line 160
    .line 161
    if-eqz p1, :cond_ac

    .line 162
    .line 163
    iget-object p0, p1, Lme/rerere/rikkahub/data/db/entity/WorkspaceEntity;->id:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {p0}, Lkotlin/uuid/Uuid$Companion;->parse(Ljava/lang/String;)Lkotlin/uuid/Uuid;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-static {p0}, Lrikka/sui/Sui;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    :cond_ac
    if-nez v3, :cond_af

    .line 174
    .line 175
    goto :goto_b0

    .line 176
    :cond_af
    return-object v3

    .line 177
    :cond_b0
    :goto_b0
    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 178
    .line 179
    return-object p0
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
.end method

.method public final restoreMessageNode(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/MessageNode;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    instance-of v3, v2, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;

    .line 8
    .line 9
    if-eqz v3, :cond_19

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;

    .line 13
    .line 14
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_19

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;->label:I

    .line 24
    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    new-instance v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_1e
    iget-object v2, v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;->label:I

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x1

    .line 38
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 39
    .line 40
    if-eqz v4, :cond_44

    .line 41
    .line 42
    if-eq v4, v7, :cond_37

    .line 43
    .line 44
    if-ne v4, v5, :cond_31

    .line 45
    .line 46
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v6

    .line 56
    :cond_37
    iget v1, v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;->I$0:I

    .line 57
    .line 58
    iget-object v4, v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;->L$1:Lme/rerere/rikkahub/data/model/MessageNode;

    .line 59
    .line 60
    iget-object v7, v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;->L$0:Lkotlin/uuid/Uuid;

    .line 61
    .line 62
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object v2, v4

    .line 66
    move v4, v1

    .line 67
    move-object v1, v7

    .line 68
    goto :goto_5b

    .line 69
    :cond_44
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;->L$0:Lkotlin/uuid/Uuid;

    .line 73
    .line 74
    move-object/from16 v2, p2

    .line 75
    .line 76
    iput-object v2, v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;->L$1:Lme/rerere/rikkahub/data/model/MessageNode;

    .line 77
    .line 78
    move/from16 v4, p3

    .line 79
    .line 80
    iput v4, v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;->I$0:I

    .line 81
    .line 82
    iput v7, v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;->label:I

    .line 83
    .line 84
    invoke-virtual {v0, v1, v3}, Lme/rerere/rikkahub/service/ChatService;->ensureConversationFullyLoaded(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    if-ne v7, v8, :cond_5b

    .line 89
    .line 90
    goto/16 :goto_eb

    .line 91
    .line 92
    :cond_5b
    :goto_5b
    invoke-virtual {v0, v1}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v7}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    move-object v9, v7

    .line 101
    check-cast v9, Lme/rerere/rikkahub/data/model/Conversation;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lme/rerere/rikkahub/service/ChatService;->clearRecallHistory(Lkotlin/uuid/Uuid;)V

    .line 104
    .line 105
    .line 106
    sget-object v7, Lme/rerere/rikkahub/service/ChatServiceKt;->DEEPSEEK_MODEL_RE:Lkotlin/text/Regex;

    .line 107
    .line 108
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    const/4 v10, 0x0

    .line 123
    move v11, v10

    .line 124
    :goto_7b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    if-eqz v12, :cond_99

    .line 129
    .line 130
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    check-cast v12, Lme/rerere/rikkahub/data/model/MessageNode;

    .line 135
    .line 136
    invoke-virtual {v12}, Lme/rerere/rikkahub/data/model/MessageNode;->getId()Lkotlin/uuid/Uuid;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/model/MessageNode;->getId()Lkotlin/uuid/Uuid;

    .line 141
    .line 142
    .line 143
    move-result-object v13

    .line 144
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    if-eqz v12, :cond_96

    .line 149
    .line 150
    goto :goto_9a

    .line 151
    :cond_96
    add-int/lit8 v11, v11, 0x1

    .line 152
    .line 153
    goto :goto_7b

    .line 154
    :cond_99
    const/4 v11, -0x1

    .line 155
    :goto_9a
    invoke-virtual {v9}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    if-ltz v11, :cond_a8

    .line 164
    .line 165
    invoke-virtual {v13, v11, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    goto :goto_b3

    .line 169
    :cond_a8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    invoke-static {v4, v10, v7}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    invoke-virtual {v13, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :goto_b3
    const v30, 0xffff7

    .line 181
    .line 182
    .line 183
    const/16 v31, 0x0

    .line 184
    .line 185
    const/4 v10, 0x0

    .line 186
    const/4 v11, 0x0

    .line 187
    const/4 v12, 0x0

    .line 188
    const/4 v14, 0x0

    .line 189
    const/4 v15, 0x0

    .line 190
    const/16 v16, 0x0

    .line 191
    .line 192
    const/16 v17, 0x0

    .line 193
    .line 194
    const/16 v18, 0x0

    .line 195
    .line 196
    const/16 v19, 0x0

    .line 197
    .line 198
    const/16 v20, 0x0

    .line 199
    .line 200
    const/16 v21, 0x0

    .line 201
    .line 202
    const/16 v22, 0x0

    .line 203
    .line 204
    const/16 v23, 0x0

    .line 205
    .line 206
    const/16 v24, 0x0

    .line 207
    .line 208
    const/16 v25, 0x0

    .line 209
    .line 210
    const/16 v26, 0x0

    .line 211
    .line 212
    const/16 v27, 0x0

    .line 213
    .line 214
    const/16 v28, 0x0

    .line 215
    .line 216
    const/16 v29, 0x0

    .line 217
    .line 218
    invoke-static/range {v9 .. v31}, Lme/rerere/rikkahub/data/model/Conversation;->copy$default(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/ConversationCompression;ZLjava/lang/Integer;Ljava/util/Set;ZIZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    iput-object v6, v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;->L$0:Lkotlin/uuid/Uuid;

    .line 223
    .line 224
    iput-object v6, v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;->L$1:Lme/rerere/rikkahub/data/model/MessageNode;

    .line 225
    .line 226
    iput v4, v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;->I$0:I

    .line 227
    .line 228
    iput v5, v3, Lme/rerere/rikkahub/service/ChatService$restoreMessageNode$1;->label:I

    .line 229
    .line 230
    invoke-virtual {v0, v1, v2, v3}, Lme/rerere/rikkahub/service/ChatService;->saveConversation(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-ne v0, v8, :cond_ec

    .line 235
    .line 236
    :goto_eb
    return-object v8

    .line 237
    :cond_ec
    return-object v0
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
.end method

.method public final retryOnTransientError(Lme/rerere/rikkahub/service/ChatService$compressConversation$2$compressedSummaries$1$1$1$1$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 14

    .line 1
    instance-of v0, p2, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;

    .line 7
    .line 8
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_13

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->label:I

    .line 18
    .line 19
    goto :goto_18

    .line 20
    :cond_13
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_18
    iget-object p0, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget p2, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->label:I

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    const/4 v2, 0x1

    .line 31
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    if-eqz p2, :cond_4d

    .line 34
    .line 35
    if-eq p2, v2, :cond_3f

    .line 36
    .line 37
    if-ne p2, v1, :cond_38

    .line 38
    .line 39
    iget p1, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->I$1:I

    .line 40
    .line 41
    iget p2, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->I$0:I

    .line 42
    .line 43
    iget-object v4, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 44
    .line 45
    iget-object v5, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->L$0:Lkotlin/jvm/functions/Function1;

    .line 46
    .line 47
    :try_start_2e
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2e .. :try_end_31} :catch_99
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :catchall_32
    move-exception p0

    .line 52
    move-object v10, v4

    .line 53
    move v4, p2

    .line 54
    :goto_35
    move-object p2, v10

    .line 55
    goto/16 :goto_93

    .line 56
    .line 57
    :cond_38
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0

    .line 64
    :cond_3f
    iget p1, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->I$2:I

    .line 65
    .line 66
    iget p2, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->I$1:I

    .line 67
    .line 68
    iget v4, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->I$0:I

    .line 69
    .line 70
    iget-object v5, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 71
    .line 72
    iget-object v6, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->L$0:Lkotlin/jvm/functions/Function1;

    .line 73
    .line 74
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_74

    .line 78
    :cond_4d
    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraId$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const/4 p2, 0x3

    .line 83
    const/4 v4, 0x0

    .line 84
    move-object v5, p0

    .line 85
    move-object p0, p1

    .line 86
    move p1, v4

    .line 87
    move v4, p2

    .line 88
    :goto_57
    if-ge p1, v4, :cond_9b

    .line 89
    .line 90
    if-lez p1, :cond_79

    .line 91
    .line 92
    const-wide/16 v6, 0x1f4

    .line 93
    .line 94
    int-to-long v8, p1

    .line 95
    mul-long/2addr v8, v6

    .line 96
    iput-object p0, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->L$0:Lkotlin/jvm/functions/Function1;

    .line 97
    .line 98
    iput-object v5, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 99
    .line 100
    iput v4, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->I$0:I

    .line 101
    .line 102
    iput p1, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->I$1:I

    .line 103
    .line 104
    iput p1, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->I$2:I

    .line 105
    .line 106
    iput v2, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->label:I

    .line 107
    .line 108
    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    if-ne p2, v3, :cond_72

    .line 113
    .line 114
    goto :goto_8c

    .line 115
    :cond_72
    move-object v6, p0

    .line 116
    move p2, p1

    .line 117
    :goto_74
    move p0, p2

    .line 118
    move p2, p1

    .line 119
    move p1, p0

    .line 120
    move-object p0, v6

    .line 121
    goto :goto_7a

    .line 122
    :cond_79
    move p2, p1

    .line 123
    :goto_7a
    :try_start_7a
    iput-object p0, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->L$0:Lkotlin/jvm/functions/Function1;

    .line 124
    .line 125
    iput-object v5, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 126
    .line 127
    iput v4, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->I$0:I

    .line 128
    .line 129
    iput p1, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->I$1:I

    .line 130
    .line 131
    iput p2, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->I$2:I

    .line 132
    .line 133
    iput v1, v0, Lme/rerere/rikkahub/service/ChatService$retryOnTransientError$1;->label:I

    .line 134
    .line 135
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p0
    :try_end_8a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7a .. :try_end_8a} :catch_99
    .catchall {:try_start_7a .. :try_end_8a} :catchall_8e

    .line 139
    if-ne p0, v3, :cond_8d

    .line 140
    .line 141
    :goto_8c
    return-object v3

    .line 142
    :cond_8d
    return-object p0

    .line 143
    :catchall_8e
    move-exception p2

    .line 144
    move-object v10, v5

    .line 145
    move-object v5, p0

    .line 146
    move-object p0, p2

    .line 147
    goto :goto_35

    .line 148
    :goto_93
    iput-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 149
    .line 150
    add-int/2addr p1, v2

    .line 151
    move-object p0, v5

    .line 152
    move-object v5, p2

    .line 153
    goto :goto_57

    .line 154
    :catch_99
    move-exception p0

    .line 155
    throw p0

    .line 156
    :cond_9b
    iget-object p0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p0, Ljava/lang/Throwable;

    .line 159
    .line 160
    if-nez p0, :cond_a8

    .line 161
    .line 162
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 163
    .line 164
    const-string p1, "compression request failed"

    .line 165
    .line 166
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_a8
    throw p0
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
.end method

.method public final rollbackIncompleteAssistantMessage(Lkotlin/uuid/Uuid;)Lkotlin/Unit;
    .registers 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    move-object v3, v2

    .line 14
    check-cast v3, Lme/rerere/rikkahub/data/model/Conversation;

    .line 15
    .line 16
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/model/Conversation;->getCurrentMessages()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v4, Lme/rerere/rikkahub/service/ChatServiceKt;->DEEPSEEK_MODEL_RE:Lkotlin/text/Regex;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lme/rerere/ai/ui/UIMessage;

    .line 30
    .line 31
    sget-object v26, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    .line 33
    if-nez v2, :cond_24

    .line 34
    .line 35
    goto/16 :goto_97

    .line 36
    .line 37
    :cond_24
    invoke-virtual {v2}, Lme/rerere/ai/ui/UIMessage;->getRole()Lme/rerere/ai/core/MessageRole;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    sget-object v5, Lme/rerere/ai/core/MessageRole;->ASSISTANT:Lme/rerere/ai/core/MessageRole;

    .line 42
    .line 43
    if-ne v4, v5, :cond_97

    .line 44
    .line 45
    invoke-virtual {v2}, Lme/rerere/ai/ui/UIMessage;->getFinishedAt()Lkotlinx/datetime/LocalDateTime;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-nez v4, :cond_97

    .line 50
    .line 51
    invoke-virtual {v2}, Lme/rerere/ai/ui/UIMessage;->getTools()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_3f

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_3f

    .line 62
    .line 63
    goto :goto_56

    .line 64
    :cond_3f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    :cond_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_56

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Lme/rerere/ai/ui/UIMessagePart$Tool;

    .line 79
    .line 80
    invoke-virtual {v4}, Lme/rerere/ai/ui/UIMessagePart$Tool;->isExecuted()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_43

    .line 85
    .line 86
    goto :goto_97

    .line 87
    :cond_56
    :goto_56
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_97

    .line 96
    .line 97
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const/4 v4, 0x1

    .line 102
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->dropLast(ILjava/util/List;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    const v24, 0xfff77

    .line 114
    .line 115
    .line 116
    const/16 v25, 0x0

    .line 117
    .line 118
    const/4 v4, 0x0

    .line 119
    const/4 v5, 0x0

    .line 120
    const/4 v6, 0x0

    .line 121
    const/4 v8, 0x0

    .line 122
    const/4 v9, 0x0

    .line 123
    const/4 v10, 0x0

    .line 124
    const/4 v12, 0x0

    .line 125
    const/4 v13, 0x0

    .line 126
    const/4 v14, 0x0

    .line 127
    const/4 v15, 0x0

    .line 128
    const/16 v16, 0x0

    .line 129
    .line 130
    const/16 v17, 0x0

    .line 131
    .line 132
    const/16 v18, 0x0

    .line 133
    .line 134
    const/16 v19, 0x0

    .line 135
    .line 136
    const/16 v20, 0x0

    .line 137
    .line 138
    const/16 v21, 0x0

    .line 139
    .line 140
    const/16 v22, 0x0

    .line 141
    .line 142
    const/16 v23, 0x0

    .line 143
    .line 144
    invoke-static/range {v3 .. v25}, Lme/rerere/rikkahub/data/model/Conversation;->copy$default(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/ConversationCompression;ZLjava/lang/Integer;Ljava/util/Set;ZIZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v0, v2, v1}, Lme/rerere/rikkahub/service/ChatService;->updateConversation(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;)V

    .line 149
    .line 150
    .line 151
    return-object v26

    .line 152
    :cond_97
    :goto_97
    invoke-virtual {v3}, Lme/rerere/rikkahub/data/model/Conversation;->getCurrentMessages()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Lme/rerere/ai/ui/UIMessage;

    .line 161
    .line 162
    if-eqz v2, :cond_db

    .line 163
    .line 164
    invoke-virtual {v2}, Lme/rerere/ai/ui/UIMessage;->getRole()Lme/rerere/ai/core/MessageRole;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    sget-object v5, Lme/rerere/ai/core/MessageRole;->ASSISTANT:Lme/rerere/ai/core/MessageRole;

    .line 169
    .line 170
    if-ne v4, v5, :cond_db

    .line 171
    .line 172
    invoke-virtual {v2}, Lme/rerere/ai/ui/UIMessage;->getFinishedAt()Lkotlinx/datetime/LocalDateTime;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    if-nez v4, :cond_db

    .line 177
    .line 178
    invoke-virtual {v2}, Lme/rerere/ai/ui/UIMessage;->getTools()Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    if-eqz v2, :cond_be

    .line 183
    .line 184
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-eqz v4, :cond_be

    .line 189
    .line 190
    goto :goto_db

    .line 191
    :cond_be
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    :cond_c2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_db

    .line 200
    .line 201
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    check-cast v4, Lme/rerere/ai/ui/UIMessagePart$Tool;

    .line 206
    .line 207
    invoke-virtual {v4}, Lme/rerere/ai/ui/UIMessagePart$Tool;->isExecuted()Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-eqz v4, :cond_c2

    .line 212
    .line 213
    invoke-static {v3}, Lme/rerere/rikkahub/service/ChatService;->finalizeInterruptedAssistantMessages(Lme/rerere/rikkahub/data/model/Conversation;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v0, v2, v1}, Lme/rerere/rikkahub/service/ChatService;->updateConversation(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;)V

    .line 218
    .line 219
    .line 220
    :cond_db
    :goto_db
    return-object v26
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
.end method

.method public final saveConversation(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    instance-of v2, v1, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;

    .line 6
    .line 7
    if-eqz v2, :cond_17

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;

    .line 11
    .line 12
    iget v3, v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_17

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;->label:I

    .line 22
    .line 23
    goto :goto_1c

    .line 24
    :cond_17
    new-instance v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_1c
    iget-object v1, v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;->label:I

    .line 32
    .line 33
    iget-object v4, v0, Lme/rerere/rikkahub/service/ChatService;->conversationRepo:Lme/rerere/rikkahub/data/repository/ConversationRepository;

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    const/4 v8, 0x0

    .line 39
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 40
    .line 41
    if-eqz v3, :cond_48

    .line 42
    .line 43
    if-eq v3, v7, :cond_3e

    .line 44
    .line 45
    if-eq v3, v6, :cond_3a

    .line 46
    .line 47
    if-ne v3, v5, :cond_34

    .line 48
    .line 49
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v8

    .line 59
    :cond_3a
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-object v1

    .line 63
    :cond_3e
    iget-object v3, v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 64
    .line 65
    iget-object v7, v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 66
    .line 67
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    move-object v10, v3

    .line 71
    move-object v3, v7

    .line 72
    goto :goto_66

    .line 73
    :cond_48
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p2 .. p2}, Lme/rerere/rikkahub/data/model/Conversation;->getId()Lkotlin/uuid/Uuid;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    move-object/from16 v3, p1

    .line 81
    .line 82
    iput-object v3, v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 83
    .line 84
    move-object/from16 v10, p2

    .line 85
    .line 86
    iput-object v10, v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 87
    .line 88
    iput v7, v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;->label:I

    .line 89
    .line 90
    iget-object v7, v4, Lme/rerere/rikkahub/data/repository/ConversationRepository;->conversationDAO:Lme/rerere/rikkahub/data/db/dao/ConversationDAO;

    .line 91
    .line 92
    invoke-virtual {v1}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-interface {v7, v1, v2}, Lme/rerere/rikkahub/data/db/dao/ConversationDAO;->existsById(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-ne v1, v9, :cond_66

    .line 101
    .line 102
    goto :goto_d0

    .line 103
    :cond_66
    :goto_66
    check-cast v1, Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_85

    .line 110
    .line 111
    invoke-virtual {v10}, Lme/rerere/rikkahub/data/model/Conversation;->getTitle()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-static {v7}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-eqz v7, :cond_85

    .line 120
    .line 121
    invoke-virtual {v10}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_85

    .line 130
    .line 131
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 132
    .line 133
    return-object v0

    .line 134
    :cond_85
    const v31, 0xfffff

    .line 135
    .line 136
    .line 137
    const/16 v32, 0x0

    .line 138
    .line 139
    const/4 v11, 0x0

    .line 140
    const/4 v12, 0x0

    .line 141
    const/4 v13, 0x0

    .line 142
    const/4 v14, 0x0

    .line 143
    const/4 v15, 0x0

    .line 144
    const/16 v16, 0x0

    .line 145
    .line 146
    const/16 v17, 0x0

    .line 147
    .line 148
    const/16 v18, 0x0

    .line 149
    .line 150
    const/16 v19, 0x0

    .line 151
    .line 152
    const/16 v20, 0x0

    .line 153
    .line 154
    const/16 v21, 0x0

    .line 155
    .line 156
    const/16 v22, 0x0

    .line 157
    .line 158
    const/16 v23, 0x0

    .line 159
    .line 160
    const/16 v24, 0x0

    .line 161
    .line 162
    const/16 v25, 0x0

    .line 163
    .line 164
    const/16 v26, 0x0

    .line 165
    .line 166
    const/16 v27, 0x0

    .line 167
    .line 168
    const/16 v28, 0x0

    .line 169
    .line 170
    const/16 v29, 0x0

    .line 171
    .line 172
    const/16 v30, 0x0

    .line 173
    .line 174
    invoke-static/range {v10 .. v32}, Lme/rerere/rikkahub/data/model/Conversation;->copy$default(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/ConversationCompression;ZLjava/lang/Integer;Ljava/util/Set;ZIZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-virtual {v0, v7, v3}, Lme/rerere/rikkahub/service/ChatService;->updateConversation(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;)V

    .line 179
    .line 180
    .line 181
    if-nez v1, :cond_c4

    .line 182
    .line 183
    iput-object v8, v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 184
    .line 185
    iput-object v8, v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 186
    .line 187
    iput v6, v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;->label:I

    .line 188
    .line 189
    invoke-virtual {v4, v7, v2}, Lme/rerere/rikkahub/data/repository/ConversationRepository;->insertConversation(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    if-ne v0, v9, :cond_c3

    .line 194
    .line 195
    goto :goto_d0

    .line 196
    :cond_c3
    return-object v0

    .line 197
    :cond_c4
    iput-object v8, v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;->L$0:Lkotlin/uuid/Uuid;

    .line 198
    .line 199
    iput-object v8, v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;->L$1:Lme/rerere/rikkahub/data/model/Conversation;

    .line 200
    .line 201
    iput v5, v2, Lme/rerere/rikkahub/service/ChatService$saveConversation$1;->label:I

    .line 202
    .line 203
    invoke-virtual {v4, v7, v2}, Lme/rerere/rikkahub/data/repository/ConversationRepository;->updateConversation(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-ne v0, v9, :cond_d1

    .line 208
    .line 209
    :goto_d0
    return-object v9

    .line 210
    :cond_d1
    return-object v0
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
.end method

.method public final selectMessageNode(Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    instance-of v3, v2, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;

    .line 8
    .line 9
    if-eqz v3, :cond_19

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;

    .line 13
    .line 14
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_19

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;->label:I

    .line 24
    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    new-instance v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_1e
    iget-object v2, v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;->label:I

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 39
    .line 40
    if-eqz v4, :cond_44

    .line 41
    .line 42
    if-eq v4, v6, :cond_37

    .line 43
    .line 44
    if-ne v4, v5, :cond_31

    .line 45
    .line 46
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v7

    .line 56
    :cond_37
    iget v1, v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;->I$0:I

    .line 57
    .line 58
    iget-object v4, v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;->L$1:Lkotlin/uuid/Uuid;

    .line 59
    .line 60
    iget-object v6, v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;->L$0:Lkotlin/uuid/Uuid;

    .line 61
    .line 62
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move v12, v1

    .line 66
    move-object v2, v4

    .line 67
    move-object v1, v6

    .line 68
    goto :goto_5c

    .line 69
    :cond_44
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;->L$0:Lkotlin/uuid/Uuid;

    .line 73
    .line 74
    move-object/from16 v2, p2

    .line 75
    .line 76
    iput-object v2, v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;->L$1:Lkotlin/uuid/Uuid;

    .line 77
    .line 78
    move/from16 v4, p3

    .line 79
    .line 80
    iput v4, v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;->I$0:I

    .line 81
    .line 82
    iput v6, v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;->label:I

    .line 83
    .line 84
    invoke-virtual {v0, v1, v3}, Lme/rerere/rikkahub/service/ChatService;->ensureConversationFullyLoaded(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    if-ne v6, v8, :cond_5b

    .line 89
    .line 90
    goto/16 :goto_121

    .line 91
    .line 92
    :cond_5b
    move v12, v4

    .line 93
    :goto_5c
    invoke-virtual {v0, v1}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Lme/rerere/rikkahub/data/model/Conversation;

    .line 102
    .line 103
    invoke-virtual {v4}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    :cond_6e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_86

    .line 116
    .line 117
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    move-object v10, v9

    .line 122
    check-cast v10, Lme/rerere/rikkahub/data/model/MessageNode;

    .line 123
    .line 124
    invoke-virtual {v10}, Lme/rerere/rikkahub/data/model/MessageNode;->getId()Lkotlin/uuid/Uuid;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    if-eqz v10, :cond_6e

    .line 133
    .line 134
    goto :goto_87

    .line 135
    :cond_86
    move-object v9, v7

    .line 136
    :goto_87
    check-cast v9, Lme/rerere/rikkahub/data/model/MessageNode;

    .line 137
    .line 138
    if-eqz v9, :cond_12b

    .line 139
    .line 140
    if-ltz v12, :cond_123

    .line 141
    .line 142
    invoke-virtual {v9}, Lme/rerere/rikkahub/data/model/MessageNode;->getMessages()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-ge v12, v6, :cond_123

    .line 151
    .line 152
    invoke-virtual {v9}, Lme/rerere/rikkahub/data/model/MessageNode;->getSelectIndex()I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-ne v6, v12, :cond_a0

    .line 157
    .line 158
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 159
    .line 160
    return-object v0

    .line 161
    :cond_a0
    invoke-virtual {v4}, Lme/rerere/rikkahub/data/model/Conversation;->getMessageNodes()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    new-instance v9, Ljava/util/ArrayList;

    .line 166
    .line 167
    const/16 v10, 0xa

    .line 168
    .line 169
    invoke-static {v6, v10}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .line 175
    .line 176
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    :goto_b3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    if-eqz v10, :cond_e1

    .line 185
    .line 186
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    check-cast v10, Lme/rerere/rikkahub/data/model/MessageNode;

    .line 191
    .line 192
    invoke-virtual {v10}, Lme/rerere/rikkahub/data/model/MessageNode;->getId()Lkotlin/uuid/Uuid;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v11

    .line 200
    if-eqz v11, :cond_d9

    .line 201
    .line 202
    const/16 v14, 0xb

    .line 203
    .line 204
    const/4 v15, 0x0

    .line 205
    move-object/from16 v17, v9

    .line 206
    .line 207
    move-object v9, v10

    .line 208
    const/4 v10, 0x0

    .line 209
    const/4 v11, 0x0

    .line 210
    const/4 v13, 0x0

    .line 211
    move-object/from16 v5, v17

    .line 212
    .line 213
    invoke-static/range {v9 .. v15}, Lme/rerere/rikkahub/data/model/MessageNode;->copy$default(Lme/rerere/rikkahub/data/model/MessageNode;Lkotlin/uuid/Uuid;Ljava/util/List;IZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/MessageNode;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    goto :goto_db

    .line 218
    :cond_d9
    move-object v5, v9

    .line 219
    move-object v9, v10

    .line 220
    :goto_db
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-object v9, v5

    .line 224
    const/4 v5, 0x2

    .line 225
    goto :goto_b3

    .line 226
    :cond_e1
    move-object v5, v9

    .line 227
    const v34, 0xffff7

    .line 228
    .line 229
    .line 230
    const/16 v35, 0x0

    .line 231
    .line 232
    const/4 v14, 0x0

    .line 233
    const/4 v15, 0x0

    .line 234
    const/16 v16, 0x0

    .line 235
    .line 236
    const/16 v18, 0x0

    .line 237
    .line 238
    const/16 v19, 0x0

    .line 239
    .line 240
    const/16 v20, 0x0

    .line 241
    .line 242
    const/16 v21, 0x0

    .line 243
    .line 244
    const/16 v22, 0x0

    .line 245
    .line 246
    const/16 v23, 0x0

    .line 247
    .line 248
    const/16 v24, 0x0

    .line 249
    .line 250
    const/16 v25, 0x0

    .line 251
    .line 252
    const/16 v26, 0x0

    .line 253
    .line 254
    const/16 v27, 0x0

    .line 255
    .line 256
    const/16 v28, 0x0

    .line 257
    .line 258
    const/16 v29, 0x0

    .line 259
    .line 260
    const/16 v30, 0x0

    .line 261
    .line 262
    const/16 v31, 0x0

    .line 263
    .line 264
    const/16 v32, 0x0

    .line 265
    .line 266
    const/16 v33, 0x0

    .line 267
    .line 268
    move-object v13, v4

    .line 269
    move-object/from16 v17, v5

    .line 270
    .line 271
    invoke-static/range {v13 .. v35}, Lme/rerere/rikkahub/data/model/Conversation;->copy$default(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/ConversationCompression;ZLjava/lang/Integer;Ljava/util/Set;ZIZILjava/lang/Object;)Lme/rerere/rikkahub/data/model/Conversation;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    iput-object v7, v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;->L$0:Lkotlin/uuid/Uuid;

    .line 276
    .line 277
    iput-object v7, v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;->L$1:Lkotlin/uuid/Uuid;

    .line 278
    .line 279
    iput v12, v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;->I$0:I

    .line 280
    .line 281
    const/4 v4, 0x2

    .line 282
    iput v4, v3, Lme/rerere/rikkahub/service/ChatService$selectMessageNode$1;->label:I

    .line 283
    .line 284
    invoke-virtual {v0, v1, v2, v3}, Lme/rerere/rikkahub/service/ChatService;->saveConversation(Lkotlin/uuid/Uuid;Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    if-ne v0, v8, :cond_122

    .line 289
    .line 290
    :goto_121
    return-object v8

    .line 291
    :cond_122
    return-object v0

    .line 292
    :cond_123
    const-string v0, "Invalid selectIndex"

    .line 293
    .line 294
    sget-object v1, Lio/ktor/http/HttpStatusCode;->BadRequest:Lio/ktor/http/HttpStatusCode;

    .line 295
    .line 296
    invoke-static {v0, v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Lio/ktor/http/HttpStatusCode;)V

    .line 297
    .line 298
    .line 299
    return-object v7

    .line 300
    :cond_12b
    new-instance v0, Lme/rerere/rikkahub/web/NotFoundException;

    .line 301
    .line 302
    const-string v1, "Message node not found"

    .line 303
    .line 304
    sget-object v2, Lio/ktor/http/HttpStatusCode;->NotFound:Lio/ktor/http/HttpStatusCode;

    .line 305
    .line 306
    invoke-direct {v0, v1, v2}, Lme/rerere/rikkahub/web/ApiException;-><init>(Ljava/lang/String;Lio/ktor/http/HttpStatusCode;)V

    .line 307
    .line 308
    .line 309
    throw v0
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
.end method

.method public final sendMessage(Lkotlin/uuid/Uuid;Ljava/util/List;ZLjava/util/Set;)V
    .registers 16

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Lme/rerere/ai/ui/MessageKt;->isEmptyInputMessage(Ljava/util/List;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 15
    .line 16
    return-void

    .line 17
    :cond_10
    iget-object v0, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lme/rerere/rikkahub/service/ChatPool;->getOrCreateSession(Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/service/ConversationSession;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    iget-object v0, v6, Lme/rerere/rikkahub/service/ConversationSession;->_generationJob:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 24
    .line 25
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v9, v0

    .line 30
    check-cast v9, Lkotlinx/coroutines/Job;

    .line 31
    .line 32
    if-eqz v9, :cond_25

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-interface {v9, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 36
    .line 37
    .line 38
    :cond_25
    invoke-virtual/range {p0 .. p1}, Lme/rerere/rikkahub/service/ChatService;->clearRecallHistory(Lkotlin/uuid/Uuid;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lme/rerere/rikkahub/service/ChatService;->exclusionTokenSeq:Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    iget-object v0, p0, Lme/rerere/rikkahub/service/ChatService;->generationEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 50
    .line 51
    .line 52
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$sendMessage$job$1;

    .line 53
    .line 54
    const/4 v10, 0x0

    .line 55
    move-object v1, p0

    .line 56
    move-object v2, p1

    .line 57
    move-object v7, p2

    .line 58
    move v8, p3

    .line 59
    move-object v3, p4

    .line 60
    invoke-direct/range {v0 .. v10}, Lme/rerere/rikkahub/service/ChatService$sendMessage$job$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/uuid/Uuid;Ljava/util/Set;JLme/rerere/rikkahub/service/ConversationSession;Ljava/util/List;ZLkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1, p3, v0}, Lme/rerere/rikkahub/service/ChatService;->launchGenerationJob(Lkotlin/uuid/Uuid;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v6, v0}, Lme/rerere/rikkahub/service/ConversationSession;->setJob(Lkotlinx/coroutines/StandaloneCoroutine;)V

    .line 68
    .line 69
    .line 70
    return-void
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
.end method

.method public final stopGeneration(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p2, Lme/rerere/rikkahub/service/ChatService$stopGeneration$1;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lme/rerere/rikkahub/service/ChatService$stopGeneration$1;

    .line 7
    .line 8
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$stopGeneration$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_13

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lme/rerere/rikkahub/service/ChatService$stopGeneration$1;->label:I

    .line 18
    .line 19
    goto :goto_18

    .line 20
    :cond_13
    new-instance v0, Lme/rerere/rikkahub/service/ChatService$stopGeneration$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lme/rerere/rikkahub/service/ChatService$stopGeneration$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_18
    iget-object p2, v0, Lme/rerere/rikkahub/service/ChatService$stopGeneration$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lme/rerere/rikkahub/service/ChatService$stopGeneration$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 33
    .line 34
    if-eqz v1, :cond_37

    .line 35
    .line 36
    if-eq v1, v3, :cond_31

    .line 37
    .line 38
    if-ne v1, v2, :cond_2b

    .line 39
    .line 40
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object p2

    .line 44
    :cond_2b
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v4

    .line 50
    :cond_31
    iget-object p1, v0, Lme/rerere/rikkahub/service/ChatService$stopGeneration$1;->L$0:Lkotlin/uuid/Uuid;

    .line 51
    .line 52
    :try_start_33
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_5b

    .line 53
    .line 54
    .line 55
    goto :goto_5b

    .line 56
    :cond_37
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Lme/rerere/rikkahub/service/ChatPool;->get(Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/service/ConversationSession;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-eqz p2, :cond_76

    .line 66
    .line 67
    iget-object p2, p2, Lme/rerere/rikkahub/service/ConversationSession;->_generationJob:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 68
    .line 69
    invoke-virtual {p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Lkotlinx/coroutines/Job;

    .line 74
    .line 75
    if-nez p2, :cond_4d

    .line 76
    .line 77
    goto :goto_76

    .line 78
    :cond_4d
    invoke-interface {p2, v4}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 79
    .line 80
    .line 81
    :try_start_50
    iput-object p1, v0, Lme/rerere/rikkahub/service/ChatService$stopGeneration$1;->L$0:Lkotlin/uuid/Uuid;

    .line 82
    .line 83
    iput v3, v0, Lme/rerere/rikkahub/service/ChatService$stopGeneration$1;->label:I

    .line 84
    .line 85
    invoke-interface {p2, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_5b

    .line 89
    if-ne p2, v5, :cond_5b

    .line 90
    .line 91
    goto :goto_74

    .line 92
    :catchall_5b
    :cond_5b
    :goto_5b
    sget-object p2, Lme/rerere/rikkahub/data/metrics/GenerationMetricsRecorder;->startedAtMs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    sget-object p2, Lme/rerere/rikkahub/data/metrics/GenerationMetricsRecorder;->startedAtMs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    sget-object p2, Lme/rerere/rikkahub/data/metrics/GenerationMetricsRecorder;->firstTokenAtMs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    iput-object v4, v0, Lme/rerere/rikkahub/service/ChatService$stopGeneration$1;->L$0:Lkotlin/uuid/Uuid;

    .line 108
    .line 109
    iput v2, v0, Lme/rerere/rikkahub/service/ChatService$stopGeneration$1;->label:I

    .line 110
    .line 111
    invoke-virtual {p0, p1, v0}, Lme/rerere/rikkahub/service/ChatService;->finishInterruptedPendingTools(Lkotlin/uuid/Uuid;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-ne p0, v5, :cond_75

    .line 116
    .line 117
    :goto_74
    return-object v5

    .line 118
    :cond_75
    return-object p0

    .line 119
    :cond_76
    :goto_76
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p0
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
.end method

.method public final storePreferencesFromSummary(Lkotlin/uuid/Uuid;Ljava/lang/String;Lme/rerere/rikkahub/data/model/Assistant;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    const-string v2, "\n                Extract the user\'s preferences, explicit instructions, and hard constraints from the following conversation summary.\n                Each item should be one concise, self-contained sentence, written as a durable memory for future conversations (e.g. \"\u7528\u6237\u504f\u597d\u4f7f\u7528 Kotlin \u800c\u975e Java\").\n                Output one item per line, no numbering, no extra commentary. If there is nothing to extract, output nothing.\n\n                <summary>\n                "

    .line 6
    .line 7
    instance-of v3, v1, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;

    .line 8
    .line 9
    if-eqz v3, :cond_19

    .line 10
    .line 11
    move-object v3, v1

    .line 12
    check-cast v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;

    .line 13
    .line 14
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->label:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_19

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->label:I

    .line 24
    .line 25
    goto :goto_1e

    .line 26
    :cond_19
    new-instance v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v1}, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;-><init>(Lme/rerere/rikkahub/service/ChatService;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_1e
    iget-object v1, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    iget v4, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->label:I

    .line 34
    .line 35
    const-string v5, "ChatService"

    .line 36
    .line 37
    const/4 v6, 0x3

    .line 38
    const/4 v7, 0x1

    .line 39
    const/4 v8, 0x2

    .line 40
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 44
    .line 45
    if-eqz v4, :cond_6b

    .line 46
    .line 47
    if-eq v4, v7, :cond_5f

    .line 48
    .line 49
    if-eq v4, v8, :cond_4d

    .line 50
    .line 51
    if-ne v4, v6, :cond_47

    .line 52
    .line 53
    iget-object v2, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$12:Ljava/util/Iterator;

    .line 54
    .line 55
    iget-object v4, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$8:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v7, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$3:Lme/rerere/rikkahub/service/ChatService;

    .line 58
    .line 59
    iget-object v8, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$0:Lkotlin/uuid/Uuid;

    .line 60
    .line 61
    :try_start_3c
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_43

    .line 62
    .line 63
    .line 64
    move-object v0, v1

    .line 65
    move v1, v6

    .line 66
    goto/16 :goto_229

    .line 67
    .line 68
    :catchall_43
    move-exception v0

    .line 69
    move v1, v6

    .line 70
    goto/16 :goto_23e

    .line 71
    .line 72
    :cond_47
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v10

    .line 78
    :cond_4d
    iget-object v0, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$8:Ljava/lang/String;

    .line 79
    .line 80
    check-cast v0, Lme/rerere/ai/provider/Model;

    .line 81
    .line 82
    iget-object v0, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$3:Lme/rerere/rikkahub/service/ChatService;

    .line 83
    .line 84
    iget-object v2, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$2:Lme/rerere/rikkahub/data/model/Assistant;

    .line 85
    .line 86
    iget-object v4, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$0:Lkotlin/uuid/Uuid;

    .line 87
    .line 88
    :try_start_57
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5c

    .line 89
    .line 90
    .line 91
    goto/16 :goto_16f

    .line 92
    .line 93
    :catchall_5c
    move-exception v0

    .line 94
    goto/16 :goto_253

    .line 95
    .line 96
    :cond_5f
    iget-object v0, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$3:Lme/rerere/rikkahub/service/ChatService;

    .line 97
    .line 98
    iget-object v4, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$2:Lme/rerere/rikkahub/data/model/Assistant;

    .line 99
    .line 100
    iget-object v12, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$1:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v13, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$0:Lkotlin/uuid/Uuid;

    .line 103
    .line 104
    :try_start_67
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_5c

    .line 105
    .line 106
    .line 107
    goto :goto_b1

    .line 108
    :cond_6b
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {p3 .. p3}, Lme/rerere/rikkahub/data/model/Assistant;->getEnableMemory()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_76

    .line 116
    .line 117
    goto/16 :goto_263

    .line 118
    .line 119
    :cond_76
    invoke-static/range {p2 .. p2}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_7e

    .line 124
    .line 125
    goto/16 :goto_263

    .line 126
    .line 127
    :cond_7e
    invoke-virtual/range {p0 .. p1}, Lme/rerere/rikkahub/service/ChatService;->getConversationFlow(Lkotlin/uuid/Uuid;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Lme/rerere/rikkahub/data/model/Conversation;

    .line 136
    .line 137
    invoke-virtual {v1}, Lme/rerere/rikkahub/data/model/Conversation;->getTemporary()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_90

    .line 142
    .line 143
    goto/16 :goto_263

    .line 144
    .line 145
    :cond_90
    :try_start_90
    iget-object v1, v0, Lme/rerere/rikkahub/service/ChatService;->settingsStore:Lme/rerere/rikkahub/data/datastore/SettingsStore;

    .line 146
    .line 147
    iget-object v1, v1, Lme/rerere/rikkahub/data/datastore/SettingsStore;->settingsFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 148
    .line 149
    move-object/from16 v4, p1

    .line 150
    .line 151
    iput-object v4, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$0:Lkotlin/uuid/Uuid;

    .line 152
    .line 153
    move-object/from16 v12, p2

    .line 154
    .line 155
    iput-object v12, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$1:Ljava/lang/String;

    .line 156
    .line 157
    move-object/from16 v13, p3

    .line 158
    .line 159
    iput-object v13, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$2:Lme/rerere/rikkahub/data/model/Assistant;

    .line 160
    .line 161
    iput-object v0, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$3:Lme/rerere/rikkahub/service/ChatService;

    .line 162
    .line 163
    iput v7, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->label:I

    .line 164
    .line 165
    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/FlowKt__ReduceKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    if-ne v1, v11, :cond_ac

    .line 170
    .line 171
    goto/16 :goto_225

    .line 172
    .line 173
    :cond_ac
    move-object/from16 v31, v13

    .line 174
    .line 175
    move-object v13, v4

    .line 176
    move-object/from16 v4, v31

    .line 177
    .line 178
    :goto_b1
    check-cast v1, Lme/rerere/rikkahub/data/datastore/Settings;

    .line 179
    .line 180
    invoke-virtual {v1}, Lme/rerere/rikkahub/data/datastore/Settings;->getMemoryModelId()Lkotlin/uuid/Uuid;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    if-eqz v14, :cond_c0

    .line 185
    .line 186
    invoke-static {v1, v14, v10}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->findModelById(Lme/rerere/rikkahub/data/datastore/Settings;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)Lme/rerere/ai/provider/Model;

    .line 187
    .line 188
    .line 189
    move-result-object v14

    .line 190
    if-eqz v14, :cond_c0

    .line 191
    .line 192
    goto :goto_cc

    .line 193
    :cond_c0
    invoke-virtual {v1}, Lme/rerere/rikkahub/data/datastore/Settings;->getFastModelId()Lkotlin/uuid/Uuid;

    .line 194
    .line 195
    .line 196
    move-result-object v14

    .line 197
    invoke-static {v1, v14, v10}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->findModelById(Lme/rerere/rikkahub/data/datastore/Settings;Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)Lme/rerere/ai/provider/Model;

    .line 198
    .line 199
    .line 200
    move-result-object v14

    .line 201
    if-nez v14, :cond_cc

    .line 202
    .line 203
    goto/16 :goto_263

    .line 204
    .line 205
    :cond_cc
    :goto_cc
    invoke-virtual {v1}, Lme/rerere/rikkahub/data/datastore/Settings;->getProviders()Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v15

    .line 209
    invoke-static {v14, v15, v7}, Lme/rerere/rikkahub/data/datastore/PreferencesStoreKt;->findProvider(Lme/rerere/ai/provider/Model;Ljava/util/List;Z)Lme/rerere/ai/provider/ProviderSetting;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    if-nez v7, :cond_d8

    .line 214
    .line 215
    goto/16 :goto_263

    .line 216
    .line 217
    :cond_d8
    iget-object v15, v0, Lme/rerere/rikkahub/service/ChatService;->providerManager:Lme/rerere/ai/provider/ProviderManager;

    .line 218
    .line 219
    invoke-virtual {v15, v7}, Lme/rerere/ai/provider/ProviderManager;->getProviderByType(Lme/rerere/ai/provider/ProviderSetting;)Lme/rerere/ai/provider/Provider;

    .line 220
    .line 221
    .line 222
    move-result-object v15

    .line 223
    invoke-virtual {v1}, Lme/rerere/rikkahub/data/datastore/Settings;->getMemoryPrompt()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v16

    .line 227
    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt___StringsJvmKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v16

    .line 231
    if-nez v16, :cond_10b

    .line 232
    .line 233
    invoke-virtual {v1}, Lme/rerere/rikkahub/data/datastore/Settings;->getMemoryPrompt()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    const-string v2, "content"

    .line 238
    .line 239
    new-instance v6, Lkotlin/Pair;

    .line 240
    .line 241
    invoke-direct {v6, v2, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    const-string v2, "locale"

    .line 245
    .line 246
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 247
    .line 248
    .line 249
    move-result-object v12

    .line 250
    invoke-virtual {v12}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v12

    .line 254
    new-instance v8, Lkotlin/Pair;

    .line 255
    .line 256
    invoke-direct {v8, v2, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    filled-new-array {v6, v8}, [Lkotlin/Pair;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-static {v1, v2}, Lme/rerere/rikkahub/utils/StringUtilsKt;->applyPlaceholders(Ljava/lang/String;[Lkotlin/Pair;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    goto :goto_120

    .line 268
    :cond_10b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v2, "\n                </summary>\n                "

    .line 277
    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-static {v1}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    :goto_120
    sget-object v2, Lme/rerere/ai/ui/UIMessage;->Companion:Lme/rerere/ai/ui/UIMessage$Companion;

    .line 290
    .line 291
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    invoke-static {v1}, Lme/rerere/ai/ui/UIMessage$Companion;->user(Ljava/lang/String;)Lme/rerere/ai/ui/UIMessage;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-static {v1}, Lpalettes/TonalPalette$Companion;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    sget-object v2, Lme/rerere/ai/core/ReasoningLevel;->OFF:Lme/rerere/ai/core/ReasoningLevel;

    .line 303
    .line 304
    invoke-static {v14, v2, v10, v10, v7}, Lme/rerere/rikkahub/service/ChatServiceKt;->backgroundTextGenerationParams(Lme/rerere/ai/provider/Model;Lme/rerere/ai/core/ReasoningLevel;Ljava/lang/Integer;Ljava/lang/String;Lme/rerere/ai/provider/ProviderSetting;)Lme/rerere/ai/provider/TextGenerationParams;

    .line 305
    .line 306
    .line 307
    move-result-object v17

    .line 308
    new-instance v2, Ljava/lang/Integer;

    .line 309
    .line 310
    const/16 v6, 0x800

    .line 311
    .line 312
    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 313
    .line 314
    .line 315
    const/16 v29, 0x7f7

    .line 316
    .line 317
    const/16 v30, 0x0

    .line 318
    .line 319
    const/16 v18, 0x0

    .line 320
    .line 321
    const/16 v19, 0x0

    .line 322
    .line 323
    const/16 v20, 0x0

    .line 324
    .line 325
    const/16 v22, 0x0

    .line 326
    .line 327
    const/16 v23, 0x0

    .line 328
    .line 329
    const/16 v24, 0x0

    .line 330
    .line 331
    const/16 v25, 0x0

    .line 332
    .line 333
    const/16 v26, 0x0

    .line 334
    .line 335
    const/16 v27, 0x0

    .line 336
    .line 337
    const/16 v28, 0x0

    .line 338
    .line 339
    move-object/from16 v21, v2

    .line 340
    .line 341
    invoke-static/range {v17 .. v30}, Lme/rerere/ai/provider/TextGenerationParams;->copy$default(Lme/rerere/ai/provider/TextGenerationParams;Lme/rerere/ai/provider/Model;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/util/List;Lme/rerere/ai/core/ReasoningLevel;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lme/rerere/ai/provider/TextGenerationParams;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    iput-object v13, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$0:Lkotlin/uuid/Uuid;

    .line 346
    .line 347
    iput-object v10, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$1:Ljava/lang/String;

    .line 348
    .line 349
    iput-object v4, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$2:Lme/rerere/rikkahub/data/model/Assistant;

    .line 350
    .line 351
    iput-object v0, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$3:Lme/rerere/rikkahub/service/ChatService;

    .line 352
    .line 353
    iput-object v10, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$8:Ljava/lang/String;

    .line 354
    .line 355
    const/4 v6, 0x2

    .line 356
    iput v6, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->label:I

    .line 357
    .line 358
    invoke-interface {v15, v7, v1, v2, v3}, Lme/rerere/ai/provider/Provider;->generateText(Lme/rerere/ai/provider/ProviderSetting;Ljava/util/List;Lme/rerere/ai/provider/TextGenerationParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    if-ne v1, v11, :cond_16d

    .line 363
    .line 364
    goto/16 :goto_225

    .line 365
    .line 366
    :cond_16d
    move-object v2, v4

    .line 367
    move-object v4, v13

    .line 368
    :goto_16f
    check-cast v1, Lme/rerere/ai/provider/TextGenerationResult;

    .line 369
    .line 370
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/model/Assistant;->getUseGlobalMemory()Z

    .line 371
    .line 372
    .line 373
    move-result v6

    .line 374
    if-eqz v6, :cond_17a

    .line 375
    .line 376
    const-string v2, "__global__"

    .line 377
    .line 378
    goto :goto_182

    .line 379
    :cond_17a
    invoke-virtual {v2}, Lme/rerere/rikkahub/data/model/Assistant;->getId()Lkotlin/uuid/Uuid;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v2}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    :goto_182
    invoke-virtual {v1}, Lme/rerere/ai/provider/TextGenerationResult;->getMessage()Lme/rerere/ai/ui/UIMessage;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-virtual {v1}, Lme/rerere/ai/ui/UIMessage;->toText()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-static {v1}, Lkotlin/text/StringsKt___StringsJvmKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    new-instance v6, Ljava/util/ArrayList;

    .line 400
    .line 401
    const/16 v7, 0xa

    .line 402
    .line 403
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 404
    .line 405
    .line 406
    move-result v7

    .line 407
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    .line 409
    .line 410
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    :goto_19d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 415
    .line 416
    .line 417
    move-result v7

    .line 418
    if-eqz v7, :cond_1c7

    .line 419
    .line 420
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v7

    .line 424
    check-cast v7, Ljava/lang/String;

    .line 425
    .line 426
    invoke-static {v7}, Lkotlin/text/StringsKt___StringsJvmKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 427
    .line 428
    .line 429
    move-result-object v7

    .line 430
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v7

    .line 434
    const/4 v8, 0x3

    .line 435
    new-array v12, v8, [C

    .line 436
    .line 437
    fill-array-data v12, :array_264

    .line 438
    .line 439
    .line 440
    invoke-static {v7, v12}, Lkotlin/text/StringsKt___StringsJvmKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v7

    .line 444
    invoke-static {v7}, Lkotlin/text/StringsKt___StringsJvmKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v7

    .line 452
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    goto :goto_19d

    .line 456
    :cond_1c7
    new-instance v1, Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 462
    .line 463
    .line 464
    move-result-object v6

    .line 465
    :cond_1d0
    :goto_1d0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 466
    .line 467
    .line 468
    move-result v7

    .line 469
    if-eqz v7, :cond_1ec

    .line 470
    .line 471
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v7

    .line 475
    move-object v8, v7

    .line 476
    check-cast v8, Ljava/lang/String;

    .line 477
    .line 478
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 479
    .line 480
    .line 481
    move-result v8

    .line 482
    const/4 v12, 0x6

    .line 483
    if-gt v12, v8, :cond_1d0

    .line 484
    .line 485
    const/16 v12, 0x12d

    .line 486
    .line 487
    if-ge v8, v12, :cond_1d0

    .line 488
    .line 489
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    goto :goto_1d0

    .line 493
    :cond_1ec
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    move-object v7, v0

    .line 498
    move-object v13, v2

    .line 499
    move-object v8, v4

    .line 500
    move-object v2, v1

    .line 501
    :cond_1f4
    :goto_1f4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-eqz v0, :cond_251

    .line 506
    .line 507
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    move-object v14, v0

    .line 512
    check-cast v14, Ljava/lang/String;
    :try_end_201
    .catchall {:try_start_90 .. :try_end_201} :catchall_5c

    .line 513
    .line 514
    :try_start_201
    iget-object v12, v7, Lme/rerere/rikkahub/service/ChatService;->memoryRepository:Lme/rerere/rikkahub/data/repository/MemoryRepository;

    .line 515
    .line 516
    const-string v17, "compression"

    .line 517
    .line 518
    invoke-virtual {v8}, Lkotlin/uuid/Uuid;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v18

    .line 522
    iput-object v8, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$0:Lkotlin/uuid/Uuid;

    .line 523
    .line 524
    iput-object v10, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$1:Ljava/lang/String;

    .line 525
    .line 526
    iput-object v10, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$2:Lme/rerere/rikkahub/data/model/Assistant;

    .line 527
    .line 528
    iput-object v7, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$3:Lme/rerere/rikkahub/service/ChatService;

    .line 529
    .line 530
    iput-object v13, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$8:Ljava/lang/String;

    .line 531
    .line 532
    iput-object v2, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->L$12:Ljava/util/Iterator;
    :try_end_215
    .catchall {:try_start_201 .. :try_end_215} :catchall_239

    .line 533
    .line 534
    const/4 v1, 0x3

    .line 535
    :try_start_216
    iput v1, v3, Lme/rerere/rikkahub/service/ChatService$storePreferencesFromSummary$1;->label:I
    :try_end_218
    .catchall {:try_start_216 .. :try_end_218} :catchall_234

    .line 536
    .line 537
    const/4 v15, 0x0

    .line 538
    const/16 v16, 0x0

    .line 539
    .line 540
    const/16 v20, 0xc

    .line 541
    .line 542
    move-object/from16 v19, v3

    .line 543
    .line 544
    :try_start_21f
    invoke-static/range {v12 .. v20}, Lme/rerere/rikkahub/data/repository/MemoryRepository;->storeMemory$default(Lme/rerere/rikkahub/data/repository/MemoryRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v0
    :try_end_223
    .catchall {:try_start_21f .. :try_end_223} :catchall_22f

    .line 548
    if-ne v0, v11, :cond_226

    .line 549
    .line 550
    :goto_225
    return-object v11

    .line 551
    :cond_226
    move-object v4, v13

    .line 552
    move-object/from16 v3, v19

    .line 553
    .line 554
    :goto_229
    :try_start_229
    check-cast v0, Lme/rerere/rikkahub/data/model/AssistantMemory;
    :try_end_22b
    .catchall {:try_start_229 .. :try_end_22b} :catchall_22d

    .line 555
    .line 556
    :goto_22b
    move-object v13, v4

    .line 557
    goto :goto_245

    .line 558
    :catchall_22d
    move-exception v0

    .line 559
    goto :goto_23e

    .line 560
    :catchall_22f
    move-exception v0

    .line 561
    move-object v4, v13

    .line 562
    move-object/from16 v3, v19

    .line 563
    .line 564
    goto :goto_23e

    .line 565
    :catchall_234
    move-exception v0

    .line 566
    move-object/from16 v19, v3

    .line 567
    .line 568
    :goto_237
    move-object v4, v13

    .line 569
    goto :goto_23e

    .line 570
    :catchall_239
    move-exception v0

    .line 571
    move-object/from16 v19, v3

    .line 572
    .line 573
    const/4 v1, 0x3

    .line 574
    goto :goto_237

    .line 575
    :goto_23e
    :try_start_23e
    new-instance v6, Lkotlin/Result$Failure;

    .line 576
    .line 577
    invoke-direct {v6, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 578
    .line 579
    .line 580
    move-object v0, v6

    .line 581
    goto :goto_22b

    .line 582
    :goto_245
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    if-eqz v0, :cond_1f4

    .line 587
    .line 588
    const-string v4, "store preference memory failed"

    .line 589
    .line 590
    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_250
    .catchall {:try_start_23e .. :try_end_250} :catchall_5c

    .line 591
    .line 592
    .line 593
    goto :goto_1f4

    .line 594
    :cond_251
    move-object v1, v9

    .line 595
    goto :goto_258

    .line 596
    :goto_253
    new-instance v1, Lkotlin/Result$Failure;

    .line 597
    .line 598
    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 599
    .line 600
    .line 601
    :goto_258
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    if-eqz v0, :cond_263

    .line 606
    .line 607
    const-string v1, "extract preferences from summary failed"

    .line 608
    .line 609
    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    .line 611
    .line 612
    :cond_263
    :goto_263
    return-object v9

    .line 613
    :array_264
    .array-data 2
        0x2ds
        0x2as
        0x2022s
    .end array-data
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
.end method

.method public final updateConversation(Lme/rerere/rikkahub/data/model/Conversation;Lkotlin/uuid/Uuid;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Lme/rerere/rikkahub/data/model/Conversation;->getId()Lkotlin/uuid/Uuid;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    goto :goto_29

    .line 12
    :cond_b
    iget-object v0, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Lme/rerere/rikkahub/service/ChatPool;->getOrCreateSession(Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/service/ConversationSession;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object v0, p2, Lme/rerere/rikkahub/service/ConversationSession;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 19
    .line 20
    :cond_13
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Lme/rerere/rikkahub/data/model/Conversation;

    .line 26
    .line 27
    invoke-virtual {p2}, Lme/rerere/rikkahub/service/ConversationSession;->isGenerating()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_23

    .line 32
    .line 33
    invoke-virtual {p0, p1, v2}, Lme/rerere/rikkahub/service/ChatService;->checkFilesDelete(Lme/rerere/rikkahub/data/model/Conversation;Lme/rerere/rikkahub/data/model/Conversation;)V

    .line 34
    .line 35
    .line 36
    :cond_23
    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_13

    .line 41
    .line 42
    :goto_29
    return-void
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method

.method public final updateConversationState(Lkotlin/uuid/Uuid;Lkotlin/jvm/functions/Function1;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lme/rerere/rikkahub/service/ChatService;->chatPool:Lme/rerere/rikkahub/service/ChatPool;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lme/rerere/rikkahub/service/ChatPool;->getOrCreateSession(Lkotlin/uuid/Uuid;)Lme/rerere/rikkahub/service/ConversationSession;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, v0, Lme/rerere/rikkahub/service/ConversationSession;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 11
    .line 12
    :cond_b
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    move-object v3, v2

    .line 17
    check-cast v3, Lme/rerere/rikkahub/data/model/Conversation;

    .line 18
    .line 19
    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Lme/rerere/rikkahub/data/model/Conversation;

    .line 24
    .line 25
    invoke-virtual {v4}, Lme/rerere/rikkahub/data/model/Conversation;->getId()Lkotlin/uuid/Uuid;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_2b

    .line 34
    .line 35
    invoke-virtual {v0}, Lme/rerere/rikkahub/service/ConversationSession;->isGenerating()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_2b

    .line 40
    .line 41
    invoke-virtual {p0, v4, v3}, Lme/rerere/rikkahub/service/ChatService;->checkFilesDelete(Lme/rerere/rikkahub/data/model/Conversation;Lme/rerere/rikkahub/data/model/Conversation;)V

    .line 42
    .line 43
    .line 44
    :cond_2b
    invoke-virtual {v1, v2, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_b

    .line 49
    .line 50
    return-void
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
.end method

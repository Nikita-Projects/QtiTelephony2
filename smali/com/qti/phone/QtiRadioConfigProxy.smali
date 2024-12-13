.class public Lcom/qti/phone/QtiRadioConfigProxy;
.super Ljava/lang/Object;
.source "QtiRadioConfigProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;,
        Lcom/qti/phone/QtiRadioConfigProxy$Transaction;,
        Lcom/qti/phone/QtiRadioConfigProxy$IQtiRadioConfigInternalCallback;,
        Lcom/qti/phone/QtiRadioConfigProxy$Result;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context; = null

.field private static mIsInSecureMode:Z = false


# instance fields
.field private final EVENT_GET_SECURE_MODE_STATUS_RESPONSE:I

.field public final EVENT_ON_ALLOW_MODEM_RECOMMENDATION_FOR_DATA_DURING_CALL:I

.field private final EVENT_ON_CIWLAN_CAPABILITY_CHANGE:I

.field public final EVENT_ON_DDS_SWITCH_CAPABILITY_CHANGED:I

.field public final EVENT_ON_DDS_SWITCH_CRITERIA_CHANGED:I

.field public final EVENT_ON_DDS_SWITCH_RECOMMENDATION:I

.field public final EVENT_ON_DUAL_DATA_CAPABILITY_CHANGED:I

.field public final EVENT_ON_DUAL_DATA_RECOMMENDATION:I

.field private final EVENT_ON_GET_SIM_TYPE_INFO_RESPONSE:I

.field private final EVENT_ON_MSIM_PREFERENCE_RESPONSE:I

.field private final EVENT_ON_SECURE_MODE_STATUS_CHANGE:I

.field private final EVENT_ON_SET_SIM_TYPE_RESPONSE:I

.field public final EVENT_SET_DUAL_DATA_USER_PREFERENCE_RESPONSE:I

.field private FAILED:Z

.field private final SECURE_MODE_STATUS_BAR_ICON:Ljava/lang/String;

.field private SUCCESS:Z

.field private mCiwlanCapability:Lcom/qti/phone/CiwlanCapability;

.field private mDualDataCapability:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

.field private mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qti/phone/QtiRadioConfigProxy$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qti/phone/QtiRadioConfigProxy$IQtiRadioConfigInternalCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

.field mQtiRadioConfigCallback:Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

.field private volatile mSerial:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDualDataCapability(Lcom/qti/phone/QtiRadioConfigProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mDualDataCapability:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mWorkerThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCiwlanCapability(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/phone/CiwlanCapability;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mCiwlanCapability:Lcom/qti/phone/CiwlanCapability;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSecureModeStatusResponse(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioConfigProxy;->getSecureModeStatusResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCiwlanCapabilityChanged(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/phone/CiwlanCapability;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioConfigProxy;->onCiwlanCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/phone/CiwlanCapability;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDdsSwitchCapabilityChanged(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioConfigProxy;->onDdsSwitchCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDdsSwitchCriteriaChanged(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->onDdsSwitchCriteriaChanged(Lcom/qti/extphone/Token;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDdsSwitchRecommendation(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->onDdsSwitchRecommendation(Lcom/qti/extphone/Token;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDualDataCapabilityChanged(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioConfigProxy;->onDualDataCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDualDataRecommendation(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/DualDataRecommendation;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->onDualDataRecommendation(Lcom/qti/extphone/Token;Lcom/qti/extphone/DualDataRecommendation;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monGetSimTypeInfoResponse(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[Lvendor/qti/hardware/radio/qtiradioconfig/SimTypeInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioConfigProxy;->onGetSimTypeInfoResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[Lvendor/qti/hardware/radio/qtiradioconfig/SimTypeInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSecureModeStatusChange(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->onSecureModeStatusChange(Lcom/qti/extphone/Token;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSendUserPreferenceForDataDuringVoiceCall(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->onSendUserPreferenceForDataDuringVoiceCall(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSetSimTypeResponse(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->onSetSimTypeResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDualDataUserPreferenceResponse(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->setDualDataUserPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMsimPreferenceResponse(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->setMsimPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->EVENT_GET_SECURE_MODE_STATUS_RESPONSE:I

    const/4 v1, 0x2

    .line 53
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->EVENT_ON_SECURE_MODE_STATUS_CHANGE:I

    const/4 v1, 0x3

    .line 54
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->EVENT_ON_MSIM_PREFERENCE_RESPONSE:I

    const/4 v1, 0x4

    .line 55
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->EVENT_ON_GET_SIM_TYPE_INFO_RESPONSE:I

    const/4 v1, 0x5

    .line 56
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->EVENT_ON_SET_SIM_TYPE_RESPONSE:I

    const/4 v1, 0x6

    .line 57
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->EVENT_ON_CIWLAN_CAPABILITY_CHANGE:I

    const/4 v1, 0x7

    .line 58
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->EVENT_ON_DUAL_DATA_CAPABILITY_CHANGED:I

    const/16 v1, 0x8

    .line 59
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->EVENT_SET_DUAL_DATA_USER_PREFERENCE_RESPONSE:I

    const/16 v1, 0x9

    .line 60
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->EVENT_ON_DUAL_DATA_RECOMMENDATION:I

    const/16 v1, 0xa

    .line 61
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->EVENT_ON_DDS_SWITCH_CAPABILITY_CHANGED:I

    const/16 v1, 0xb

    .line 62
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->EVENT_ON_DDS_SWITCH_CRITERIA_CHANGED:I

    const/16 v1, 0xc

    .line 63
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->EVENT_ON_DDS_SWITCH_RECOMMENDATION:I

    const/16 v1, 0xd

    .line 64
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->EVENT_ON_ALLOW_MODEM_RECOMMENDATION_FOR_DATA_DURING_CALL:I

    .line 66
    const-string v1, "secure_mode"

    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->SECURE_MODE_STATUS_BAR_ICON:Ljava/lang/String;

    .line 71
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "QtiRadioConfigProxyBgThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mWorkerThread:Landroid/os/HandlerThread;

    .line 73
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, -0x1

    .line 75
    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mSerial:I

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    .line 83
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mDualDataCapability:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    iput-boolean v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->SUCCESS:Z

    .line 86
    iput-boolean v2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->FAILED:Z

    .line 389
    new-instance v0, Lcom/qti/phone/QtiRadioConfigProxy$1;

    invoke-direct {v0, p0}, Lcom/qti/phone/QtiRadioConfigProxy$1;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;)V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfigCallback:Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    .line 100
    sput-object p1, Lcom/qti/phone/QtiRadioConfigProxy;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {p1}, Lcom/qti/phone/QtiRadioConfigFactory;->makeQtiRadioConfig(Landroid/content/Context;)Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    .line 102
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfigCallback:Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    invoke-interface {v0, v1}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->registerCallback(Lcom/qti/phone/IQtiRadioConfigConnectionCallback;)V

    .line 103
    const-class v0, Landroid/app/StatusBarManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 104
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 105
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 106
    iget-object p1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 107
    iget-object p1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioConfigProxy;->setLooper(Landroid/os/Looper;)V

    return-void
.end method

.method private dumpInflightRequests(Ljava/io/PrintWriter;)V
    .locals 4

    .line 813
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getNextToken()Lcom/qti/extphone/Token;
    .locals 2

    .line 386
    new-instance v0, Lcom/qti/extphone/Token;

    iget v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mSerial:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mSerial:I

    invoke-direct {v0, v1}, Lcom/qti/extphone/Token;-><init>(I)V

    return-object v0
.end method

.method private getSecureModeStatusResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 7

    .line 516
    const-string v0, "QtiRadioConfigProxy"

    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/4 v2, 0x5

    .line 517
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioConfigProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSecureModeStatusResponse: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 520
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 519
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-interface {v3, p1, p2, p3}, Lcom/qti/extphone/IExtPhoneCallback;->getSecureModeStatusResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    .line 522
    iget-object v3, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    .line 527
    :cond_0
    :goto_1
    sput-boolean p3, Lcom/qti/phone/QtiRadioConfigProxy;->mIsInSecureMode:Z

    .line 528
    invoke-direct {p0, p3}, Lcom/qti/phone/QtiRadioConfigProxy;->toggleSecureModeIcon(Z)V

    goto :goto_3

    .line 525
    :goto_2
    :try_start_1
    const-string p2, "getSecureModeStatusResponse: Exception"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    .line 527
    :goto_4
    sput-boolean p3, Lcom/qti/phone/QtiRadioConfigProxy;->mIsInSecureMode:Z

    .line 528
    invoke-direct {p0, p3}, Lcom/qti/phone/QtiRadioConfigProxy;->toggleSecureModeIcon(Z)V

    .line 529
    throw p1
.end method

.method static isInSecureMode()Z
    .locals 1

    .line 805
    sget-boolean v0, Lcom/qti/phone/QtiRadioConfigProxy;->mIsInSecureMode:Z

    return v0
.end method

.method private onCiwlanCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/phone/CiwlanCapability;)V
    .locals 5

    .line 779
    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result p1

    .line 781
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p2

    .line 780
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p2

    .line 783
    invoke-virtual {p3}, Lcom/qti/phone/CiwlanCapability;->getCiwlanCapability()Ljava/util/Optional;

    move-result-object p3

    .line 784
    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 785
    :cond_0
    invoke-virtual {p3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 787
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/16 v1, 0x26

    .line 788
    invoke-virtual {p0, p1, v1}, Lcom/qti/phone/QtiRadioConfigProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qti/extphone/IExtPhoneCallback;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p3, v3, :cond_3

    if-ne p3, v4, :cond_2

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    .line 796
    :cond_3
    :goto_1
    invoke-interface {p1, v2, v4}, Lcom/qti/extphone/IExtPhoneCallback;->onEpdgOverCellularDataSupported(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 800
    const-string p1, "QtiRadioConfigProxy"

    const-string p2, "onCiwlanCapabilityChanged: Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-void
.end method

.method private onDdsSwitchCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 7

    .line 688
    const-string v0, "QtiRadioConfigProxy"

    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x2b

    .line 689
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioConfigProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDdsSwitchCapabilityChanged: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 692
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 691
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-interface {v3, p1, p2, p3}, Lcom/qti/extphone/IExtPhoneCallback;->onDdsSwitchConfigCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    .line 694
    iget-object v3, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 697
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onDdsSwitchCapabilityChanged: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onDdsSwitchCriteriaChanged(Lcom/qti/extphone/Token;Z)V
    .locals 6

    .line 703
    const-string v0, "QtiRadioConfigProxy"

    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result p1

    const/16 v1, 0x2c

    .line 704
    invoke-virtual {p0, p1, v1}, Lcom/qti/phone/QtiRadioConfigProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 706
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDdsSwitchCriteriaChanged: Responding back for transaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 708
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 706
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-interface {v2, p2}, Lcom/qti/extphone/IExtPhoneCallback;->onDdsSwitchConfigCriteriaChanged(Z)V

    .line 710
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 713
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onDdsSwitchCriteriaChanged: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onDdsSwitchRecommendation(Lcom/qti/extphone/Token;I)V
    .locals 6

    .line 719
    const-string v0, "QtiRadioConfigProxy"

    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result p1

    const/16 v1, 0x2d

    .line 720
    invoke-virtual {p0, p1, v1}, Lcom/qti/phone/QtiRadioConfigProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDdsSwitchRecommendation: Responding back for transaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 724
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 722
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-interface {v2, p2}, Lcom/qti/extphone/IExtPhoneCallback;->onDdsSwitchConfigRecommendation(I)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 727
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 729
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onDdsSwitchRecommendation: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private onDualDataCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 7

    .line 642
    const-string v0, "QtiRadioConfigProxy"

    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x27

    .line 643
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioConfigProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 645
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDualDataCapabilityChanged: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 646
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 645
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-interface {v3, p1, p2, p3}, Lcom/qti/extphone/IExtPhoneCallback;->onDualDataCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    .line 648
    iget-object v3, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 651
    const-string p1, "onDualDataCapabilityChanged: Exception"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private onDualDataRecommendation(Lcom/qti/extphone/Token;Lcom/qti/extphone/DualDataRecommendation;)V
    .locals 6

    .line 673
    const-string v0, "QtiRadioConfigProxy"

    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result p1

    const/16 v1, 0x29

    .line 674
    invoke-virtual {p0, p1, v1}, Lcom/qti/phone/QtiRadioConfigProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDualDataRecommendation: Responding back for transaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 677
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 676
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-interface {v2, p2}, Lcom/qti/extphone/IExtPhoneCallback;->onDualDataRecommendation(Lcom/qti/extphone/DualDataRecommendation;)V

    .line 679
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 682
    const-string p1, "onDualDataRecommendation: Exception"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private onGetSimTypeInfoResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[Lvendor/qti/hardware/radio/qtiradioconfig/SimTypeInfo;)V
    .locals 8

    .line 600
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 602
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 603
    :try_start_0
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/phone/QtiRadioConfigProxy$IQtiRadioConfigInternalCallback;

    .line 604
    const-string v4, "QtiRadioConfigProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetSimTypeInfoResponse: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 605
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 604
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {v3, p1, p2, p3}, Lcom/qti/phone/QtiRadioConfigProxy$IQtiRadioConfigInternalCallback;->getSimTypeInfoResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[Lvendor/qti/hardware/radio/qtiradioconfig/SimTypeInfo;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 608
    :cond_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onSecureModeStatusChange(Lcom/qti/extphone/Token;Z)V
    .locals 6

    .line 534
    const-string v0, "QtiRadioConfigProxy"

    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result p1

    const/16 v1, 0x16

    .line 535
    invoke-virtual {p0, p1, v1}, Lcom/qti/phone/QtiRadioConfigProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSecureModeStatusChange: Responding back for transaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 538
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 537
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-interface {v2, p2}, Lcom/qti/extphone/IExtPhoneCallback;->onSecureModeStatusChange(Z)V

    .line 540
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    .line 545
    :cond_0
    :goto_1
    sput-boolean p2, Lcom/qti/phone/QtiRadioConfigProxy;->mIsInSecureMode:Z

    .line 546
    invoke-direct {p0, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->toggleSecureModeIcon(Z)V

    goto :goto_3

    .line 543
    :goto_2
    :try_start_1
    const-string v1, "onSecureModeStatusChange: Exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    .line 545
    :goto_4
    sput-boolean p2, Lcom/qti/phone/QtiRadioConfigProxy;->mIsInSecureMode:Z

    .line 546
    invoke-direct {p0, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->toggleSecureModeIcon(Z)V

    .line 547
    throw p1
.end method

.method private onSendUserPreferenceForDataDuringVoiceCall(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 7

    .line 735
    const-string v0, "QtiRadioConfigProxy"

    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x2e

    .line 736
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioConfigProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 739
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSendUserPreferenceForDataDuringVoiceCall: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 741
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 739
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-interface {v3, p1, p2}, Lcom/qti/extphone/IExtPhoneCallback;->onSendUserPreferenceConfigForDataDuringVoiceCall(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 744
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 746
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSendUserPreferenceForDataDuringVoiceCall: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private onSetSimTypeResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 8

    .line 584
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 590
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 591
    :try_start_0
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/phone/QtiRadioConfigProxy$IQtiRadioConfigInternalCallback;

    .line 592
    const-string v4, "QtiRadioConfigProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSetSimTypeResponse: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 593
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 592
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {v3, p1, p2}, Lcom/qti/phone/QtiRadioConfigProxy$IQtiRadioConfigInternalCallback;->setSimTypeResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 596
    :cond_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setDualDataUserPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 7

    .line 657
    const-string v0, "QtiRadioConfigProxy"

    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x28

    .line 658
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioConfigProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 660
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDualDataUserPreferenceResponse:  Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 662
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 660
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-interface {v3, p1, p2}, Lcom/qti/extphone/IExtPhoneCallback;->setDualDataUserPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    .line 664
    iget-object v3, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 667
    const-string p1, "setDualDataUserPreferenceResponse: Exception"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private setLooper(Landroid/os/Looper;)V
    .locals 1

    .line 121
    new-instance v0, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method private setMsimPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 7

    .line 570
    const-string v0, "QtiRadioConfigProxy"

    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x1f

    .line 571
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioConfigProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setsetMsimPreferenceResponse: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 574
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 573
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-interface {v3, p1, p2}, Lcom/qti/extphone/IExtPhoneCallback;->setMsimPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    .line 576
    iget-object v3, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 579
    const-string p1, "onSecureModeStatusChange: Exception"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private toggleSecureModeIcon(Z)V
    .locals 3

    .line 551
    sget-object v0, Lcom/qti/phone/QtiRadioConfigProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 552
    const-string v1, "Secure Mode status bar icon disabled from config."

    const-string v2, "QtiRadioConfigProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 554
    const-string v0, "secure_mode"

    if-eqz p1, :cond_0

    .line 555
    const-string p1, "Showing the Secure Mode icon"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mStatusBarManager:Landroid/app/StatusBarManager;

    sget-object p1, Lcom/qti/phone/QtiRadioConfigProxy;->mContext:Landroid/content/Context;

    const v1, 0x7f0d002c

    .line 560
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x108002f

    const/4 v2, 0x0

    .line 556
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 562
    :cond_0
    const-string p1, "Removing the Secure Mode icon"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 821
    const-string p1, "5G-Middleware:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mQtiRadioConfig = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 825
    const-string p1, "Inflight requests : "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    invoke-direct {p0, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->dumpInflightRequests(Ljava/io/PrintWriter;)V

    .line 827
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public getCiwlanCapability()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 294
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->getCiwlanCapability(Lcom/qti/extphone/Token;)V

    return-void
.end method

.method public getCiwlanCapabilityFromCache()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mCiwlanCapability:Lcom/qti/phone/CiwlanCapability;

    if-nez p0, :cond_0

    .line 278
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/qti/phone/CiwlanCapability;->getCiwlanCapability()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getDdsSwitchCapability(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    const-string v0, "QtiRadioConfigProxy"

    const-string v1, "getDdsSwitchCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 330
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->getDdsSwitchCapability(Lcom/qti/extphone/Token;)V

    return-object v0
.end method

.method public getDualDataCapabilityFromCache()Z
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mDualDataCapability:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public getHalVersion()I
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    invoke-interface {p0}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->getHalVersion()I

    move-result p0

    return p0
.end method

.method public getSecureModeStatus(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    const-string v0, "QtiRadioConfigProxy"

    const-string v1, "getSecureModeStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 231
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->getSecureModeStatus(Lcom/qti/extphone/Token;)V

    return-object v0
.end method

.method public getSimTypeInfo()Lcom/qti/extphone/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimTypeInfo: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioConfigProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->getSimTypeInfo(Lcom/qti/extphone/Token;)V

    return-object v0
.end method

.method public invalidateCiwlanCapabilityCache()V
    .locals 1

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mCiwlanCapability:Lcom/qti/phone/CiwlanCapability;

    return-void
.end method

.method public invalidateDualDataCapabilityCache()V
    .locals 1

    .line 307
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mDualDataCapability:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public isFeatureSupported(I)Z
    .locals 1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getHalVersion()I

    move-result p0

    const/4 p1, 0x5

    if-lt p0, p1, :cond_1

    .line 129
    const-string p0, "QtiRadioConfigProxy"

    const-string p1, "FEATURE_SMART_TEMP_DDS_VIA_RADIO_CONFIG feature supported"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method registerInternalCallback(Lcom/qti/phone/QtiRadioConfigProxy$IQtiRadioConfigInternalCallback;)V
    .locals 4

    .line 751
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 752
    :try_start_0
    const-string v1, "QtiRadioConfigProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add internal callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeClientFromInflightRequests(Lcom/qti/extphone/IExtPhoneCallback;)V
    .locals 5

    .line 484
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 485
    iget-object v3, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;

    .line 486
    iget-object v3, v3, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v3}, Lcom/qti/extphone/Client;->getCallback()Lcom/qti/extphone/IExtPhoneCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeClientFromInflightRequests: Token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 488
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 487
    const-string v3, "QtiRadioConfigProxy"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public requestForDualDataCapability()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 303
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->getDualDataCapability(Lcom/qti/extphone/Token;)V

    return-void
.end method

.method retrieveCallbacks(II)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/qti/extphone/IExtPhoneCallback;",
            ">;"
        }
    .end annotation

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 497
    iget-object p2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 498
    iget-object p2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;

    .line 499
    iget-object p1, p1, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;->mClient:Lcom/qti/extphone/Client;

    .line 500
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 501
    invoke-virtual {p1}, Lcom/qti/extphone/Client;->getCallback()Lcom/qti/extphone/IExtPhoneCallback;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "This client is invalid now: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioConfigProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 507
    :cond_1
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->retrieveCallbacksWithEvent(II)Ljava/util/ArrayList;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method sendSetSimTypeResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 7

    .line 613
    const-string v0, "QtiRadioConfigProxy"

    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x22

    .line 615
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioConfigProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSetSimTypeResponse: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 618
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 617
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-interface {v3, p1, p2}, Lcom/qti/extphone/IExtPhoneCallback;->setSimTypeResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    .line 620
    iget-object v3, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 623
    const-string p1, "sendSetSimTypeResponse: Exception"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method sendSimTypeChangeInd([Lcom/qti/extphone/QtiSimType;)V
    .locals 4

    .line 630
    const-string v0, "QtiRadioConfigProxy"

    const/4 v1, -0x1

    const/16 v2, 0x1a

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioConfigProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/extphone/IExtPhoneCallback;

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSimTypeChangeInd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-interface {v1, p1}, Lcom/qti/extphone/IExtPhoneCallback;->onSimTypeChanged([Lcom/qti/extphone/QtiSimType;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 636
    const-string p1, "sendSimTypeChangeInd: Exception = "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public sendUserPreferenceForDataDuringVoiceCall([ZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    const-string v0, "QtiRadioConfigProxy"

    const-string v1, "sendUserPreferenceForDataDuringVoiceCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 343
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;

    invoke-direct {v4, p0, v0, v1, p2}, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    invoke-interface {p0, v0, p1}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->sendUserPreferenceForDataDuringVoiceCall(Lcom/qti/extphone/Token;[Z)V

    return-object v0
.end method

.method public setDualDataUserPreference(Lcom/qti/extphone/Client;Z)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;

    const-string v4, "setDualDataUserPreference"

    invoke-direct {v3, p0, v0, v4, p1}, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    invoke-interface {p0, v0, p2}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->setDualDataUserPreference(Lcom/qti/extphone/Token;Z)V

    return-object v0
.end method

.method setExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 116
    const-string v0, "QtiRadioConfigProxy"

    const-string v1, "setExtTelephonyServiceImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-object p1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    return-void
.end method

.method public setMsimPreference(Lcom/qti/extphone/Client;Lcom/qti/extphone/MsimPreference;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMsimPreference: MsimPreference = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qti/extphone/MsimPreference;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;

    const-string v4, "setMsimPreference"

    invoke-direct {v3, p0, v0, v4, p1}, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    invoke-interface {p0, v0, p2}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->setMsimPreference(Lcom/qti/extphone/Token;Lcom/qti/extphone/MsimPreference;)V

    return-object v0
.end method

.method public setMsimPreference(Lcom/qti/extphone/MsimPreference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->setMsimPreference(Lcom/qti/extphone/Token;Lcom/qti/extphone/MsimPreference;)V

    return-void
.end method

.method public setSimType(Lcom/qti/extphone/Client;[Lcom/qti/extphone/QtiSimType;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimType: simType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;

    const-string v4, "setSimType"

    invoke-direct {v3, p0, v0, v4, p1}, Lcom/qti/phone/QtiRadioConfigProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    invoke-interface {p0, v0, p2}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->setSimType(Lcom/qti/extphone/Token;[Lcom/qti/extphone/QtiSimType;)V

    return-object v0
.end method

.method public setSimType([Lcom/qti/extphone/QtiSimType;)Lcom/qti/extphone/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 272
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy;->mQtiRadioConfig:Lcom/qti/phone/IQtiRadioConfigConnectionInterface;

    invoke-interface {p0, v0, p1}, Lcom/qti/phone/IQtiRadioConfigConnectionInterface;->setSimType(Lcom/qti/extphone/Token;[Lcom/qti/extphone/QtiSimType;)V

    return-object v0
.end method

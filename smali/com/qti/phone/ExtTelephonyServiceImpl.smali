.class public Lcom/qti/phone/ExtTelephonyServiceImpl;
.super Ljava/lang/Object;
.source "ExtTelephonyServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/ExtTelephonyServiceImpl$ExtTelephonyThread;,
        Lcom/qti/phone/ExtTelephonyServiceImpl$ClientBinderDeathRecipient;,
        Lcom/qti/phone/ExtTelephonyServiceImpl$WorkerHandler;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mNumPhones:I


# instance fields
.field private final FAILED:Z

.field private final SUCCESS:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbackList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/qti/extphone/IExtPhoneCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCiwlanAvailableCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCiwlanConfigCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qti/extphone/CiwlanConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mClientIndex:I

.field private mEsimOsUpdateAgent:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

.field private mNrUwbConfigsController:Lcom/qti/phone/nruwbicon/NrUwbConfigsController;

.field private mPowerUpOptimization:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

.field private mPowerUpOptimizationPropVal:I

.field private mPrimaryImeiHandler:Lcom/qti/phone/QtiPrimaryImeiHandler;

.field private mQtiCellularRoamingPreferenceController:Lcom/qti/phone/QtiCellularRoamingPreferenceController;

.field private mQtiCiwlanModePreferenceController:Lcom/qti/phone/QtiCiwlanModePreferenceController;

.field private mQtiDeviceConfigController:Lcom/qti/phone/QtiDeviceConfigController;

.field private mQtiNtnProfileHelper:Lcom/qti/phone/QtiNtnProfileHelper;

.field private mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

.field private mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

.field private mQtiTelephony:Lcom/qti/phone/QtiTelephony;

.field private mQtiUiccSwitcher:Lcom/qti/phone/QtiUiccSwitcher;

.field private mRegisterReceiver:Z

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubsidyDevController:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$3fBn0H6nCXmevT6DY2pCs5ff1WA(Lcom/qti/phone/ExtTelephonyServiceImpl;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->lambda$initCiwlanAvailable$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ov7780iAu-XEkqIlJubTmcNlu2M(Lcom/qti/phone/ExtTelephonyServiceImpl;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->lambda$initCiwlanConfig$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBroadcastReceiver(Lcom/qti/phone/ExtTelephonyServiceImpl;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerUpOptimization(Lcom/qti/phone/ExtTelephonyServiceImpl;)Lcom/qti/phone/powerupoptimization/PowerUpOptimization;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mPowerUpOptimization:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrimaryImeiHandler(Lcom/qti/phone/ExtTelephonyServiceImpl;)Lcom/qti/phone/QtiPrimaryImeiHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mPrimaryImeiHandler:Lcom/qti/phone/QtiPrimaryImeiHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQtiDeviceConfigController(Lcom/qti/phone/ExtTelephonyServiceImpl;)Lcom/qti/phone/QtiDeviceConfigController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiDeviceConfigController:Lcom/qti/phone/QtiDeviceConfigController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQtiRadioConfigProxy(Lcom/qti/phone/ExtTelephonyServiceImpl;)Lcom/qti/phone/QtiRadioConfigProxy;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQtiRadioProxy(Lcom/qti/phone/ExtTelephonyServiceImpl;)Lcom/qti/phone/QtiRadioProxy;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubscriptionManager(Lcom/qti/phone/ExtTelephonyServiceImpl;)Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/qti/phone/ExtTelephonyServiceImpl;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/ExtTelephonyServiceImpl;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mWorkerThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPrimaryImeiHandler(Lcom/qti/phone/ExtTelephonyServiceImpl;Lcom/qti/phone/QtiPrimaryImeiHandler;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mPrimaryImeiHandler:Lcom/qti/phone/QtiPrimaryImeiHandler;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRegisterReceiver(Lcom/qti/phone/ExtTelephonyServiceImpl;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mRegisterReceiver:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisposeSubsidyDeviceController(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->disposeSubsidyDeviceController()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCiwlanCapability(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getCiwlanCapability()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRadioPowerStateChanged(Lcom/qti/phone/ExtTelephonyServiceImpl;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->handleRadioPowerStateChanged(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitCiwlanAvailable(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->initCiwlanAvailable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitCiwlanConfig(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->initCiwlanConfig()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitQtiNtnProfileHelper(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->initQtiNtnProfileHelper()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitSubsidyDeviceController(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->initSubsidyDeviceController()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAidlHalAvailable(Lcom/qti/phone/ExtTelephonyServiceImpl;Landroid/content/Context;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isAidlHalAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmakeEsimOsUpdateAgent(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->makeEsimOsUpdateAgent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmakeQtiDeviceConfigController(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->makeQtiDeviceConfigController()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmakeQtiPrimaryImeiHandler(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->makeQtiPrimaryImeiHandler()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmakeQtiTelephony(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->makeQtiTelephony()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmakeQtiUiccSwitcher(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->makeQtiUiccSwitcher()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestForDualDataCapability(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->requestForDualDataCapability()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPowerUpOptimizationIfRequired(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->startPowerUpOptimizationIfRequired()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPrimaryCardServiceIfRequired(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->startPrimaryCardServiceIfRequired()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .locals 1

    .line 0
    sget-object v0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmNumPhones()I
    .locals 1

    .line 0
    sget v0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mNumPhones:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmNumPhones(I)V
    .locals 0

    .line 0
    sput p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mNumPhones:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smisServiceRunning(Ljava/lang/Class;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isServiceRunning(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/qti/phone/ExtTelephonyServiceImpl;-><init>(Landroid/content/Context;Lcom/qti/phone/QtiRadioProxy;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qti/phone/QtiRadioProxy;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mClientIndex:I

    .line 105
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExtTelephonyServiceImplBgThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mRegisterReceiver:Z

    const/4 v1, 0x1

    .line 109
    iput-boolean v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->SUCCESS:Z

    .line 110
    iput-boolean v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->FAILED:Z

    .line 112
    iput v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mPowerUpOptimizationPropVal:I

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mPrimaryImeiHandler:Lcom/qti/phone/QtiPrimaryImeiHandler;

    .line 122
    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiUiccSwitcher:Lcom/qti/phone/QtiUiccSwitcher;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCallbackList:Ljava/util/HashMap;

    .line 125
    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mEsimOsUpdateAgent:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    .line 126
    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiDeviceConfigController:Lcom/qti/phone/QtiDeviceConfigController;

    .line 127
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCiwlanConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 129
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCiwlanAvailableCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 351
    new-instance v0, Lcom/qti/phone/ExtTelephonyServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/qti/phone/ExtTelephonyServiceImpl$1;-><init>(Lcom/qti/phone/ExtTelephonyServiceImpl;)V

    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    const-string v0, "Constructor - Enter"

    const-string v1, "ExtTelephonyServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sput-object p1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    .line 151
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->createWorkerThreadHandler()V

    .line 152
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getPhoneCount()I

    move-result p1

    sput p1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mNumPhones:I

    .line 153
    sget-object p1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/qti/phone/QtiMsgTunnelClient;->init(Landroid/content/Context;)V

    if-nez p2, :cond_0

    .line 155
    new-instance p1, Lcom/qti/phone/QtiRadioProxy;

    sget-object p2, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/qti/phone/QtiRadioProxy;-><init>(Landroid/content/Context;Lcom/qti/phone/ExtTelephonyServiceImpl;)V

    iput-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    goto :goto_0

    .line 158
    :cond_0
    iput-object p2, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    .line 159
    invoke-virtual {p2, p0}, Lcom/qti/phone/QtiRadioProxy;->init(Lcom/qti/phone/ExtTelephonyServiceImpl;)V

    .line 161
    :goto_0
    new-instance p1, Lcom/qti/phone/QtiRadioConfigProxy;

    sget-object p2, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/qti/phone/QtiRadioConfigProxy;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    .line 162
    invoke-virtual {p1, p0}, Lcom/qti/phone/QtiRadioConfigProxy;->setExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyServiceImpl;)V

    .line 163
    sget-object p1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 167
    :cond_1
    sget-object p1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 168
    new-instance p1, Lcom/qti/phone/nruwbicon/NrUwbConfigsController;

    sget-object p2, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    .line 169
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-direct {p1, p2, v0, v2}, Lcom/qti/phone/nruwbicon/NrUwbConfigsController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/qti/phone/QtiRadioProxy;)V

    iput-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mNrUwbConfigsController:Lcom/qti/phone/nruwbicon/NrUwbConfigsController;

    .line 170
    new-instance p1, Lcom/qti/phone/QtiCellularRoamingPreferenceController;

    sget-object p2, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    .line 171
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-direct {p1, p2, v0, v2}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/qti/phone/QtiRadioProxy;)V

    iput-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiCellularRoamingPreferenceController:Lcom/qti/phone/QtiCellularRoamingPreferenceController;

    .line 172
    new-instance p1, Lcom/qti/phone/QtiCiwlanModePreferenceController;

    sget-object p2, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    .line 173
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-direct {p1, p2, v0, v2}, Lcom/qti/phone/QtiCiwlanModePreferenceController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/qti/phone/QtiRadioProxy;)V

    iput-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiCiwlanModePreferenceController:Lcom/qti/phone/QtiCiwlanModePreferenceController;

    .line 174
    new-instance p1, Lcom/qti/phone/ExtTelephonyServiceImpl$ExtTelephonyThread;

    invoke-direct {p1, p0}, Lcom/qti/phone/ExtTelephonyServiceImpl$ExtTelephonyThread;-><init>(Lcom/qti/phone/ExtTelephonyServiceImpl;)V

    .line 175
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 176
    const-string p0, "Constructor - Exit"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createWorkerThreadHandler()V
    .locals 2

    .line 1098
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1099
    new-instance v0, Lcom/qti/phone/ExtTelephonyServiceImpl$WorkerHandler;

    iget-object v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qti/phone/ExtTelephonyServiceImpl$WorkerHandler;-><init>(Lcom/qti/phone/ExtTelephonyServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method private disposeSubsidyDeviceController()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mSubsidyDevController:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->dispose()V

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mSubsidyDevController:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    :cond_0
    return-void
.end method

.method private getCiwlanCapability()V
    .locals 2

    .line 514
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-virtual {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getCiwlanCapability()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExtTelephonyServiceImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getCiwlanConfigfromCache(I)Lcom/qti/extphone/CiwlanConfig;
    .locals 2

    .line 851
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCiwlanConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    invoke-direct {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->loadCiwlanConfig(I)V

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCiwlanConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCiwlanConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qti/extphone/CiwlanConfig;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDsdsToSsConfigMode()I
    .locals 3

    const/4 v0, 0x0

    .line 488
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    const-string v1, "persist.vendor.radio.dsds_to_ss"

    .line 489
    invoke-virtual {p0, v1, v0}, Lcom/qti/phone/QtiRadioProxy;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 491
    const-string v1, "ExtTelephonyServiceImpl"

    const-string v2, "Exception: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private getPhoneCount()I
    .locals 1

    .line 507
    sget-object p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 508
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 509
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    return p0
.end method

.method private handleRadioPowerStateChanged(II)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    .line 405
    const-string v3, "ExtTelephonyServiceImpl"

    if-ne p2, v2, :cond_2

    .line 406
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Radio is unavailable for slot "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 408
    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-virtual {p1}, Lcom/qti/phone/QtiRadioConfigProxy;->invalidateCiwlanCapabilityCache()V

    .line 409
    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-virtual {p1}, Lcom/qti/phone/QtiRadioConfigProxy;->invalidateDualDataCapabilityCache()V

    .line 411
    :cond_1
    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCiwlanConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 412
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCiwlanAvailableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_1

    :cond_2
    if-ne p2, v0, :cond_4

    .line 414
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Radio is available for slot "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    .line 416
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getCiwlanCapability()V

    .line 417
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->requestForDualDataCapability()V

    .line 419
    :cond_3
    invoke-direct {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->loadCiwlanConfig(I)V

    .line 420
    invoke-direct {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->loadCiwlanAvailable(I)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private initCiwlanAvailable()V
    .locals 2

    .line 933
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCiwlanAvailableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCiwlanAvailable: phoneCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mNumPhones:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 935
    sget v1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mNumPhones:I

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/qti/phone/ExtTelephonyServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/qti/phone/ExtTelephonyServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/qti/phone/ExtTelephonyServiceImpl;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method private initCiwlanConfig()V
    .locals 2

    .line 882
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCiwlanConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCiwlanConfig: phoneCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mNumPhones:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 884
    sget v1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mNumPhones:I

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/qti/phone/ExtTelephonyServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qti/phone/ExtTelephonyServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/qti/phone/ExtTelephonyServiceImpl;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method private initQtiNtnProfileHelper()V
    .locals 3

    .line 953
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiNtnProfileHelper:Lcom/qti/phone/QtiNtnProfileHelper;

    if-nez v0, :cond_0

    .line 954
    new-instance v0, Lcom/qti/phone/QtiNtnProfileHelper;

    sget-object v1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-direct {v0, v1, v2}, Lcom/qti/phone/QtiNtnProfileHelper;-><init>(Landroid/content/Context;Lcom/qti/phone/QtiRadioProxy;)V

    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiNtnProfileHelper:Lcom/qti/phone/QtiNtnProfileHelper;

    :cond_0
    return-void
.end method

.method private initSubsidyDeviceController()V
    .locals 3

    .line 286
    sget v0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mNumPhones:I

    const/4 v1, 0x2

    const-string v2, "ExtTelephonyServiceImpl"

    if-ge v0, v1, :cond_0

    .line 287
    const-string p0, "Device should be multi-sim for Subsidyfeature to be supported."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isSubsidyFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    const-string p0, "Subsidylock feature is not enabled"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mSubsidyDevController:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    if-nez v0, :cond_2

    .line 297
    new-instance v0, Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    sget-object v1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mSubsidyDevController:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    :cond_2
    return-void
.end method

.method private isAidlHalAvailable(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 329
    invoke-direct {p0, v1, v0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->makeRadioVersion(II)I

    move-result v0

    const/4 v2, 0x0

    .line 331
    const-string v3, "ExtTelephonyServiceImpl"

    if-nez p1, :cond_0

    .line 332
    const-string p0, "Context is NULL"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 336
    :cond_0
    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_1

    .line 338
    const-string p0, "TelephonyManger is NULL"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 341
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getRadioHalVersion()Landroid/util/Pair;

    move-result-object p1

    .line 342
    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v4, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->makeRadioVersion(II)I

    move-result p0

    .line 344
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAidlHalAvailable: halVersion = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt p0, v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method private isEsimOsUpdateAgentEnabled()Z
    .locals 3

    const/4 v0, 0x0

    .line 453
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    const-string v1, "persist.vendor.esim_os_update_agent"

    invoke-virtual {p0, v1, v0}, Lcom/qti/phone/QtiRadioProxy;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 455
    const-string v1, "ExtTelephonyServiceImpl"

    const-string v2, "Exception: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p0, v0

    :goto_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private static isServiceRunning(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 497
    sget-object v0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 498
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    .line 499
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 500
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initCiwlanAvailable$1(I)V
    .locals 0

    .line 935
    invoke-direct {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->loadCiwlanAvailable(I)Z

    return-void
.end method

.method private synthetic lambda$initCiwlanConfig$0(I)V
    .locals 0

    .line 884
    invoke-direct {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->loadCiwlanConfig(I)V

    return-void
.end method

.method private loadCiwlanAvailable(I)Z
    .locals 2

    const/4 v0, 0x0

    .line 920
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {v1, p1}, Lcom/qti/phone/QtiRadioProxy;->isCiwlanAvailable(I)Z

    move-result v0

    .line 921
    invoke-virtual {p0, p1, v0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->updateCiwlanAvailableCache(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 923
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExtTelephonyServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private loadCiwlanConfig(I)V
    .locals 4

    .line 863
    const-string v0, "ExtTelephonyServiceImpl"

    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {v1, p1}, Lcom/qti/phone/QtiRadioProxy;->getCiwlanConfig(I)Lcom/qti/extphone/CiwlanConfig;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 867
    :catch_0
    const-string v1, "No exception is passed down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache C_IWLAN config on slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCiwlanConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private makeEsimOsUpdateAgent()V
    .locals 3

    .line 461
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isEsimOsUpdateAgentEnabled()Z

    move-result v0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EsimOsUpdateAgent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mEsimOsUpdateAgent:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExtTelephonyServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mEsimOsUpdateAgent:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    sget-object v1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-direct {v0, v1, v2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;-><init>(Landroid/content/Context;Lcom/qti/phone/QtiRadioProxy;)V

    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mEsimOsUpdateAgent:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    :cond_0
    return-void
.end method

.method private makeQtiDeviceConfigController()V
    .locals 5

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mQtiDeviceConfigController "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiDeviceConfigController:Lcom/qti/phone/QtiDeviceConfigController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getDsdsToSsConfigMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v2, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiDeviceConfigController:Lcom/qti/phone/QtiDeviceConfigController;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    .line 476
    :try_start_0
    iget-object v3, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    const-string v4, "persist.vendor.radio.dsds_to_ss_timer"

    invoke-virtual {v3, v4, v2}, Lcom/qti/phone/QtiRadioProxy;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 478
    const-string v4, "Exception: "

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    :goto_0
    new-instance v1, Lcom/qti/phone/QtiDeviceConfigController;

    sget-object v3, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0, v2}, Lcom/qti/phone/QtiDeviceConfigController;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiDeviceConfigController:Lcom/qti/phone/QtiDeviceConfigController;

    :cond_0
    return-void
.end method

.method private makeQtiPrimaryImeiHandler()V
    .locals 3

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeQtiPrimaryImeiHandler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mPrimaryImeiHandler:Lcom/qti/phone/QtiPrimaryImeiHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mPrimaryImeiHandler:Lcom/qti/phone/QtiPrimaryImeiHandler;

    if-nez v0, :cond_0

    sget v0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mNumPhones:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/qti/phone/QtiRadioFactory;->isAidlAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    new-instance v0, Lcom/qti/phone/QtiPrimaryImeiHandler;

    sget-object v1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-direct {v0, v1, v2}, Lcom/qti/phone/QtiPrimaryImeiHandler;-><init>(Landroid/content/Context;Lcom/qti/phone/QtiRadioProxy;)V

    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mPrimaryImeiHandler:Lcom/qti/phone/QtiPrimaryImeiHandler;

    :cond_0
    return-void
.end method

.method private makeQtiTelephony()V
    .locals 3

    .line 437
    const-string v0, "ExtTelephonyServiceImpl"

    const-string v1, "QtiTelephony "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiTelephony:Lcom/qti/phone/QtiTelephony;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qti/phone/QtiRadioFactory;->isAidlAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Lcom/qti/phone/QtiTelephony;

    sget-object v1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-direct {v0, v1, v2}, Lcom/qti/phone/QtiTelephony;-><init>(Landroid/content/Context;Lcom/qti/phone/QtiRadioProxy;)V

    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiTelephony:Lcom/qti/phone/QtiTelephony;

    :cond_0
    return-void
.end method

.method private makeQtiUiccSwitcher()V
    .locals 3

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeQtiUiccSwitcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiUiccSwitcher:Lcom/qti/phone/QtiUiccSwitcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiUiccSwitcher:Lcom/qti/phone/QtiUiccSwitcher;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qti/phone/QtiRadioFactory;->isAidlAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Lcom/qti/phone/QtiUiccSwitcher;

    sget-object v1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-direct {v0, v1, v2}, Lcom/qti/phone/QtiUiccSwitcher;-><init>(Landroid/content/Context;Lcom/qti/phone/QtiRadioConfigProxy;)V

    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiUiccSwitcher:Lcom/qti/phone/QtiUiccSwitcher;

    :cond_0
    return-void
.end method

.method private makeRadioVersion(II)I
    .locals 0

    .line 0
    if-ltz p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x64

    add-int/2addr p1, p2

    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private requestForDualDataCapability()V
    .locals 2

    .line 522
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-virtual {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->requestForDualDataCapability()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExtTelephonyServiceImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startPowerUpOptimizationIfRequired()V
    .locals 4

    .line 232
    const-string v0, "ExtTelephonyServiceImpl"

    const/4 v1, 0x0

    iput v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mPowerUpOptimizationPropVal:I

    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    const-string v3, "persist.vendor.radio.poweron_opt"

    .line 235
    invoke-virtual {v2, v3, v1}, Lcom/qti/phone/QtiRadioProxy;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mPowerUpOptimizationPropVal:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 237
    const-string v2, "Exception: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    :goto_0
    iget v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mPowerUpOptimizationPropVal:I

    if-nez v1, :cond_0

    .line 241
    const-string p0, "PowerUpOptimization is not enabled."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 245
    :cond_0
    sget-object v0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->getInstance(Landroid/content/Context;I)Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mPowerUpOptimization:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    return-void
.end method

.method private startPrimaryCardServiceIfRequired()V
    .locals 3

    .line 256
    sget v0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mNumPhones:I

    const/4 v1, 0x2

    const-string v2, "ExtTelephonyServiceImpl"

    if-ge v0, v1, :cond_0

    .line 257
    const-string p0, "Device is not multi-sim. PrimaryCard is not supported."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 264
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    const-string v1, "persist.vendor.radio.primarycard"

    .line 265
    invoke-virtual {p0, v1, v0}, Lcom/qti/phone/QtiRadioProxy;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 267
    const-string v1, "Exception: "

    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez v0, :cond_1

    .line 271
    const-string p0, "PrimaryCard feature is not enabled."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 276
    :cond_1
    new-instance p0, Landroid/content/Intent;

    sget-object v0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    const-class v1, Lcom/qti/phone/primarycard/PrimaryCardService;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    sget-object v0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_2

    .line 279
    const-string p0, "Could not start PrimaryCardService"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 281
    :cond_2
    const-string p0, "Successfully started PrimaryCardService"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public abortIncrementalScan(I)Z
    .locals 0

    .line 552
    invoke-static {}, Lcom/qti/phone/QtiMsgTunnelClient;->getInstance()Lcom/qti/phone/QtiMsgTunnelClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/QtiMsgTunnelClient;->abortIncrementalScan(I)Z

    move-result p0

    return p0
.end method

.method public addCallback(Lcom/qti/extphone/IExtPhoneCallback;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qti/extphone/IExtPhoneCallback;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 988
    invoke-interface {p1}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 989
    iget-object v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCallbackList:Ljava/util/HashMap;

    monitor-enter v1

    .line 990
    :try_start_0
    iget-object v2, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 991
    invoke-interface {v3}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 993
    const-string p0, "ExtTelephonyServiceImpl"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found an existing callback with the same binder: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 997
    :cond_1
    const-string v0, "ExtTelephonyServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " eventlist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public checkSimPinLockStatus(I)Z
    .locals 0

    .line 725
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 726
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isIccLockEnabled()Z

    move-result p0

    return p0
.end method

.method protected cleanUp()V
    .locals 2

    .line 180
    iget v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mPowerUpOptimizationPropVal:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mPowerUpOptimization:Lcom/qti/phone/powerupoptimization/PowerUpOptimization;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/qti/phone/powerupoptimization/PowerUpOptimization;->cleanUp()V

    .line 183
    :cond_0
    iget-boolean v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mRegisterReceiver:Z

    if-eqz v0, :cond_1

    .line 184
    sget-object v0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mRegisterReceiver:Z

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiTelephony:Lcom/qti/phone/QtiTelephony;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {v0}, Lcom/qti/phone/QtiTelephony;->destroy()V

    .line 189
    iput-object v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiTelephony:Lcom/qti/phone/QtiTelephony;

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mNrUwbConfigsController:Lcom/qti/phone/nruwbicon/NrUwbConfigsController;

    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {v0}, Lcom/qti/phone/nruwbicon/NrUwbConfigsController;->dispose()V

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiNtnProfileHelper:Lcom/qti/phone/QtiNtnProfileHelper;

    if-eqz v0, :cond_4

    .line 197
    invoke-virtual {v0}, Lcom/qti/phone/QtiNtnProfileHelper;->cleanUp()V

    .line 198
    iput-object v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiNtnProfileHelper:Lcom/qti/phone/QtiNtnProfileHelper;

    :cond_4
    return-void
.end method

.method public disable5g(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->disable5g(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1053
    const-string v0, "AIDL clients : "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCallbackList:Ljava/util/HashMap;

    monitor-enter v0

    .line 1055
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 1056
    invoke-interface {v2}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1057
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-> Binder = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1059
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1061
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1062
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioConfigProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    .line 1059
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public enable5g(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->enable5g(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public enable5gOnly(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 648
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->enable5gOnly(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public enableEndc(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 583
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->enableEndc(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getAirplaneMode()Z
    .locals 2

    .line 720
    sget-object p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getCellularRoamingPreference(I)Lcom/qti/extphone/CellularRoamingPreference;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 940
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->getCellularRoamingPreference(I)Lcom/qti/extphone/CellularRoamingPreference;

    move-result-object p0

    return-object p0
.end method

.method public getCiwlanConfig(I)Lcom/qti/extphone/CiwlanConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 847
    invoke-direct {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getCiwlanConfigfromCache(I)Lcom/qti/extphone/CiwlanConfig;

    move-result-object p0

    return-object p0
.end method

.method public getCiwlanModeUserPreference(I)Lcom/qti/extphone/CiwlanConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 914
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->getCiwlanModeUserPreference(I)Lcom/qti/extphone/CiwlanConfig;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPrimaryCardSlotId()I
    .locals 2

    .line 541
    sget-object p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "config_current_primary_sub"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentPrimaryCardSlotId slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getCurrentSimType()[Lcom/qti/extphone/QtiSimType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiUiccSwitcher:Lcom/qti/phone/QtiUiccSwitcher;

    if-nez p0, :cond_0

    .line 824
    const-string p0, "ExtTelephonyServiceImpl"

    const-string v0, "getCurrentSimType, not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 827
    :cond_0
    invoke-virtual {p0}, Lcom/qti/phone/QtiUiccSwitcher;->getCurrentSimType()[Lcom/qti/extphone/QtiSimType;

    move-result-object p0

    return-object p0
.end method

.method public getDdsSwitchCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->getDdsSwitchCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getDdsSwitchConfigCapability(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 777
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-virtual {p0, p1}, Lcom/qti/phone/QtiRadioConfigProxy;->getDdsSwitchCapability(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getDualDataCapability()Z
    .locals 0

    .line 888
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-virtual {p0}, Lcom/qti/phone/QtiRadioConfigProxy;->getDualDataCapabilityFromCache()Z

    move-result p0

    return p0
.end method

.method public getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/qti/extphone/Client;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/qti/phone/QtiRadioProxy;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/qti/extphone/Client;)V

    return-void
.end method

.method public getImeiInfo()[Lcom/qti/extphone/QtiImeiInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 690
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mPrimaryImeiHandler:Lcom/qti/phone/QtiPrimaryImeiHandler;

    if-nez p0, :cond_0

    .line 691
    const-string p0, "ExtTelephonyServiceImpl"

    const-string v0, "getImeiInfo, not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcom/qti/phone/QtiPrimaryImeiHandler;->getImeiInfo()[Lcom/qti/extphone/QtiImeiInfo;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkSelectionMode(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->getNetworkSelectionMode(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyValueBool(Ljava/lang/String;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getPropertyValueInt(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQosParameters(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 810
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->getQosParameters(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getQtiRadioCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 644
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->getQtiRadioCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getSecureModeStatus(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 814
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-virtual {p0, p1}, Lcom/qti/phone/QtiRadioConfigProxy;->getSecureModeStatus(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getSimPersoUnlockStatus(I)Lcom/qti/extphone/QtiPersoUnlockStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 897
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->getSimPersoUnlockStatus(I)Lcom/qti/extphone/QtiPersoUnlockStatus;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedSimTypes()[Lcom/qti/extphone/QtiSimType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 831
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiUiccSwitcher:Lcom/qti/phone/QtiUiccSwitcher;

    if-nez p0, :cond_0

    .line 832
    const-string p0, "ExtTelephonyServiceImpl"

    const-string v0, "getSupportedSimTypes, not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 835
    :cond_0
    invoke-virtual {p0}, Lcom/qti/phone/QtiUiccSwitcher;->getSupportedSimTypes()[Lcom/qti/extphone/QtiSimType;

    move-result-object p0

    return-object p0
.end method

.method public isCiwlanAvailable(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCiwlanAvailableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCiwlanAvailableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 904
    :cond_0
    invoke-direct {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->loadCiwlanAvailable(I)Z

    move-result p0

    return p0
.end method

.method public isClientValid(Lcom/qti/extphone/Client;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1018
    invoke-virtual {p1}, Lcom/qti/extphone/Client;->getCallback()Lcom/qti/extphone/IExtPhoneCallback;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1022
    :cond_0
    iget-object v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCallbackList:Ljava/util/HashMap;

    monitor-enter v1

    .line 1023
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 1024
    invoke-interface {v2}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qti/extphone/Client;->getCallback()Lcom/qti/extphone/IExtPhoneCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1025
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1028
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    const-string p0, "ExtTelephonyServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This client is unregistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1028
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1019
    :cond_3
    :goto_1
    const-string p0, "ExtTelephonyServiceImpl"

    const-string p1, "Invalid client"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isEpdgOverCellularDataSupported(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-virtual {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->getHalVersion()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 785
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-virtual {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->getCiwlanCapabilityFromCache()Ljava/util/Optional;

    move-result-object v0

    .line 786
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    if-ne p0, v1, :cond_2

    .line 791
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    .line 790
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-ne p0, p1, :cond_2

    return v1

    .line 800
    :cond_1
    const-string p1, "ExtTelephonyServiceImpl"

    const-string v0, "Ciwlan Cache is invalid"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-direct {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getCiwlanCapability()V

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 805
    :cond_3
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isEpdgOverCellularDataSupported(I)Z

    move-result p0

    return p0
.end method

.method public isFeatureSupported(I)Z
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {v0, p1}, Lcom/qti/phone/QtiRadioProxy;->isFeatureSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    .line 757
    invoke-virtual {p0, p1}, Lcom/qti/phone/QtiRadioConfigProxy;->isFeatureSupported(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isPrimaryCarrierSlotId(I)Z
    .locals 0

    .line 320
    sget-object p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/qti/phone/subsidylock/SubsidyLockUtils;->isPrimaryCapableSimCard(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public isSMSPromptEnabled()Z
    .locals 3

    .line 556
    const-string p0, "ExtTelephonyServiceImpl"

    const/4 v0, 0x0

    .line 559
    :try_start_0
    sget-object v1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_sms_prompt"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 562
    :catch_0
    const-string v1, "Exception Reading Dual Sim SMS Prompt Values"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 565
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSMSPromptEnabled: SMS Prompt option:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSmartDdsSwitchFeatureAvailable()Z
    .locals 0

    .line 698
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0}, Lcom/qti/phone/QtiRadioProxy;->isSmartDdsSwitchFeatureAvailable()Z

    move-result p0

    return p0
.end method

.method isSubsidyFeatureEnabled()Z
    .locals 3

    const/4 v0, 0x0

    .line 304
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    const-string v1, "persist.vendor.radio.subsidydevice"

    invoke-virtual {p0, v1, v0}, Lcom/qti/phone/QtiRadioProxy;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 307
    const-string v1, "ExtTelephonyServiceImpl"

    const-string v2, "Exception: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public performIncrementalScan(I)Z
    .locals 0

    .line 548
    invoke-static {}, Lcom/qti/phone/QtiMsgTunnelClient;->getInstance()Lcom/qti/phone/QtiMsgTunnelClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/QtiMsgTunnelClient;->performIncrementalScan(I)Z

    move-result p0

    return p0
.end method

.method public query5gConfigInfo(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->query5gConfigInfo(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public query5gStatus(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->query5gStatus(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryCallForwardStatus(IIILjava/lang/String;ZLcom/qti/extphone/Client;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/qti/phone/QtiRadioProxy;->queryCallForwardStatus(IIILjava/lang/String;ZLcom/qti/extphone/Client;)V

    return-void
.end method

.method public queryEndcStatus(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->queryEndcStatus(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrBearerAllocation(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->queryNrBearerAllocation(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrConfig(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 609
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->queryNrConfig(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrDcParam(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 656
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->queryNrDcParam(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrIcon(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 949
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->queryNrIcon(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrIconType(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->queryNrIconType(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrSignalStrength(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 660
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->queryNrSignalStrength(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryUpperLayerIndInfo(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->queryUpperLayerIndInfo(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public registerCallbackWithEvents(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;[I)Lcom/qti/extphone/Client;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 961
    invoke-interface {p2}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 963
    new-instance v1, Lcom/qti/phone/ExtTelephonyServiceImpl$ClientBinderDeathRecipient;

    invoke-direct {v1, p0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl$ClientBinderDeathRecipient;-><init>(Lcom/qti/phone/ExtTelephonyServiceImpl;Lcom/qti/extphone/IExtPhoneCallback;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 965
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 966
    sget-object v2, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 967
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerCallbackWithEvents: uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " callerPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "callback = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "binder = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ExtTelephonyServiceImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-static {p3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    .line 971
    invoke-virtual {p0, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->addCallback(Lcom/qti/extphone/IExtPhoneCallback;Ljava/util/Set;)Z

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 972
    new-instance p3, Lcom/qti/extphone/Client;

    iget v3, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mClientIndex:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mClientIndex:I

    invoke-direct {p3, v3, v1, p1, p2}, Lcom/qti/extphone/Client;-><init>(IILjava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;)V

    .line 973
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "registerCallbackWithEvents: client = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 976
    :cond_0
    const-string p0, "registerCallbackWithEvents: callback could not be added."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    :goto_0
    return-object p3
.end method

.method public removeCallback(Lcom/qti/extphone/IExtPhoneCallback;)V
    .locals 4

    .line 1004
    invoke-interface {p1}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1005
    const-string v1, "ExtTelephonyServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCallback: callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " binder = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCallbackList:Ljava/util/HashMap;

    monitor-enter p1

    .line 1007
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 1008
    invoke-interface {v2}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1009
    const-string v0, "ExtTelephonyServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removing callback = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1014
    :cond_1
    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public retrieveCallbacksWithEvent(II)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/qti/extphone/IExtPhoneCallback;",
            ">;"
        }
    .end annotation

    .line 1034
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    iget-object v1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCallbackList:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 1037
    :try_start_0
    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 1038
    iget-object v3, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCallbackList:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCallbackList:Ljava/util/HashMap;

    .line 1039
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1040
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1044
    :cond_2
    const-string p0, "ExtTelephonyServiceImpl"

    const-string p1, "This is not an indication"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    const-string p0, "ExtTelephonyServiceImpl"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrieved callbacks for event = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " list = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1046
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public sendCdmaSms(I[BZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 614
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy;->sendCdmaSms(I[BZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public sendUserPreferenceConfigForDataDuringVoiceCall([ZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 768
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->sendUserPreferenceForDataDuringVoiceCall([ZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public sendUserPreferenceForDataDuringVoiceCall(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 762
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->sendUserPreferenceForDataDuringVoiceCall(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setAirplaneMode(Z)Z
    .locals 2

    .line 706
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->setRadioPower(Z)Z

    move-result p0

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAirplaneMode result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 710
    sget-object v0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 712
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 714
    sget-object p1, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return p0
.end method

.method public setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setCellularRoamingPreference(Lcom/qti/extphone/Client;ILcom/qti/extphone/CellularRoamingPreference;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 945
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->setCellularRoamingPreference(Lcom/qti/extphone/Client;ILcom/qti/extphone/CellularRoamingPreference;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setCiwlanModeUserPreference(ILcom/qti/extphone/Client;Lcom/qti/extphone/CiwlanConfig;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 910
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->setCiwlanModeUserPreference(ILcom/qti/extphone/Client;Lcom/qti/extphone/CiwlanConfig;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setDualDataUserPreference(Lcom/qti/extphone/Client;Z)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 893
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->setDualDataUserPreference(Lcom/qti/extphone/Client;Z)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setMsimPreference(Lcom/qti/extphone/Client;Lcom/qti/extphone/MsimPreference;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioConfigProxy;->setMsimPreference(Lcom/qti/extphone/Client;Lcom/qti/extphone/MsimPreference;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setNetworkSelectionModeAutomatic(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->setNetworkSelectionModeAutomatic(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setNetworkSelectionModeManual(ILcom/qti/extphone/QtiSetNetworkSelectionMode;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->setNetworkSelectionModeManual(ILcom/qti/extphone/QtiSetNetworkSelectionMode;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setNrConfig(ILcom/qti/extphone/NrConfig;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->setNrConfig(ILcom/qti/extphone/NrConfig;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setSMSPromptEnabled(Z)V
    .locals 1

    .line 571
    sget-object p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "multi_sim_sms_prompt"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 573
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSMSPromptEnabled to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " Done"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExtTelephonyServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSimType(Lcom/qti/extphone/Client;[Lcom/qti/extphone/QtiSimType;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 839
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiUiccSwitcher:Lcom/qti/phone/QtiUiccSwitcher;

    if-nez p0, :cond_0

    .line 840
    const-string p0, "ExtTelephonyServiceImpl"

    const-string p1, "setSimType, not supported"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 843
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiUiccSwitcher;->setSimType(Lcom/qti/extphone/Client;[Lcom/qti/extphone/QtiSimType;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setSmartDdsSwitchToggle(ZLcom/qti/extphone/Client;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 702
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->setSmartDdsSwitchToggle(ZLcom/qti/extphone/Client;)V

    return-void
.end method

.method public startNetworkScan(ILandroid/telephony/NetworkScanRequest;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 619
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->startNetworkScan(ILandroid/telephony/NetworkScanRequest;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public stopNetworkScan(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->stopNetworkScan(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lcom/qti/extphone/IDepersoResCallback;I)V
    .locals 0

    .line 578
    invoke-static {}, Lcom/qti/phone/QtiMsgTunnelClient;->getInstance()Lcom/qti/phone/QtiMsgTunnelClient;

    move-result-object p0

    .line 579
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiMsgTunnelClient;->supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lcom/qti/extphone/IDepersoResCallback;I)V

    return-void
.end method

.method public toggleSimPinLock(IZLjava/lang/String;)Z
    .locals 0

    .line 730
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 731
    invoke-virtual {p0, p2, p3}, Landroid/telephony/TelephonyManager;->setIccLockEnabled(ZLjava/lang/String;)Landroid/telephony/PinResult;

    move-result-object p0

    .line 732
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "toggleSimPinLock pinResult: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExtTelephonyServiceImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public unregisterCallback(Lcom/qti/extphone/IExtPhoneCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 982
    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->removeCallback(Lcom/qti/extphone/IExtPhoneCallback;)V

    .line 983
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {v0, p1}, Lcom/qti/phone/QtiRadioProxy;->removeClientFromInflightRequests(Lcom/qti/extphone/IExtPhoneCallback;)V

    .line 984
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mQtiRadioConfigProxy:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-virtual {p0, p1}, Lcom/qti/phone/QtiRadioConfigProxy;->removeClientFromInflightRequests(Lcom/qti/extphone/IExtPhoneCallback;)V

    return-void
.end method

.method public updateCiwlanAvailableCache(IZ)V
    .locals 0

    .line 929
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCiwlanAvailableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateCiwlanConfigCache(ILcom/qti/extphone/CiwlanConfig;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 877
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mCiwlanConfigCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public verifySimPin(ILjava/lang/String;)Z
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 740
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isIccLockEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 743
    :cond_0
    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->supplyPin(Ljava/lang/String;)Z

    move-result p0

    .line 744
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "verifySimPin result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExtTelephonyServiceImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public verifySimPukChangePin(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 749
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 750
    invoke-virtual {p0, p2, p3}, Landroid/telephony/TelephonyManager;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 751
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "verifySimPukChangePin result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExtTelephonyServiceImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

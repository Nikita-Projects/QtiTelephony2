.class public Lcom/qti/phone/QtiRadioConfigAidl;
.super Ljava/lang/Object;
.source "QtiRadioConfigAidl.java"

# interfaces
.implements Lcom/qti/phone/IQtiRadioConfigConnectionInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;,
        Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;,
        Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final UNSOL:Lcom/qti/extphone/Token;

.field private mCallback:Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

.field private mContext:Landroid/content/Context;

.field private final mHalSync:Ljava/lang/Object;

.field private mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qti/extphone/Token;",
            ">;"
        }
    .end annotation
.end field

.field private mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

.field private mQtiRadioConfigBinder:Landroid/os/IBinder;

.field private mQtiRadioConfigDeathRecipient:Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

.field private mQtiRadioConfigIndication:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;

.field private mQtiRadioConfigResponse:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse;


# direct methods
.method static bridge synthetic -$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/extphone/Token;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->UNSOL:Lcom/qti/extphone/Token;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mCallback:Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitQtiRadioConfig(Lcom/qti/phone/QtiRadioConfigAidl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->initQtiRadioConfig()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetQtiRadioConfigHalInterfaces(Lcom/qti/phone/QtiRadioConfigAidl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->resetQtiRadioConfigHalInterfaces()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "QtiRadioConfigAidl"

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->LOG_TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/qti/extphone/Token;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/qti/extphone/Token;-><init>(I)V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->UNSOL:Lcom/qti/extphone/Token;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mHalSync:Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mContext:Landroid/content/Context;

    .line 55
    new-instance p1, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

    invoke-direct {p1, p0}, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;-><init>(Lcom/qti/phone/QtiRadioConfigAidl;)V

    iput-object p1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigDeathRecipient:Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

    .line 56
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->initQtiRadioConfig()V

    return-void
.end method

.method private getQtiRadioConfig()Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    if-eqz p0, :cond_0

    .line 602
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 604
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "mQtiRadioConfig is null"

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 606
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initQtiRadioConfig()V
    .locals 5

    .line 60
    const-string v0, "QtiRadioConfigAidl"

    const-string v1, "initQtiRadioConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v0, "vendor.qti.hardware.radio.qtiradioconfig.IQtiRadioConfig/default"

    .line 62
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 64
    const-string p0, "QtiRadioConfigAidl"

    const-string v0, "initQtiRadioConfig failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_0
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 72
    const-string p0, "QtiRadioConfigAidl"

    const-string v0, "Get binder for IQtiRadioConfig stable AIDL failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_1
    const-string v1, "QtiRadioConfigAidl"

    const-string v2, "Get binder for IQtiRadioConfig stable AIDL is successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigDeathRecipient:Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 80
    const-string v2, "QtiRadioConfigAidl"

    const-string v3, "initQtiRadioConfig: Failed to link to death recipient"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_1
    new-instance v2, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;

    invoke-direct {v2, p0}, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;-><init>(Lcom/qti/phone/QtiRadioConfigAidl;)V

    iput-object v2, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigResponse:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse;

    .line 85
    new-instance v2, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;

    invoke-direct {v2, p0}, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;-><init>(Lcom/qti/phone/QtiRadioConfigAidl;)V

    iput-object v2, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigIndication:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    iget-object v3, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigResponse:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse;

    invoke-interface {v0, v3, v2}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;->setCallbacks(Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse;Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v2

    .line 90
    :try_start_3
    const-string v3, "QtiRadioConfigAidl"

    const-string v4, "initQtiRadioConfig: setCallbacks failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :goto_1
    iput-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    .line 93
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private resetQtiRadioConfigHalInterfaces()V
    .locals 4

    .line 610
    const-string v0, "QtiRadioConfigAidl"

    const-string v1, "resetQtiRadioConfigHalInterfaces: Resetting HAL interfaces."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 613
    :try_start_0
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigDeathRecipient:Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 615
    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigBinder:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 617
    const-string v2, "QtiRadioConfigAidl"

    const-string v3, "Failed to unlink IQtiRadioConfig death recipient"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 621
    :try_start_1
    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    .line 622
    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigResponse:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse;

    .line 623
    iput-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mQtiRadioConfigIndication:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;

    .line 624
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getCiwlanCapability(Lcom/qti/extphone/Token;)V
    .locals 4

    .line 210
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCiwlanCapability: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioConfigAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :try_start_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->getQtiRadioConfig()Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    move-result-object v1

    invoke-interface {v1, v0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;->getCiwlanCapability(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 217
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    const-string p0, "getCiwlanCapability Failed."

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getDdsSwitchCapability(Lcom/qti/extphone/Token;)V
    .locals 4

    .line 224
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDdsSwitchCapability: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioConfigAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :try_start_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->getQtiRadioConfig()Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    move-result-object v1

    invoke-interface {v1, v0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;->getDdsSwitchCapability(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 231
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    const-string p0, "getDdsSwitchCapability Failed."

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getDualDataCapability(Lcom/qti/extphone/Token;)V
    .locals 4

    .line 150
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDualDataCapability: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioConfigAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->getQtiRadioConfig()Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    move-result-object v1

    invoke-interface {v1, v0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;->getDualDataCapability(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 157
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    const-string p0, "getDualDataCapability Failed."

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getHalVersion()I
    .locals 2

    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->getQtiRadioConfig()Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    move-result-object p0

    invoke-interface {p0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;->getInterfaceVersion()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 101
    const-string v0, "QtiRadioConfigAidl"

    const-string v1, "getInterfaceVersion Failed."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getSecureModeStatus(Lcom/qti/extphone/Token;)V
    .locals 4

    .line 108
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecureModeStatus: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioConfigAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->getQtiRadioConfig()Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    move-result-object v1

    invoke-interface {v1, v0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;->getSecureModeStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 115
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    const-string p0, "getSecureModeStatus Failed."

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getSimTypeInfo(Lcom/qti/extphone/Token;)V
    .locals 4

    .line 136
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimTypeInfo: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioConfigAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :try_start_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->getQtiRadioConfig()Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    move-result-object v1

    invoke-interface {v1, v0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;->getSimTypeInfo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 143
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    const-string p0, "getSimTypeInfo Failed."

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public registerCallback(Lcom/qti/phone/IQtiRadioConfigConnectionCallback;)V
    .locals 2

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback: callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iput-object p1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mCallback:Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    return-void
.end method

.method public sendUserPreferenceForDataDuringVoiceCall(Lcom/qti/extphone/Token;[Z)V
    .locals 4

    .line 238
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUserPreferenceForDataDuringVoiceCall, serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAllowedOnSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {p2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    const-string v2, "QtiRadioConfigAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :try_start_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->getQtiRadioConfig()Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;->sendUserPreferenceForDataDuringVoiceCall(I[Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 247
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    const-string p0, "sendUserPreferenceForDataDuringVoiceCall Failed."

    invoke-static {v2, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setDualDataUserPreference(Lcom/qti/extphone/Token;Z)V
    .locals 4

    .line 195
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualDataUserPreference: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " preference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioConfigAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->getQtiRadioConfig()Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;->setDualDataUserPreference(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 203
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    const-string p0, "getSecureModeStatus Failed."

    invoke-static {v2, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setMsimPreference(Lcom/qti/extphone/Token;Lcom/qti/extphone/MsimPreference;)V
    .locals 4

    .line 122
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMsimPreference: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioConfigAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->getQtiRadioConfig()Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    move-result-object v1

    invoke-virtual {p2}, Lcom/qti/extphone/MsimPreference;->get()I

    move-result p2

    invoke-interface {v1, v0, p2}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;->setMsimPreference(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 129
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    const-string p0, "setMsimPreference Failed."

    invoke-static {v2, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setSimType(Lcom/qti/extphone/Token;[Lcom/qti/extphone/QtiSimType;)V
    .locals 8

    .line 164
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimType: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioConfigAidl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    array-length v1, p2

    .line 169
    new-array v3, v1, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSimType: type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    aget-object v5, p2, v4

    invoke-virtual {v5}, Lcom/qti/extphone/QtiSimType;->get()I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 175
    aput v6, v3, v4

    goto :goto_1

    .line 176
    :cond_0
    aget-object v5, p2, v4

    invoke-virtual {v5}, Lcom/qti/extphone/QtiSimType;->get()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    .line 177
    aput v7, v3, v4

    goto :goto_1

    .line 178
    :cond_1
    aget-object v5, p2, v4

    invoke-virtual {v5}, Lcom/qti/extphone/QtiSimType;->get()I

    move-result v5

    if-ne v5, v6, :cond_2

    const/4 v5, 0x4

    .line 179
    aput v5, v3, v4

    goto :goto_1

    .line 181
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSimType Invalid SimType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, v4

    invoke-virtual {v6}, Lcom/qti/extphone/QtiSimType;->get()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->getQtiRadioConfig()Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    move-result-object p2

    invoke-interface {p2, v0, v3}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;->setSimType(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 188
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    const-string p0, "setSimType Failed."

    invoke-static {v2, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

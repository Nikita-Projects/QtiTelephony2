.class public Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;
.super Ljava/lang/Object;
.source "EsimOsUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;,
        Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;
    }
.end annotation


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

.field private mEsimSlotId:I

.field private mHandler:Landroid/os/Handler;

.field private mIsCardStatusVerified:Z

.field private mPortId:I


# direct methods
.method public static synthetic $r8$lambda$CQVg0GgRIYDfRWl6IakyTEqdWsk(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;ILjava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->lambda$performCardReset$0(ILjava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmEsimOsUpdateUtils(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEsimSlotId(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPortId(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mPortId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckIccCardAndProceed(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->checkIccCardAndProceed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCardStateChanged(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->handleCardStateChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSlotStatusEvent(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->handleSlotStatusEvent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogd(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyOSUpdateCompleted(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->notifyOSUpdateCompleted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mverifyITLAndOSDetailsAfterOSWrite(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->verifyITLAndOSDetailsAfterOSWrite()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mverifyITLDetailsAfterManifestWrite(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->verifyITLDetailsAfterManifestWrite()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mwriteOSFileContentInCard(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->writeOSFileContentInCard()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qti/phone/QtiRadioProxy;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mIsCardStatusVerified:Z

    const/4 v1, 0x1

    .line 60
    iput v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    .line 65
    iput v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mPortId:I

    .line 103
    new-instance v0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$1;

    invoke-direct {v0, p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$1;-><init>(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)V

    iput-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mContext:Landroid/content/Context;

    .line 86
    const-string p1, "Constructor"

    const-string v0, "EsimOsUpdateAgent"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getInstance(Landroid/content/Context;Lcom/qti/phone/QtiRadioProxy;)Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    .line 88
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 90
    new-instance p2, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;-><init>(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mHandler:Landroid/os/Handler;

    .line 91
    invoke-direct {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->registerForIntents()V

    .line 92
    invoke-direct {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->checkIccCardAndProceed()V

    return-void
.end method

.method private checkIccCardAndProceed()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 168
    iget v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private getSupportedSlotIdFromPortList(Landroid/telephony/UiccSlotInfo;)I
    .locals 3

    .line 307
    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccPortInfo;

    .line 308
    invoke-virtual {v1}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {v1}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v0

    .line 310
    invoke-virtual {v1}, Landroid/telephony/UiccPortInfo;->getPortIndex()I

    move-result v1

    iput v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mPortId:I

    goto :goto_0

    .line 313
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportedSlotIdFromPortList = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " portId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mPortId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EsimOsUpdateAgent"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private handleCardStateChanged()V
    .locals 5

    .line 185
    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 186
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 190
    iget v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    const/4 v2, -0x1

    const-string v3, "EsimOsUpdateAgent"

    if-eq v1, v2, :cond_5

    if-eqz v0, :cond_5

    .line 191
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mIsCardStatusVerified:Z

    .line 197
    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    const-string v1, "OS_UPDATE_MANIFEST_WRITTEN"

    invoke-virtual {v0, v1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getBooleanFromSharedPrefs(Ljava/lang/String;)Z

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    const-string v2, "OS_UPDATE_OS_FILE_WRITTEN"

    invoke-virtual {v1, v2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getBooleanFromSharedPrefs(Ljava/lang/String;)Z

    move-result v1

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCardStateChanged : mEsimSlotId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isManifestWritten = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isOsFileWritten = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    iget v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    iget v2, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mPortId:I

    invoke-virtual {v0, v1, v2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->readITLAndOSProperties(II)V

    .line 213
    invoke-direct {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->verifyITLDetailsAfterManifestWrite()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    .line 214
    invoke-direct {p0, v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->performCardReset(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 217
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    .line 218
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    .line 217
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 224
    :cond_2
    iget-boolean v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mIsCardStatusVerified:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    iget v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    iget v2, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mPortId:I

    invoke-virtual {v0, v1, v2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->readITLAndOSProperties(II)V

    :cond_3
    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mIsCardStatusVerified:Z

    .line 228
    invoke-direct {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->verifyITLAndOSDetailsBeforeManifestWrite()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_0
    return-void

    .line 192
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCardStateChanged, error mEsimSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleSlotStatusEvent()V
    .locals 11

    .line 242
    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    const-string v1, "OS_UPDATE_MANIFEST_WRITTEN"

    invoke-virtual {v0, v1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getBooleanFromSharedPrefs(Ljava/lang/String;)Z

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    const-string v2, "OS_UPDATE_OS_FILE_WRITTEN"

    invoke-virtual {v1, v2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getBooleanFromSharedPrefs(Ljava/lang/String;)Z

    move-result v1

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSlotStatusEvent isManifestWritten = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isOsFileWritten = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EsimOsUpdateAgent"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v2, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    .line 249
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_8

    .line 254
    array-length v5, v2

    if-nez v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v5, 0x0

    .line 259
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_5

    .line 260
    aget-object v6, v2, v5

    if-eqz v6, :cond_4

    .line 262
    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 263
    iget-object v7, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    iget v9, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    iget v10, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mPortId:I

    invoke-virtual {v7, v9, v10}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->readITLAndOSProperties(II)V

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 265
    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    .line 266
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v5, 0x1388

    .line 265
    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 269
    invoke-direct {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->verifyITLDetailsAfterManifestWrite()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 277
    invoke-direct {p0, v8}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->performCardReset(I)V

    goto :goto_2

    .line 279
    :cond_3
    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getIsEuicc()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getCardId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 280
    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getCardId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 282
    iget-object v7, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getCardId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->isOsUpdateSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 284
    invoke-direct {p0, v6}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->getSupportedSlotIdFromPortList(Landroid/telephony/UiccSlotInfo;)I

    move-result v4

    iput v4, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eSIM SlotId = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-nez v4, :cond_6

    .line 292
    const-string p0, "No supported eSIM present on device "

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 295
    :cond_6
    const-string v0, "Slot Status verified ... "

    invoke-direct {p0, v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->logd(Ljava/lang/String;)V

    .line 300
    iget-boolean v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mIsCardStatusVerified:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->verifyITLAndOSDetailsBeforeManifestWrite()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 301
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    return-void

    .line 255
    :cond_8
    :goto_3
    const-string p0, "SIM Slot information not available "

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$performCardReset$0(ILjava/lang/Integer;)V
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " CardReset result received. result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EsimOsUpdateAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 333
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 334
    invoke-direct {p0, v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->performCardReset(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 336
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 341
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    .line 342
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0

    .line 513
    const-string p0, "EsimOsUpdateAgent"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyOSUpdateCompleted()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->setManifestWrittenStatus(Z)V

    .line 175
    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    const-string v2, "OS_UPDATE_OS_FILE_WRITTEN"

    invoke-virtual {v0, v2, v1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->saveBooleanInSharedPrefs(Ljava/lang/String;Z)V

    .line 177
    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    invoke-virtual {v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " OS Upgrade process success, Image FileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EsimOsUpdateAgent"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    const-string v1, "OS_UPDATE_SUCCESS_FILE_NAME"

    invoke-virtual {p0, v1, v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->saveStringInSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private performCardReset(I)V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performCardReset state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->logd(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 324
    const-string p1, "performCardReset, telMgr null "

    invoke-direct {p0, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->logd(Ljava/lang/String;)V

    return-void

    .line 328
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 329
    new-instance v2, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$$ExternalSyntheticLambda0;-><init>(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;I)V

    .line 345
    iget p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/telephony/TelephonyManager;->setSimPowerStateForSlot(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private registerForIntents()V
    .locals 2

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    const-string v1, "android.telephony.action.SIM_SLOT_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private verifyITLAndOSDetailsAfterOSWrite()Z
    .locals 5

    .line 499
    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    invoke-virtual {v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getCurrentEuiccOsInfo()Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->getItlState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 502
    invoke-virtual {v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->getOngoingTransactionId()I

    move-result v1

    invoke-virtual {v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->getCurrentTransactionId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 505
    :goto_0
    iget-object v2, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    const-string v3, "EUICC_OS_BINARY_VERSION"

    invoke-virtual {v2, v3}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getIntFromSharedPrefs(Ljava/lang/String;)I

    move-result v2

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyITLAndOSDetailsAfterOSWrite : isITLDetailsVerified = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", oldOSBinaryVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", euiccOsInfo = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->logd(Ljava/lang/String;)V

    return v1
.end method

.method private verifyITLAndOSDetailsBeforeManifestWrite()Z
    .locals 6

    .line 439
    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    invoke-virtual {v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getCurrentEuiccOsInfo()Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    invoke-virtual {v1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getOsImageFile()Ljava/io/File;

    move-result-object v1

    .line 445
    const-string v2, "EsimOsUpdateAgent"

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->getItlState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 447
    invoke-virtual {v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->getOngoingTransactionId()I

    move-result v3

    invoke-virtual {v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->getCurrentTransactionId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 454
    iget-object v3, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    const-string v4, "OS_UPDATE_SUCCESS_FILE_NAME"

    invoke-virtual {v3, v4}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getStringFromSharedPrefs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " oldOSUpdateSuccessFileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    .line 458
    invoke-virtual {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 462
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyITLAndOSDetailsBeforeManifestWrite : isOSDetailsVerified = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", euiccOsInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", osFile = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private verifyITLDetailsAfterManifestWrite()Z
    .locals 3

    .line 476
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    invoke-virtual {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getCurrentEuiccOsInfo()Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->getItlState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->getOngoingTransactionId()I

    move-result v0

    invoke-virtual {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->getCurrentTransactionId()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 484
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyITLDetailsAfterManifestWrite : isITLDetailsVerified = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", euiccOsInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "EsimOsUpdateAgent"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private writeOSFileContentInCard()V
    .locals 24

    move-object/from16 v1, p0

    .line 360
    const-string v2, "writeOSFileContentInCard, final response "

    const-string v3, "OS Update Successfull, perform card down and up"

    const-string v4, "OS_UPDATE_OS_FILE_WRITTEN"

    const-string v5, "9000"

    const-string v6, "6301"

    iget-object v0, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    const-string v7, "OS_UPDATE_MANIFEST_WRITTEN"

    invoke-virtual {v0, v7}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getBooleanFromSharedPrefs(Ljava/lang/String;)Z

    move-result v0

    .line 362
    iget-object v7, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    invoke-virtual {v7}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getOsImageFile()Ljava/io/File;

    move-result-object v7

    .line 363
    const-string v8, "EsimOsUpdateAgent"

    if-nez v7, :cond_0

    .line 364
    const-string v0, "writeOSFileContentInCard, osfile does not exists"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 367
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isManifestWritten = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->logd(Ljava/lang/String;)V

    .line 369
    iget-object v9, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    iget v10, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    iget v11, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mPortId:I

    invoke-virtual {v9, v10, v11}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->openITLChannel(II)I

    move-result v9

    .line 370
    iget-object v10, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    invoke-virtual {v10, v9}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->isValidLogicalChannel(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Invalid Logical ChannelId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v12, 0x0

    .line 377
    :try_start_0
    new-instance v15, Ljava/io/InputStreamReader;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v15, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 378
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v23, v12

    const/4 v14, 0x0

    .line 382
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 383
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    .line 384
    const-string v13, " "

    const-string v11, ""

    invoke-virtual {v12, v13, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 386
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 387
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mEsimSlotId = "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mPortId = "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mPortId:I

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", count = "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " hexCount = "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", lineWithoutSpace  = "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->logd(Ljava/lang/String;)V

    .line 391
    new-instance v10, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;

    invoke-direct {v10, v1, v11}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;-><init>(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 392
    const-string v11, "OS_FILE"

    :goto_1
    move-object/from16 v22, v11

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v12, v23

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v12, v23

    goto/16 :goto_7

    :cond_2
    const-string v11, "MANIFEST_FILE"

    goto :goto_1

    .line 393
    :goto_2
    iget-object v12, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    iget v13, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    iget v11, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mPortId:I

    .line 394
    invoke-virtual {v10}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->getCla()I

    move-result v16

    invoke-virtual {v10}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->getIns()I

    move-result v17

    invoke-virtual {v10}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->getP1()I

    move-result v18

    .line 395
    invoke-virtual {v10}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->getP2()I

    move-result v19

    invoke-virtual {v10}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->getLc()I

    move-result v20

    .line 396
    invoke-virtual {v10}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->getData()Ljava/lang/String;

    move-result-object v21

    move v10, v14

    move v14, v11

    move-object v11, v15

    move v15, v9

    .line 393
    invoke-virtual/range {v12 .. v22}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->transmitApdu(IIIIIIIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    :try_start_2
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 398
    const-string v0, " Manifest Data Accepted, Resetting the Card"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->setManifestWrittenStatus(Z)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    goto :goto_7

    .line 405
    :cond_3
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 406
    const-string v0, " OS Writing got Error.. Exit"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    move-object/from16 v23, v12

    goto :goto_3

    :cond_5
    move v10, v14

    move-object v11, v15

    :goto_3
    add-int/lit8 v14, v10, 0x1

    move-object v15, v11

    goto/16 :goto_0

    :cond_6
    move-object v11, v15

    move-object/from16 v12, v23

    .line 412
    :goto_4
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    .line 413
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 417
    iget-object v0, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    iget v7, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    iget v10, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mPortId:I

    invoke-virtual {v0, v7, v10, v9}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->closeChannel(III)V

    if-eqz v12, :cond_7

    .line 418
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 422
    iget-object v0, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->saveBooleanInSharedPrefs(Ljava/lang/String;Z)V

    .line 424
    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 425
    invoke-direct {v1, v3}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->performCardReset(I)V

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    if-eqz v12, :cond_8

    .line 426
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 427
    invoke-direct {v1, v3}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->performCardReset(I)V

    .line 429
    :cond_8
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 415
    :goto_7
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 417
    iget-object v0, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    iget v7, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    iget v10, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mPortId:I

    invoke-virtual {v0, v7, v10, v9}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->closeChannel(III)V

    if-eqz v12, :cond_9

    .line 418
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 422
    iget-object v0, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->saveBooleanInSharedPrefs(Ljava/lang/String;Z)V

    .line 424
    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 425
    invoke-direct {v1, v3}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->performCardReset(I)V

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    if-eqz v12, :cond_a

    .line 426
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 427
    invoke-direct {v1, v3}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->performCardReset(I)V

    .line 429
    :cond_a
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    :goto_9
    return-void

    .line 417
    :goto_a
    iget-object v7, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    iget v10, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimSlotId:I

    iget v11, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mPortId:I

    invoke-virtual {v7, v10, v11, v9}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->closeChannel(III)V

    if-eqz v12, :cond_b

    .line 418
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    const/4 v3, 0x0

    goto :goto_b

    .line 422
    :cond_c
    iget-object v5, v1, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->mEsimOsUpdateUtils:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->saveBooleanInSharedPrefs(Ljava/lang/String;Z)V

    .line 424
    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 425
    invoke-direct {v1, v3}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->performCardReset(I)V

    goto :goto_c

    :goto_b
    if-eqz v12, :cond_d

    .line 426
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 427
    invoke-direct {v1, v3}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->performCardReset(I)V

    .line 429
    :cond_d
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    throw v0
.end method

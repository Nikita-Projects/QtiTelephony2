.class public Lcom/qti/phone/QtiNtnProfileHelper;
.super Ljava/lang/Object;
.source "QtiNtnProfileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileHandler;,
        Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileCallback;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEuiccMgr:Landroid/telephony/euicc/EuiccManager;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mQtiNtnProfileCallback:Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileCallback;

.field private mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubMgr:Landroid/telephony/SubscriptionManager;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$1mAaq5EY_tbuy16w7MC2FGWDa_g(Lcom/qti/phone/QtiNtnProfileHelper;ILandroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiNtnProfileHelper;->lambda$getEsimProfileIccIds$0(ILandroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$b4OzPOg6crzqzRESyWF6suG5s9Y(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/qti/phone/QtiNtnProfileHelper;->lambda$getEsimProfileIccIds$1(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$maoLTF85uPv-YyKF-SrMsj_AJiw(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/qti/phone/QtiNtnProfileHelper;->lambda$handleEnableProfile$3(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sQ8_6ZtQHrfJ5OIv32wZBulbNKs(ILandroid/telephony/UiccSlotMapping;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/qti/phone/QtiNtnProfileHelper;->lambda$getPortIndex$2(ILandroid/telephony/UiccSlotMapping;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/qti/phone/QtiNtnProfileHelper;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleDisableProfile(Lcom/qti/phone/QtiNtnProfileHelper;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiNtnProfileHelper;->handleDisableProfile(IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleEnableProfile(Lcom/qti/phone/QtiNtnProfileHelper;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiNtnProfileHelper;->handleEnableProfile(IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGetAllEsimProfiles(Lcom/qti/phone/QtiNtnProfileHelper;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiNtnProfileHelper;->handleGetAllEsimProfiles(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyDisableProfileStatus(Lcom/qti/phone/QtiNtnProfileHelper;IIZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiNtnProfileHelper;->notifyDisableProfileStatus(IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyEnableProfileStatus(Lcom/qti/phone/QtiNtnProfileHelper;IIZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiNtnProfileHelper;->notifyEnableProfileStatus(IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qti/phone/QtiRadioProxy;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/qti/phone/QtiNtnProfileHelper$1;

    invoke-direct {v0, p0}, Lcom/qti/phone/QtiNtnProfileHelper$1;-><init>(Lcom/qti/phone/QtiNtnProfileHelper;)V

    iput-object v0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    iput-object p1, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    .line 56
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 57
    iget-object p1, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mContext:Landroid/content/Context;

    const-string p2, "euicc"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/euicc/EuiccManager;

    iput-object p1, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mEuiccMgr:Landroid/telephony/euicc/EuiccManager;

    .line 58
    iget-object p1, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 60
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "QtiNtnProfileHelper"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 61
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 62
    new-instance p1, Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileHandler;

    iget-object v0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileHandler;-><init>(Lcom/qti/phone/QtiNtnProfileHelper;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance p1, Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileCallback;-><init>(Lcom/qti/phone/QtiNtnProfileHelper;Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileCallback-IA;)V

    iput-object p1, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mQtiNtnProfileCallback:Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileCallback;

    .line 65
    iget-object v0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {v0, p1}, Lcom/qti/phone/QtiRadioProxy;->registerInternalCallback(Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;)V

    .line 66
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    const-string v0, "com.android.action.disable_esim"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v0, "com.android.action.enable_esim"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 70
    const-string p0, "constructor"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getCardId(I)I
    .locals 5

    .line 104
    iget-object p0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mTelMgr:Landroid/telephony/TelephonyManager;

    const-string v0, "QtiNtnProfileHelper"

    if-nez p0, :cond_0

    .line 105
    const-string p0, "TelephonyManager is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object p0

    .line 110
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccCardInfo;

    if-nez v1, :cond_2

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/UiccCardInfo;->getPorts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccPortInfo;

    .line 115
    invoke-virtual {v1}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_3

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getCardId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v1}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result p0

    return p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method private getEsimProfileIccIds(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiNtnProfileHelper;->getCardId(I)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/qti/phone/QtiNtnProfileHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/qti/phone/QtiNtnProfileHelper$$ExternalSyntheticLambda0;-><init>(Lcom/qti/phone/QtiNtnProfileHelper;I)V

    .line 96
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/qti/phone/QtiNtnProfileHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/qti/phone/QtiNtnProfileHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 97
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/qti/phone/QtiNtnProfileHelper$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/qti/phone/QtiNtnProfileHelper$$ExternalSyntheticLambda2;-><init>()V

    .line 98
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 99
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 92
    :cond_1
    :goto_0
    const-string p0, "QtiNtnProfileHelper"

    const-string p1, "allSubs null or cardId invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getPortIndex(I)I
    .locals 2

    .line 125
    iget-object p0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mTelMgr:Landroid/telephony/TelephonyManager;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 128
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSlotMapping()Ljava/util/Collection;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/qti/phone/QtiNtnProfileHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/qti/phone/QtiNtnProfileHelper$$ExternalSyntheticLambda4;-><init>(I)V

    .line 135
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 136
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/UiccSlotMapping;

    if-eqz p0, :cond_1

    .line 138
    invoke-virtual {p0}, Landroid/telephony/UiccSlotMapping;->getPortIndex()I

    move-result p0

    return p0

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception during getPortIndex : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiNtnProfileHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private handleDisableProfile(IILjava/lang/String;)V
    .locals 7

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDisableProfile : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " refNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " iccId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "QtiNtnProfileHelper"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiNtnProfileHelper;->getCardId(I)I

    move-result p3

    const/4 v1, 0x0

    if-gez p3, :cond_0

    .line 147
    invoke-direct {p0, p1, p2, v1}, Lcom/qti/phone/QtiNtnProfileHelper;->notifyDisableProfileStatus(IIZ)V

    return-void

    .line 151
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.action.disable_esim"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v3, "slotId"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    const-string v3, "refNum"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiNtnProfileHelper;->getPortIndex(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v3, v1

    .line 160
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleDisableProfile :  portIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " cardId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :try_start_0
    iget-object v5, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mEuiccMgr:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v5, p3}, Landroid/telephony/euicc/EuiccManager;->createForCardId(I)Landroid/telephony/euicc/EuiccManager;

    move-result-object p3

    iget-object v5, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mContext:Landroid/content/Context;

    const/high16 v6, 0x4000000

    .line 164
    invoke-static {v5, v1, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 163
    invoke-virtual {p3, v4, v3, v2}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(IILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during switchToSubscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0, p1, p2, v1}, Lcom/qti/phone/QtiNtnProfileHelper;->notifyDisableProfileStatus(IIZ)V

    :goto_0
    return-void
.end method

.method private handleEnableProfile(IILjava/lang/String;)V
    .locals 7

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEnableProfile : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " refNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " iccId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiNtnProfileHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 175
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiNtnProfileHelper;->getCardId(I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-gez v2, :cond_0

    goto/16 :goto_2

    .line 184
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/qti/phone/QtiNtnProfileHelper$$ExternalSyntheticLambda3;

    invoke-direct {v4, p3}, Lcom/qti/phone/QtiNtnProfileHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p3

    .line 185
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v0, v4, :cond_1

    .line 186
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p3

    goto :goto_0

    :cond_1
    move p3, v5

    :goto_0
    if-ne p3, v5, :cond_2

    .line 190
    const-string p3, "SubId not found"

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0, p1, p2, v3}, Lcom/qti/phone/QtiNtnProfileHelper;->notifyEnableProfileStatus(IIZ)V

    return-void

    .line 195
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.action.enable_esim"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    iget-object v4, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v4, "slotId"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    const-string v4, "refNum"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiNtnProfileHelper;->getPortIndex(I)I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v3

    .line 204
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleEnableProfile :  portIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " cardId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :try_start_0
    iget-object v5, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mEuiccMgr:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v5, v2}, Landroid/telephony/euicc/EuiccManager;->createForCardId(I)Landroid/telephony/euicc/EuiccManager;

    move-result-object v2

    iget-object v5, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mContext:Landroid/content/Context;

    const/high16 v6, 0x4000000

    .line 208
    invoke-static {v5, v3, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 207
    invoke-virtual {v2, p3, v4, v0}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(IILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during switchToSubscription: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0, p1, p2, v3}, Lcom/qti/phone/QtiNtnProfileHelper;->notifyEnableProfileStatus(IIZ)V

    :goto_1
    return-void

    .line 177
    :cond_4
    :goto_2
    const-string p3, "allSubs null or cardId invalid"

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0, p1, p2, v3}, Lcom/qti/phone/QtiNtnProfileHelper;->notifyEnableProfileStatus(IIZ)V

    return-void
.end method

.method private handleGetAllEsimProfiles(II)V
    .locals 3

    .line 217
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiNtnProfileHelper;->getEsimProfileIccIds(I)Ljava/util/List;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGetAllEsimProfiles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiNtnProfileHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 220
    :goto_0
    iget-object p0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    if-eqz p0, :cond_1

    .line 222
    :try_start_0
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/qti/phone/QtiRadioProxy;->sendAllEsimProfiles(IZILjava/util/List;)Lcom/qti/extphone/Token;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception during sendAllEsimProfiles: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 227
    :cond_1
    const-string p0, "mQtiRadioxProxy is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private synthetic lambda$getEsimProfileIccIds$0(ILandroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiNtnProfileHelper;->getCardId(I)I

    move-result p0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getEsimProfileIccIds$1(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 0

    .line 98
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getPortIndex$2(ILandroid/telephony/UiccSlotMapping;)Z
    .locals 0

    .line 135
    invoke-virtual {p1}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$handleEnableProfile$3(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 184
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private notifyDisableProfileStatus(IIZ)V
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDisableProfileStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiNtnProfileHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    if-eqz p0, :cond_0

    .line 248
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->notifyDisableProfileStatus(IIZ)Lcom/qti/extphone/Token;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception during notifyDisableProfileStatus: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_0
    const-string p0, "mQtiRadioProxy is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyEnableProfileStatus(IIZ)V
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEnableProfileStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiNtnProfileHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    if-eqz p0, :cond_0

    .line 235
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->notifyEnableProfileStatus(IIZ)Lcom/qti/extphone/Token;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception during notifyEnableProfileStatus: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :cond_0
    const-string p0, "mQtiRadioProxy is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mQtiNtnProfileCallback:Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileCallback;

    invoke-virtual {v0, v1}, Lcom/qti/phone/QtiRadioProxy;->unRegisterInternalCallback(Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;)V

    .line 323
    iget-object v0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    iget-object v0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 326
    iput-object v0, p0, Lcom/qti/phone/QtiNtnProfileHelper;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.class public Lcom/qti/phone/QtiDeviceConfigController;
.super Ljava/lang/Object;
.source "QtiDeviceConfigController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/QtiDeviceConfigController$QtiDeviceConfigHandler;
    }
.end annotation


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentAvailableSimCount:I

.field private mDefaultTimer:I

.field private mDeviceConfigState:I

.field private mFeatureConfig:I

.field private mHandler:Landroid/os/Handler;

.field private mPhoneCount:I

.field private mProgressDialog:Landroid/app/Dialog;

.field private mSwitchSlotFailedRetries:I

.field private mSwitchStatusCheckRetries:I

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceConfigState(Lcom/qti/phone/QtiDeviceConfigController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/qti/phone/QtiDeviceConfigController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDeviceConfigState(Lcom/qti/phone/QtiDeviceConfigController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckWhetherSlotSwitchOperationCompleted(Lcom/qti/phone/QtiDeviceConfigController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->checkWhetherSlotSwitchOperationCompleted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissProgressBar(Lcom/qti/phone/QtiDeviceConfigController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->dismissProgressBar()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMultiSimConfigChanged(Lcom/qti/phone/QtiDeviceConfigController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiDeviceConfigController;->handleMultiSimConfigChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogd(Lcom/qti/phone/QtiDeviceConfigController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiDeviceConfigController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformDeviceConfigSwitchIfRequired(Lcom/qti/phone/QtiDeviceConfigController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->performDeviceConfigSwitchIfRequired()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mTm:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mCurrentAvailableSimCount:I

    .line 48
    iput v1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    .line 52
    iput-object v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mProgressDialog:Landroid/app/Dialog;

    const v0, 0x1d4c0

    .line 54
    iput v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDefaultTimer:I

    .line 132
    new-instance v0, Lcom/qti/phone/QtiDeviceConfigController$1;

    invoke-direct {v0, p0}, Lcom/qti/phone/QtiDeviceConfigController$1;-><init>(Lcom/qti/phone/QtiDeviceConfigController;)V

    iput-object v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    iput-object p1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mContext:Landroid/content/Context;

    const/16 p1, 0x7530

    if-lt p3, p1, :cond_0

    .line 97
    iput p3, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDefaultTimer:I

    .line 99
    :cond_0
    iput p2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mFeatureConfig:I

    .line 101
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    iput p1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mPhoneCount:I

    goto :goto_0

    .line 105
    :cond_1
    const-string p1, "Telephony Manager is null"

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiDeviceConfigController;->loge(Ljava/lang/String;)V

    .line 108
    :goto_0
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "QtiDeviceConfigController"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance p2, Lcom/qti/phone/QtiDeviceConfigController$QtiDeviceConfigHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/qti/phone/QtiDeviceConfigController$QtiDeviceConfigHandler;-><init>(Lcom/qti/phone/QtiDeviceConfigController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    const-string p2, "android.telephony.action.SIM_SLOT_STATUS_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string p2, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string p2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string p2, "org.codeaurora.intent.action.SMS_CALLBACK_MODE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object p2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    iget-object p1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    .line 121
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x7d0

    .line 120
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "constructor "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mPhoneCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " timer="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " config="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mFeatureConfig:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiDeviceConfigController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private checkWhetherSlotSwitchOperationCompleted()V
    .locals 3

    .line 200
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    const-string v0, "slotsInfo is null"

    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->loge(Ljava/lang/String;)V

    return-void

    .line 206
    :cond_0
    iget v1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mSwitchStatusCheckRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mSwitchStatusCheckRetries:I

    .line 207
    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->getCountOfSimsPresentOnDevice([Landroid/telephony/UiccSlotInfo;)I

    move-result v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "availableSimCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " retry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mSwitchStatusCheckRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/phone/QtiDeviceConfigController;->logi(Ljava/lang/String;)V

    .line 210
    iget v1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mCurrentAvailableSimCount:I

    const/4 v2, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mSwitchStatusCheckRetries:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 218
    :cond_1
    iget-object p0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 212
    :cond_2
    :goto_0
    iput v2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    const/4 v0, 0x0

    .line 213
    iput v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mSwitchStatusCheckRetries:I

    .line 214
    iput v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mSwitchSlotFailedRetries:I

    .line 215
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->performDeviceConfigSwitchIfRequired()V

    .line 216
    iget v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->dismissProgressBar()V

    :cond_3
    :goto_1
    return-void
.end method

.method private dismissProgressBar()V
    .locals 2

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " dismiss progress dialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->logi(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 472
    iput-object v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mProgressDialog:Landroid/app/Dialog;

    .line 473
    iget-object p0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private getCountOfSimsPresentOnDevice([Landroid/telephony/UiccSlotInfo;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 549
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 550
    aget-object v2, p1, v0

    if-nez v2, :cond_0

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slotInfo null, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/phone/QtiDeviceConfigController;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 555
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private getPresentPhysicalSlotId([Landroid/telephony/UiccSlotInfo;)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 566
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 567
    aget-object v2, p1, v1

    if-nez v2, :cond_0

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slotInfo null, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/phone/QtiDeviceConfigController;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 572
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v0, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mTm:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 582
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mTm:Landroid/telephony/TelephonyManager;

    .line 584
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mTm:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 227
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private handleMultiSimConfigChanged(I)V
    .locals 2

    .line 421
    iput p1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mPhoneCount:I

    .line 423
    iget v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 427
    iget v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mCurrentAvailableSimCount:I

    if-eq v0, p1, :cond_0

    .line 428
    iget-object p1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 430
    iput p1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    .line 431
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->dismissProgressBar()V

    .line 433
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "slotsInfo length "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mCurrentAvailableSimCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " phone count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mPhoneCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiDeviceConfigController;->logd(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private handleSwitchSlotException()V
    .locals 3

    .line 378
    iget v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mSwitchSlotFailedRetries:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 379
    iput v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mSwitchSlotFailedRetries:I

    .line 380
    iget-object p0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mHandler:Landroid/os/Handler;

    .line 381
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xfa0

    .line 380
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private invokeSwitchSlotIfRequired(IZ)Z
    .locals 5

    .line 307
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->isSwitchSlotEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 308
    const-string p1, "invokeSwitchSlotIfRequired, slot switch config disabled"

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiDeviceConfigController;->logd(Ljava/lang/String;)V

    return v1

    .line 312
    :cond_0
    iget v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mCurrentAvailableSimCount:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-ne p1, v2, :cond_1

    if-nez p2, :cond_1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-nez p1, :cond_3

    :cond_2
    if-eqz p2, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eqz v1, :cond_4

    .line 324
    invoke-direct {p0, v2}, Lcom/qti/phone/QtiDeviceConfigController;->sendSwitchSlotRequest(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    .line 325
    iput p1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    .line 328
    iget-object p0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0xfa0

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    return v1
.end method

.method private isDeviceIdle()Z
    .locals 1

    .line 478
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->isDeviceInCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->isDeviceInEcbm()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->isDeviceinScbm()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isDeviceInCall()Z
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 486
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeviceInCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/phone/QtiDeviceConfigController;->logd(Ljava/lang/String;)V

    return v0
.end method

.method private isDeviceInDsds()Z
    .locals 1

    .line 588
    iget p0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mPhoneCount:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isDeviceInEcbm()Z
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    .line 494
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 497
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 501
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 508
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 509
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v1

    goto :goto_0

    .line 512
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeviceInEcbm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->logd(Ljava/lang/String;)V

    return v1
.end method

.method private isDeviceInSingleSim()Z
    .locals 1

    .line 595
    iget p0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mPhoneCount:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isDeviceSlotsCrossMapped([Landroid/telephony/UiccSlotInfo;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 525
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 526
    aget-object v2, p1, v0

    if-nez v2, :cond_0

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slotInfo null, index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/phone/QtiDeviceConfigController;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 534
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 535
    invoke-virtual {v2}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v3}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v3

    if-eq v3, v0, :cond_1

    move v1, v4

    .line 540
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "physical slot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " logical slotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v2}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v2}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    invoke-direct {p0, v2}, Lcom/qti/phone/QtiDeviceConfigController;->logv(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private isDeviceinScbm()Z
    .locals 3

    .line 517
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_scbm()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeviceinScbm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/phone/QtiDeviceConfigController;->logd(Ljava/lang/String;)V

    return v0
.end method

.method private isSwitchSlotEnabled()Z
    .locals 1

    .line 618
    iget p0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mFeatureConfig:I

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0

    .line 606
    const-string p0, "QtiDeviceConfigController"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0

    .line 614
    const-string p0, "QtiDeviceConfigController"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 0

    .line 610
    const-string p0, "QtiDeviceConfigController"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0

    .line 602
    const-string p0, "QtiDeviceConfigController"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private performDeviceConfigSwitchIfRequired()V
    .locals 6

    .line 238
    iget v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 239
    const-string v0, "switch slot in progress, ignore "

    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->loge(Ljava/lang/String;)V

    return-void

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 244
    const-string v0, "null slotInfo "

    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->loge(Ljava/lang/String;)V

    return-void

    .line 248
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slotsInfo length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " device config state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/phone/QtiDeviceConfigController;->logd(Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->isDeviceSlotsCrossMapped([Landroid/telephony/UiccSlotInfo;)Z

    move-result v1

    .line 253
    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->getCountOfSimsPresentOnDevice([Landroid/telephony/UiccSlotInfo;)I

    move-result v2

    iput v2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mCurrentAvailableSimCount:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 255
    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->getPresentPhysicalSlotId([Landroid/telephony/UiccSlotInfo;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v3

    .line 258
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone count="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/qti/phone/QtiDeviceConfigController;->mPhoneCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " No of SIMs present="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/qti/phone/QtiDeviceConfigController;->mCurrentAvailableSimCount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " areSlotsSwitched="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " slotId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/phone/QtiDeviceConfigController;->logd(Ljava/lang/String;)V

    .line 264
    iget v2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mCurrentAvailableSimCount:I

    if-eqz v2, :cond_8

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 266
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->isDeviceInDsds()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    goto :goto_2

    .line 271
    :cond_3
    iget v2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    if-nez v2, :cond_4

    iget v2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mCurrentAvailableSimCount:I

    if-ne v2, v4, :cond_4

    .line 272
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->isDeviceInDsds()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 275
    const-string v0, "Send delayed event"

    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->logd(Ljava/lang/String;)V

    .line 276
    iput v4, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    .line 277
    iget-object v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mHandler:Landroid/os/Handler;

    .line 278
    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget p0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDefaultTimer:I

    int-to-long v2, p0

    .line 277
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 280
    :cond_4
    iget v2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mHandler:Landroid/os/Handler;

    .line 281
    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 282
    const-string v0, "Message already in queue, ignore"

    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->logd(Ljava/lang/String;)V

    return-void

    .line 288
    :cond_5
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->isDeviceIdle()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 293
    invoke-direct {p0, v0, v1}, Lcom/qti/phone/QtiDeviceConfigController;->invokeSwitchSlotIfRequired(IZ)Z

    move-result v0

    if-nez v0, :cond_7

    .line 295
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->switchDeviceConfig()V

    goto :goto_1

    :cond_6
    const/4 v0, 0x5

    .line 298
    iput v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    :cond_7
    :goto_1
    return-void

    .line 268
    :cond_8
    :goto_2
    iput v3, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    .line 269
    const-string v0, "Nothing to be done, ignore"

    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private sendSwitchSlotRequest(Z)Z
    .locals 8

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSwitchSlotRequest, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->logi(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 337
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 343
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 346
    :goto_0
    array-length v5, v1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_4

    if-eqz p1, :cond_1

    .line 350
    new-instance v5, Landroid/telephony/UiccSlotMapping;

    invoke-direct {v5, v2, v4, v4}, Landroid/telephony/UiccSlotMapping;-><init>(III)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v4

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v6, v2

    .line 353
    :goto_1
    aget-object v5, v1, v4

    if-nez v5, :cond_3

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UiccSlotInfo is null for index = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiDeviceConfigController;->logi(Ljava/lang/String;)V

    .line 355
    iput v2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    return v2

    .line 358
    :cond_3
    new-instance v5, Landroid/telephony/UiccSlotMapping;

    aget-object v7, v1, v4

    .line 359
    invoke-virtual {v7}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    .line 360
    invoke-interface {v7}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v7}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v7

    invoke-direct {v5, v2, v6, v7}, Landroid/telephony/UiccSlotMapping;-><init>(III)V

    .line 358
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendSwitchSlotRequest, physical slot="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " logical slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v4

    .line 363
    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v6}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 362
    invoke-direct {p0, v5}, Lcom/qti/phone/QtiDeviceConfigController;->logi(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 366
    :cond_4
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->showProgressBar()V

    .line 368
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->setSimSlotMapping(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception p1

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSwitchSlotRequest failed with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiDeviceConfigController;->loge(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->handleSwitchSlotException()V

    return v2

    .line 339
    :cond_5
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendSwitchSlotRequest, slotInfo null, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiDeviceConfigController;->loge(Ljava/lang/String;)V

    return v2
.end method

.method private showProgressBar()V
    .locals 6

    .line 438
    const-string v0, " display progress dialog "

    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->logi(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const-string v0, " Progress dialog already shown "

    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->logi(Ljava/lang/String;)V

    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mContext:Landroid/content/Context;

    .line 445
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 447
    iget-object v1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0c0038

    const/4 v3, 0x0

    .line 449
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900ab

    .line 450
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 451
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 454
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 456
    iget-object v2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0xc350

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 459
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/qti/phone/QtiDeviceConfigController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 460
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 461
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 462
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mProgressDialog:Landroid/app/Dialog;

    .line 464
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 465
    iget-object p0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private switchDeviceConfig()V
    .locals 4

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchDeviceConfig, sim count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mCurrentAvailableSimCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phone count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mPhoneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->logd(Ljava/lang/String;)V

    .line 392
    iget v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mCurrentAvailableSimCount:I

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->isDeviceInSingleSim()Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    .line 394
    :cond_0
    iget v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mCurrentAvailableSimCount:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->isDeviceInDsds()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eq v3, v1, :cond_3

    .line 399
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_2

    .line 401
    const-string v0, "TelephonyManager is null"

    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->loge(Ljava/lang/String;)V

    return-void

    .line 405
    :cond_2
    iput v2, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    .line 406
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->switchMultiSimConfig(I)V

    .line 407
    invoke-direct {p0}, Lcom/qti/phone/QtiDeviceConfigController;->showProgressBar()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 410
    iput v0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mDeviceConfigState:I

    :goto_1
    return-void
.end method


# virtual methods
.method onMultiSimConfigChanged(I)V
    .locals 2

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiSimConfigChanged, current phone count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/phone/QtiDeviceConfigController;->mPhoneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " new count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/phone/QtiDeviceConfigController;->logd(Ljava/lang/String;)V

    .line 417
    iget-object p0, p0, Lcom/qti/phone/QtiDeviceConfigController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

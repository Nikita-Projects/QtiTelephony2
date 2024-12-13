.class public Lcom/qti/phone/QtiCellularRoamingPreferenceController;
.super Landroid/os/Handler;
.source "QtiCellularRoamingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/QtiCellularRoamingPreferenceController$QtiCellularRoamingCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QtiCellularRoamingPreferenceController"


# instance fields
.field private mActiveModemCount:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCellularRoamingPref:Lcom/qti/extphone/CellularRoamingPreference;

.field private mClient:Lcom/qti/extphone/Client;

.field private final mContext:Landroid/content/Context;

.field private mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private mNumProcessedSlots:I

.field private mPackageName:Ljava/lang/String;

.field private mQtiCellularRoamingCallback:Lcom/qti/phone/QtiCellularRoamingPreferenceController$QtiCellularRoamingCallback;

.field private final mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

.field private mRadioAvailable:[Z

.field private mRetryCount:[I


# direct methods
.method public static synthetic $r8$lambda$8wMZcqGDCuPm8SU85o-bd_gvryo(Lcom/qti/phone/QtiCellularRoamingPreferenceController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->lambda$handleSetPreferenceResponse$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmClient(Lcom/qti/phone/QtiCellularRoamingPreferenceController;)Lcom/qti/extphone/Client;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mClient:Lcom/qti/extphone/Client;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/qti/phone/QtiCellularRoamingPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtTelephonyManager(Lcom/qti/phone/QtiCellularRoamingPreferenceController;)Lcom/qti/extphone/ExtTelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/qti/phone/QtiCellularRoamingPreferenceController;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmClient(Lcom/qti/phone/QtiCellularRoamingPreferenceController;Lcom/qti/extphone/Client;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mClient:Lcom/qti/extphone/Client;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetModemPreference(Lcom/qti/phone/QtiCellularRoamingPreferenceController;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->getModemPreference([I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterReceivers(Lcom/qti/phone/QtiCellularRoamingPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->registerReceivers()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smlogd(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/qti/phone/QtiRadioProxy;)V
    .locals 1

    .line 95
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 57
    iput p2, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mNumProcessedSlots:I

    .line 58
    filled-new-array {p2, p2}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mRetryCount:[I

    const/4 p2, 0x2

    .line 59
    new-array p2, p2, [Z

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mRadioAvailable:[Z

    .line 66
    new-instance p2, Lcom/qti/phone/QtiCellularRoamingPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/qti/phone/QtiCellularRoamingPreferenceController$1;-><init>(Lcom/qti/phone/QtiCellularRoamingPreferenceController;)V

    iput-object p2, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 115
    new-instance p2, Lcom/qti/phone/QtiCellularRoamingPreferenceController$2;

    invoke-direct {p2, p0}, Lcom/qti/phone/QtiCellularRoamingPreferenceController$2;-><init>(Lcom/qti/phone/QtiCellularRoamingPreferenceController;)V

    iput-object p2, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    iput-object p1, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mContext:Landroid/content/Context;

    .line 97
    iput-object p3, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mPackageName:Ljava/lang/String;

    .line 99
    new-instance p2, Lcom/qti/phone/QtiCellularRoamingPreferenceController$QtiCellularRoamingCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/qti/phone/QtiCellularRoamingPreferenceController$QtiCellularRoamingCallback;-><init>(Lcom/qti/phone/QtiCellularRoamingPreferenceController;Lcom/qti/phone/QtiCellularRoamingPreferenceController$QtiCellularRoamingCallback-IA;)V

    iput-object p2, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mQtiCellularRoamingCallback:Lcom/qti/phone/QtiCellularRoamingPreferenceController$QtiCellularRoamingCallback;

    .line 100
    invoke-virtual {p3, p2}, Lcom/qti/phone/QtiRadioProxy;->registerInternalCallback(Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;)V

    .line 101
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p2

    iput p2, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mActiveModemCount:I

    .line 105
    :cond_0
    invoke-static {p1}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 106
    iget-object p0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {p1, p0}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private cleanUp(II)V
    .locals 3

    .line 250
    iget v0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mNumProcessedSlots:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mNumProcessedSlots:I

    .line 251
    iget v2, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mActiveModemCount:I

    if-ne v0, v2, :cond_1

    if-eq p2, v1, :cond_0

    iget-object p2, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mRetryCount:[I

    aget p1, p2, p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_1

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    iget-object p0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mQtiCellularRoamingCallback:Lcom/qti/phone/QtiCellularRoamingPreferenceController$QtiCellularRoamingCallback;

    invoke-virtual {p1, p0}, Lcom/qti/phone/QtiRadioProxy;->unRegisterInternalCallback(Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;)V

    :cond_1
    return-void
.end method

.method private comparePreferences(I)V
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mRadioAvailable:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 198
    const-string p0, "comparePreferences: radio unavailable. bail out!"

    invoke-static {p0}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->logd(Ljava/lang/String;)V

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mCellularRoamingPref:Lcom/qti/extphone/CellularRoamingPreference;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v0}, Lcom/qti/extphone/CellularRoamingPreference;->getInternationalCellularRoamingPref()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 203
    :goto_0
    const-string v2, "CELLULAR_ROAMING_STATE_KEY"

    invoke-direct {p0, v2, p1}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->readFromCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - cached state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", modem state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->logd(Ljava/lang/String;)V

    if-ne v0, v1, :cond_2

    .line 206
    const-string p0, "comparePreferences: invalid modem state"

    invoke-static {p0}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->logd(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eq v2, v0, :cond_3

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    iget-object p0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mClient:Lcom/qti/extphone/Client;

    new-instance v3, Lcom/qti/extphone/CellularRoamingPreference;

    invoke-direct {v3, v2, v1}, Lcom/qti/extphone/CellularRoamingPreference;-><init>(II)V

    invoke-virtual {v0, p0, p1, v3}, Lcom/qti/phone/QtiRadioProxy;->setCellularRoamingPreference(Lcom/qti/extphone/Client;ILcom/qti/extphone/CellularRoamingPreference;)Lcom/qti/extphone/Token;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "comparePreferences: exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->loge(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CELLULAR_ROAMING_SYNC_KEY"

    invoke-direct {p0, v2, p1, v1}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->writeToCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 220
    invoke-direct {p0, p1, v0}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->cleanUp(II)V

    :goto_1
    return-void
.end method

.method private varargs getModemPreference([I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 177
    :goto_0
    iget v2, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mActiveModemCount:I

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .line 178
    iput-object v2, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mCellularRoamingPref:Lcom/qti/extphone/CellularRoamingPreference;

    .line 179
    array-length v2, p1

    if-eqz v2, :cond_0

    aget v2, p1, v0

    if-eq v2, v1, :cond_0

    goto :goto_2

    .line 183
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v2, v1}, Lcom/qti/extphone/ExtTelephonyManager;->getCellularRoamingPreference(I)Lcom/qti/extphone/CellularRoamingPreference;

    move-result-object v2

    iput-object v2, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mCellularRoamingPref:Lcom/qti/extphone/CellularRoamingPreference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getModemPreference: exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->loge(Ljava/lang/String;)V

    .line 187
    :goto_1
    iget-object v2, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mCellularRoamingPref:Lcom/qti/extphone/CellularRoamingPreference;

    if-eqz v2, :cond_1

    .line 188
    invoke-direct {p0, v1}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->comparePreferences(I)V

    goto :goto_2

    .line 190
    :cond_1
    const-string v2, "getModemPreference: pref null"

    invoke-static {v2}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->logd(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleRadioPowerStateChanged(II)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Radio is available for slot "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->logd(Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mRadioAvailable:[Z

    aput-boolean v0, p2, p1

    .line 170
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->getModemPreference([I)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mRadioAvailable:[Z

    const/4 p2, 0x0

    aput-boolean p2, p0, p1

    :goto_0
    return-void
.end method

.method private handleSetPreferenceResponse(II)V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mRetryCount:[I

    aget v1, v0, p1

    const/4 v2, 0x3

    const-string v3, "CELLULAR_ROAMING_SYNC_KEY"

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v3, p1, v0}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->writeToCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->cleanUp(II)V

    goto :goto_0

    :cond_0
    add-int/2addr v1, v2

    .line 157
    aput v1, v0, p1

    .line 158
    new-instance p2, Lcom/qti/phone/QtiCellularRoamingPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/qti/phone/QtiCellularRoamingPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/qti/phone/QtiCellularRoamingPreferenceController;I)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v3, p1, v0}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->writeToCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->cleanUp(II)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$handleSetPreferenceResponse$0(I)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->comparePreferences(I)V

    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    .line 258
    sget-object v0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    .line 262
    sget-object v0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readFromCache(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x567196ea

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CELLULAR_ROAMING_STATE_KEY"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 238
    iget-object p0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 241
    :cond_1
    :goto_0
    const-string p0, "readFromCache: unsupported id"

    invoke-static {p0}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private registerReceivers()V
    .locals 2

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    const-string v1, "org.codeaurora.intent.action.RADIO_POWER_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private writeToCache(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2

    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x7162d5aa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CELLULAR_ROAMING_SYNC_KEY"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 227
    iget-object p0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p3, Ljava/lang/Integer;

    .line 228
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 227
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 231
    :cond_1
    :goto_0
    const-string p0, "writeToCache: unsupported id"

    invoke-static {p0}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->loge(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected event: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_0
    const-string v0, "EVENT_SET_CELLULAR_ROAMING_PREFERENCE_RESPONSE"

    invoke-static {v0}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->logd(Ljava/lang/String;)V

    .line 140
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qti/phone/QtiRadioProxy$Result;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-virtual {v0}, Lcom/qti/extphone/Status;->get()I

    move-result v0

    .line 141
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1, v0}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->handleSetPreferenceResponse(II)V

    goto :goto_0

    .line 144
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/qti/phone/QtiCellularRoamingPreferenceController;->handleRadioPowerStateChanged(II)V

    :goto_0
    return-void
.end method

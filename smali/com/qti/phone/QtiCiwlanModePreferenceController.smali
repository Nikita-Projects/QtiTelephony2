.class public Lcom/qti/phone/QtiCiwlanModePreferenceController;
.super Landroid/os/Handler;
.source "QtiCiwlanModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/QtiCiwlanModePreferenceController$QtiCiwlanModePrefCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QtiCiwlanModePreferenceController"


# instance fields
.field private mActiveModemCount:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClient:Lcom/qti/extphone/Client;

.field private final mContext:Landroid/content/Context;

.field private mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private mModemCiwlanModePref:Lcom/qti/extphone/CiwlanConfig;

.field private mNumProcessedSlots:I

.field private mPackageName:Ljava/lang/String;

.field private mQtiCiwlanModePrefCallback:Lcom/qti/phone/QtiCiwlanModePreferenceController$QtiCiwlanModePrefCallback;

.field private final mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

.field private mRadioAvailable:[Z

.field private mRetryCount:[I


# direct methods
.method public static synthetic $r8$lambda$uSXkEJI0miMvMBK8vOvkvl9oy5Y(Lcom/qti/phone/QtiCiwlanModePreferenceController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->lambda$handleSetModePreferenceResponse$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmClient(Lcom/qti/phone/QtiCiwlanModePreferenceController;)Lcom/qti/extphone/Client;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mClient:Lcom/qti/extphone/Client;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/qti/phone/QtiCiwlanModePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtTelephonyManager(Lcom/qti/phone/QtiCiwlanModePreferenceController;)Lcom/qti/extphone/ExtTelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/qti/phone/QtiCiwlanModePreferenceController;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmClient(Lcom/qti/phone/QtiCiwlanModePreferenceController;Lcom/qti/extphone/Client;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mClient:Lcom/qti/extphone/Client;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetModemPreference(Lcom/qti/phone/QtiCiwlanModePreferenceController;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->getModemPreference([I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterReceivers(Lcom/qti/phone/QtiCiwlanModePreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->registerReceivers()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smlogd(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/qti/phone/QtiRadioProxy;)V
    .locals 1

    .line 100
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 62
    iput p2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mNumProcessedSlots:I

    .line 63
    filled-new-array {p2, p2}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mRetryCount:[I

    const/4 p2, 0x2

    .line 64
    new-array p2, p2, [Z

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mRadioAvailable:[Z

    .line 71
    new-instance p2, Lcom/qti/phone/QtiCiwlanModePreferenceController$1;

    invoke-direct {p2, p0}, Lcom/qti/phone/QtiCiwlanModePreferenceController$1;-><init>(Lcom/qti/phone/QtiCiwlanModePreferenceController;)V

    iput-object p2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 120
    new-instance p2, Lcom/qti/phone/QtiCiwlanModePreferenceController$2;

    invoke-direct {p2, p0}, Lcom/qti/phone/QtiCiwlanModePreferenceController$2;-><init>(Lcom/qti/phone/QtiCiwlanModePreferenceController;)V

    iput-object p2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    iput-object p1, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mContext:Landroid/content/Context;

    .line 102
    iput-object p3, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mPackageName:Ljava/lang/String;

    .line 104
    new-instance p2, Lcom/qti/phone/QtiCiwlanModePreferenceController$QtiCiwlanModePrefCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/qti/phone/QtiCiwlanModePreferenceController$QtiCiwlanModePrefCallback;-><init>(Lcom/qti/phone/QtiCiwlanModePreferenceController;Lcom/qti/phone/QtiCiwlanModePreferenceController$QtiCiwlanModePrefCallback-IA;)V

    iput-object p2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mQtiCiwlanModePrefCallback:Lcom/qti/phone/QtiCiwlanModePreferenceController$QtiCiwlanModePrefCallback;

    .line 105
    invoke-virtual {p3, p2}, Lcom/qti/phone/QtiRadioProxy;->registerInternalCallback(Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;)V

    .line 106
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p2

    iput p2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mActiveModemCount:I

    .line 110
    :cond_0
    invoke-static {p1}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 111
    iget-object p0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

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

    .line 257
    iget v0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mNumProcessedSlots:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mNumProcessedSlots:I

    .line 258
    iget v2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mActiveModemCount:I

    if-ne v0, v2, :cond_1

    if-eq p2, v1, :cond_0

    iget-object p2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mRetryCount:[I

    aget p1, p2, p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_1

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    iget-object p0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mQtiCiwlanModePrefCallback:Lcom/qti/phone/QtiCiwlanModePreferenceController$QtiCiwlanModePrefCallback;

    invoke-virtual {p1, p0}, Lcom/qti/phone/QtiRadioProxy;->unRegisterInternalCallback(Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;)V

    :cond_1
    return-void
.end method

.method private comparePreferences(I)V
    .locals 5

    .line 202
    iget-object v0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mRadioAvailable:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 203
    const-string p0, "comparePreferences: radio unavailable. bail out!"

    invoke-static {p0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->logd(Ljava/lang/String;)V

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mModemCiwlanModePref:Lcom/qti/extphone/CiwlanConfig;

    const-string v1, ","

    if-eqz v0, :cond_1

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mModemCiwlanModePref:Lcom/qti/extphone/CiwlanConfig;

    invoke-virtual {v2}, Lcom/qti/extphone/CiwlanConfig;->getCiwlanHomeMode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mModemCiwlanModePref:Lcom/qti/extphone/CiwlanConfig;

    .line 208
    invoke-virtual {v2}, Lcom/qti/extphone/CiwlanConfig;->getCiwlanRoamMode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "-1,-1"

    .line 209
    :goto_0
    const-string v2, "CELLULAR_I_WLAN_PREFERENCE_STATE_KEY"

    invoke-direct {p0, v2, p1}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->readFromCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - cached prefs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", modem prefs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->logd(Ljava/lang/String;)V

    const/4 v3, -0x1

    .line 211
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    const-string p0, "comparePreferences: invalid modem pref"

    invoke-static {p0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->logd(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v3, 0x1

    if-eq v2, v0, :cond_3

    .line 217
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 218
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 219
    new-instance v2, Lcom/qti/extphone/CiwlanConfig;

    invoke-direct {v2, v0, v1}, Lcom/qti/extphone/CiwlanConfig;-><init>(II)V

    .line 220
    iget-object v0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object p0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v0, p1, p0, v2}, Lcom/qti/extphone/ExtTelephonyManager;->setCiwlanModeUserPreference(ILcom/qti/extphone/Client;Lcom/qti/extphone/CiwlanConfig;)Lcom/qti/extphone/Token;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "comparePreferences: exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CELLULAR_I_WLAN_SYNC_KEY"

    invoke-direct {p0, v1, p1, v0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->writeToCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 226
    invoke-direct {p0, p1, v3}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->cleanUp(II)V

    :goto_1
    return-void
.end method

.method private varargs getModemPreference([I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 182
    :goto_0
    iget v2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mActiveModemCount:I

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    .line 183
    iput-object v2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mModemCiwlanModePref:Lcom/qti/extphone/CiwlanConfig;

    .line 184
    array-length v2, p1

    if-eqz v2, :cond_0

    aget v2, p1, v0

    if-eq v2, v1, :cond_0

    goto :goto_2

    .line 188
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v2, v1}, Lcom/qti/extphone/ExtTelephonyManager;->getCiwlanModeUserPreference(I)Lcom/qti/extphone/CiwlanConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mModemCiwlanModePref:Lcom/qti/extphone/CiwlanConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getModemPreference: exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->loge(Ljava/lang/String;)V

    .line 192
    :goto_1
    iget-object v2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mModemCiwlanModePref:Lcom/qti/extphone/CiwlanConfig;

    if-eqz v2, :cond_1

    .line 193
    invoke-direct {p0, v1}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->comparePreferences(I)V

    goto :goto_2

    .line 195
    :cond_1
    const-string v2, "getModemPreference: pref null"

    invoke-static {v2}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->logd(Ljava/lang/String;)V

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

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Radio is available for slot "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->logd(Ljava/lang/String;)V

    .line 174
    iget-object p2, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mRadioAvailable:[Z

    aput-boolean v0, p2, p1

    .line 175
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->getModemPreference([I)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mRadioAvailable:[Z

    const/4 p2, 0x0

    aput-boolean p2, p0, p1

    :goto_0
    return-void
.end method

.method private handleSetModePreferenceResponse(II)V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mRetryCount:[I

    aget v1, v0, p1

    const/4 v2, 0x3

    const-string v3, "CELLULAR_I_WLAN_SYNC_KEY"

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 159
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v3, p1, v0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->writeToCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->cleanUp(II)V

    goto :goto_0

    :cond_0
    add-int/2addr v1, v2

    .line 162
    aput v1, v0, p1

    .line 163
    new-instance p2, Lcom/qti/phone/QtiCiwlanModePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/qti/phone/QtiCiwlanModePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/qti/phone/QtiCiwlanModePreferenceController;I)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v3, p1, v0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->writeToCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->cleanUp(II)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$handleSetModePreferenceResponse$0(I)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->comparePreferences(I)V

    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    .line 265
    sget-object v0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    .line 269
    sget-object v0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readFromCache(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x7e3d3c61

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CELLULAR_I_WLAN_PREFERENCE_STATE_KEY"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    iget-object p0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 245
    const-string p0, "1,0"

    :cond_1
    return-object p0

    .line 248
    :cond_2
    :goto_0
    const-string p0, "readFromCache: unsupported id"

    invoke-static {p0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private registerReceivers()V
    .locals 2

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    const-string v1, "org.codeaurora.intent.action.RADIO_POWER_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private writeToCache(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2

    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x4e39ddd3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CELLULAR_I_WLAN_SYNC_KEY"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object p0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 236
    :cond_1
    :goto_0
    const-string p0, "writeToCache: unsupported id"

    invoke-static {p0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->loge(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected event: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    const-string v0, "EVENT_SET_CIWLAN_MODE_USER_PREFERENCE_RESPONSE"

    invoke-static {v0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->logd(Ljava/lang/String;)V

    .line 145
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qti/phone/QtiRadioProxy$Result;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-virtual {v0}, Lcom/qti/extphone/Status;->get()I

    move-result v0

    .line 146
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1, v0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->handleSetModePreferenceResponse(II)V

    goto :goto_0

    .line 149
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->handleRadioPowerStateChanged(II)V

    :goto_0
    return-void
.end method

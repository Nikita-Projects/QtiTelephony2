.class public Lcom/qti/phone/primarycard/PrimaryCardService;
.super Landroid/app/Service;
.source "PrimaryCardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;
    }
.end annotation


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDirectBootContext:Landroid/content/Context;

.field private mNumPhones:I

.field private mSettingsUserDataPrefObserver:Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;


# direct methods
.method public static synthetic $r8$lambda$upkBHqzL7hIcZ6-8b4w6JG7rBwQ(Lcom/qti/phone/primarycard/PrimaryCardService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/primarycard/PrimaryCardService;->onUserDataPreferenceChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSimApplicationStateChanged(Lcom/qti/phone/primarycard/PrimaryCardService;III)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/primarycard/PrimaryCardService;->handleSimApplicationStateChanged(III)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Lcom/qti/phone/primarycard/PrimaryCardService$1;

    invoke-direct {v0, p0}, Lcom/qti/phone/primarycard/PrimaryCardService$1;-><init>(Lcom/qti/phone/primarycard/PrimaryCardService;)V

    iput-object v0, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private determinePrimarySlot()I
    .locals 9

    .line 179
    iget v0, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mNumPhones:I

    new-array v1, v0, [Z

    .line 180
    new-array v0, v0, [Z

    .line 183
    sget-object v2, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_UNKNOWN:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    const/4 v3, 0x0

    move v4, v3

    .line 185
    :goto_0
    iget v5, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mNumPhones:I

    if-ge v4, v5, :cond_0

    .line 186
    invoke-static {p0, v4}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->isCmccCardInSlot(Landroid/content/Context;I)Z

    move-result v5

    aput-boolean v5, v1, v4

    .line 187
    iget-object v5, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mDirectBootContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->isNewCardInSlot(Landroid/content/Context;I)Z

    move-result v5

    aput-boolean v5, v0, v4

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isCmccCard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isNewCard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 194
    :cond_0
    aget-boolean v4, v1, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    aget-boolean v6, v1, v5

    if-eqz v6, :cond_4

    .line 196
    aget-boolean v1, v0, v3

    if-eqz v1, :cond_1

    aget-boolean v2, v0, v5

    if-nez v2, :cond_2

    :cond_1
    if-nez v1, :cond_3

    aget-boolean v0, v0, v5

    if-nez v0, :cond_3

    .line 201
    :cond_2
    sget-object v0, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_BOTH_CMCC_AND_BOTH_OLD_OR_NEW:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    goto :goto_4

    .line 207
    :cond_3
    sget-object v0, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_BOTH_CMCC_AND_ONE_NEW:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    move v3, v1

    goto :goto_4

    :cond_4
    const/4 v6, -0x1

    if-nez v4, :cond_6

    .line 211
    aget-boolean v7, v1, v5

    if-eqz v7, :cond_5

    goto :goto_1

    .line 246
    :cond_5
    const-string v0, "No CMCC card inserted. Do nothing."

    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 247
    sget-object v0, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_NO_CMCC:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    move v3, v6

    goto :goto_4

    :cond_6
    :goto_1
    xor-int/2addr v4, v5

    .line 216
    aget-boolean v7, v0, v3

    if-eqz v7, :cond_7

    aget-boolean v8, v0, v5

    if-eqz v8, :cond_7

    .line 220
    sget-object v0, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_ONE_CMCC_AND_BOTH_NEW:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    move v3, v4

    goto :goto_4

    :cond_7
    if-nez v7, :cond_9

    .line 222
    aget-boolean v0, v0, v5

    if-eqz v0, :cond_8

    goto :goto_2

    .line 240
    :cond_8
    sget-object v0, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_ONE_CMCC_AND_BOTH_OLD:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    goto :goto_4

    .line 225
    :cond_9
    :goto_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 224
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 227
    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->isValidSlotIndex(I)Z

    move-result v3

    if-eqz v3, :cond_a

    aget-boolean v0, v1, v0

    if-nez v0, :cond_a

    .line 229
    const-string v0, "old non-CMCC card is the current DDS. Do not change anything"

    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    move v3, v6

    goto :goto_3

    .line 233
    :cond_a
    sget-object v2, Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;->REASON_ONE_CMCC_AND_ONE_NEW:Lcom/qti/phone/primarycard/PrimaryCardService$PrimaryCardSelectionReason;

    move v3, v4

    :goto_3
    move-object v0, v2

    .line 250
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "primarySlot chosen as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    return v3
.end method

.method private handleAllSubscriptionsLoaded()V
    .locals 1

    .line 157
    invoke-static {}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->haveSimCardsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "SIM cards changed. Starting primary card selection."

    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mDirectBootContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->updateLastKnownSubIds(Landroid/content/Context;)V

    .line 162
    invoke-direct {p0}, Lcom/qti/phone/primarycard/PrimaryCardService;->startPrimaryCardSelection()V

    goto :goto_0

    .line 164
    :cond_0
    const-string v0, "No change in SIM cards since last boot"

    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleSimApplicationStateChanged(III)V
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM state changed for slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Previous SIMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->getCurrentSlotIdToSubIdMapAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p2}, Lcom/qti/phone/primarycard/PrimaryCardService;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 131
    invoke-static {p2, p3}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->addEntryInCurrentSlotToSubMap(II)V

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sub loaded: slotId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", subId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 134
    invoke-static {p0}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->haveAllSubscriptionsLoaded(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    const-string p1, "all subscriptions loaded."

    invoke-direct {p0, p1}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/qti/phone/primarycard/PrimaryCardService;->handleAllSubscriptionsLoaded()V

    goto :goto_0

    .line 140
    :cond_0
    const-string p1, "only one subscription loaded."

    invoke-direct {p0, p1}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    if-nez p1, :cond_4

    .line 145
    :cond_2
    invoke-static {p2}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->removeEntryFromCurrentSlotToSubMap(I)V

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onReceive: SIM state is absent for slot: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onReceive: invalid slot index received: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrimaryCardService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Current SIMs: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->getCurrentSlotIdToSubIdMapAsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private isValidSlotIndex(I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 280
    iget p0, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mNumPhones:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    .line 289
    const-string p0, "PrimaryCardService"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onUserDataPreferenceChanged()V
    .locals 3

    .line 274
    invoke-static {p0}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->getUserPreferredDataSubIdFromSettingsDb(Landroid/content/Context;)I

    move-result v0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings user data preference changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 276
    iget-object p0, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mDirectBootContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->addSubIdToOldSubIdDatabase(Landroid/content/Context;I)V

    return-void
.end method

.method private showPrimaryCardSelectionPopup(I)V
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showing primary card selection popup, primarySlotFromAlgo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 262
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qti/phone/primarycard/PrimaryCardSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30800000

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 268
    const-string v1, "primary_slot_from_algorithm"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startPrimaryCardSelection()V
    .locals 2

    .line 169
    invoke-direct {p0}, Lcom/qti/phone/primarycard/PrimaryCardService;->determinePrimarySlot()I

    move-result v0

    .line 171
    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->showPrimaryCardSelectionPopup(I)V

    goto :goto_0

    .line 174
    :cond_0
    const-string p0, "PrimaryCardService"

    const-string v0, "no usable primary slot could be determined."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 6

    .line 58
    const-string v0, "PrimaryCardService"

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 59
    const-string v1, "PrimaryCardService onCreate +"

    invoke-direct {p0, v1}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 60
    iput-object p0, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mDirectBootContext:Landroid/content/Context;

    .line 63
    const-string v1, "telephony_subscription_service"

    .line 64
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    .line 68
    :cond_0
    const-string v1, "phone"

    .line 69
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 70
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    iput v2, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mNumPhones:I

    .line 72
    invoke-static {p0}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->loadCmccIccIdPrefixList(Landroid/content/Context;)V

    .line 73
    iget-object v2, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mDirectBootContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->loadLastKnowsSubIdsFromDatabase(Landroid/content/Context;)V

    .line 74
    iget-object v2, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mDirectBootContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->loadOldSubIdsFromDatabase(Landroid/content/Context;)V

    .line 77
    new-instance v2, Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mSettingsUserDataPrefObserver:Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;

    .line 78
    new-instance v3, Lcom/qti/phone/primarycard/PrimaryCardService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/qti/phone/primarycard/PrimaryCardService$$ExternalSyntheticLambda0;-><init>(Lcom/qti/phone/primarycard/PrimaryCardService;)V

    .line 79
    invoke-virtual {v2, v3}, Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;->setOnDataPreferenceChangedListener(Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver$OnUserDataPreferenceChangedListener;)V

    .line 80
    iget-object v2, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mSettingsUserDataPrefObserver:Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;

    invoke-virtual {v2, p0}, Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;->register(Landroid/content/Context;)V

    .line 82
    iget-object v2, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 90
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mNumPhones:I

    if-ge v2, v3, :cond_2

    .line 91
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimApplicationState(I)I

    move-result v3

    .line 92
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 94
    invoke-direct {p0, v3, v2, v4}, Lcom/qti/phone/primarycard/PrimaryCardService;->handleSimApplicationStateChanged(III)V

    goto :goto_1

    .line 96
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received invalid subId for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :catch_0
    const-string v1, "Error reading SIM application states"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    const-string v0, "PrimaryCardService onCreate -"

    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 113
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/qti/phone/primarycard/PrimaryCardService;->log(Ljava/lang/String;)V

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    iget-object v0, p0, Lcom/qti/phone/primarycard/PrimaryCardService;->mSettingsUserDataPrefObserver:Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;

    invoke-virtual {v0, p0}, Lcom/qti/phone/primarycard/SettingsUserDataPreferenceContentObserver;->unregister(Landroid/content/Context;)V

    .line 117
    invoke-static {}, Lcom/qti/phone/primarycard/PrimaryCardUtils;->removeAllEntriesFromCurrentSlotToSubMap()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    const-string v1, "PrimaryCardService"

    const-string v2, "Unable to unregister receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

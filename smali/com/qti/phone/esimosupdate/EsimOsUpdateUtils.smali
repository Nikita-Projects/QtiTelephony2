.class public Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;
.super Ljava/lang/Object;
.source "EsimOsUpdateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;


# instance fields
.field private final MAX_RETRY_VALUE:I

.field private mEuiccOSInfo:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;

.field private mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

.field private mRetryCount:I

.field mSharedPref:Landroid/content/SharedPreferences;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/qti/phone/QtiRadioProxy;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mEuiccOSInfo:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;

    .line 42
    iput-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mSharedPref:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mRetryCount:I

    const/4 v1, 0x3

    .line 102
    iput v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->MAX_RETRY_VALUE:I

    .line 105
    iput-object p2, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    .line 106
    const-string p2, "EsimOsUpdateUtils"

    const-string v1, "EsimOsUpdateUtils initialized ..."

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mTelMgr:Landroid/telephony/TelephonyManager;

    const p2, 0x7f0d002d

    .line 109
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 108
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mSharedPref:Landroid/content/SharedPreferences;

    .line 111
    const-string p1, "OS_UPDATE_MANIFEST_WRITTEN"

    invoke-virtual {p0, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getBooleanFromSharedPrefs(Ljava/lang/String;)Z

    move-result p1

    .line 113
    const-string p2, "OS_UPDATE_OS_FILE_WRITTEN"

    invoke-virtual {p0, p2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getBooleanFromSharedPrefs(Ljava/lang/String;)Z

    move-result p2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isManifestWritten = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isOsFileWritten = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private fillEuiccOsInfo(IIILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mEuiccOSInfo:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;

    .line 165
    new-instance v0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;

    invoke-direct {v0, p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;-><init>(Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;)V

    iput-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mEuiccOSInfo:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;

    .line 166
    invoke-virtual {v0, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->setCurrentTransactionId(I)V

    .line 167
    iget-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mEuiccOSInfo:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;

    invoke-virtual {p1, p2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->setOngoingTransactionId(I)V

    .line 168
    iget-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mEuiccOSInfo:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;

    invoke-virtual {p1, p3}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->setItlState(I)V

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "readITL itlOSVersion = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", length = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->logd(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x2f

    if-le p1, p2, :cond_0

    const/16 p1, 0xe

    const/16 p2, 0x10

    .line 171
    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1e

    const/16 p3, 0x20

    .line 172
    invoke-virtual {p4, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x2c

    .line 173
    invoke-virtual {p4, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 174
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "osVersion = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", binaryVersion = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", itlVersion = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->logd(Ljava/lang/String;)V

    .line 176
    iget-object p4, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mEuiccOSInfo:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->setOsVersion(I)V

    .line 177
    iget-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mEuiccOSInfo:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->setBinaryVersion(I)V

    .line 178
    iget-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mEuiccOSInfo:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;

    invoke-virtual {p1, p3}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->setItlVersion(Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mEuiccOSInfo:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;

    invoke-virtual {p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->getBinaryVersion()I

    move-result p1

    const-string p2, "EUICC_OS_BINARY_VERSION"

    invoke-virtual {p0, p2, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->saveIntInSharedPrefs(Ljava/lang/String;I)V

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "EuiccOsInfo initiated : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mEuiccOSInfo:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static getInstance(Landroid/content/Context;Lcom/qti/phone/QtiRadioProxy;)Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;
    .locals 1

    .line 119
    sget-object v0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->sInstance:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    invoke-direct {v0, p0, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;-><init>(Landroid/content/Context;Lcom/qti/phone/QtiRadioProxy;)V

    sput-object v0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->sInstance:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    .line 122
    :cond_0
    sget-object p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->sInstance:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    return-object p0
.end method

.method private getItlAndOsVersion(III)Ljava/lang/String;
    .locals 11

    .line 317
    const-string v9, "DF31"

    const-string v10, "NULL"

    const/16 v4, 0x80

    const/16 v5, 0xca

    const/4 v6, 0x0

    const/16 v7, 0xfe

    const/4 v8, 0x2

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p1

    invoke-virtual/range {v0 .. v10}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->transmitApdu(IIIIIIIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isITLAndOSDetailsProper(IIILjava/lang/String;)Z
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_1

    if-eq p2, p0, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 155
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x30

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 158
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isITLAndOSDetailsProper = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EsimOsUpdateUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0

    .line 393
    const-string p0, "EsimOsUpdateUtils"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0

    .line 397
    const-string p0, "EsimOsUpdateUtils"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readItlCurrentTxId(III)I
    .locals 11

    .line 277
    const-string v9, "DF32"

    const-string v10, "CURRENT_TRANSACTION_ID"

    const/16 v4, 0x80

    const/16 v5, 0xca

    const/4 v6, 0x0

    const/16 v7, 0xfe

    const/4 v8, 0x2

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p1

    invoke-virtual/range {v0 .. v10}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->transmitApdu(IIIIIIIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x20

    if-le p2, p3, :cond_0

    const/4 p2, 0x0

    .line 280
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 282
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "currentTxId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->logd(Ljava/lang/String;)V

    return p1
.end method

.method private readItlOngoingTxId(III)I
    .locals 11

    .line 306
    const-string v9, "DF33"

    const-string v10, "ONGOING_TRANSACTION_ID"

    const/16 v4, 0x80

    const/16 v5, 0xca

    const/4 v6, 0x0

    const/16 v7, 0xfe

    const/4 v8, 0x2

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p1

    invoke-virtual/range {v0 .. v10}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->transmitApdu(IIIIIIIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x20

    if-le p2, p3, :cond_0

    const/4 p2, 0x0

    .line 309
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 311
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onGoingTxId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->logd(Ljava/lang/String;)V

    return p1
.end method

.method private readItlState(III)I
    .locals 11

    .line 247
    const-string v9, "DF30"

    const-string v10, "GET_INITIAL_ITL_STATE"

    const/16 v4, 0x80

    const/16 v5, 0xca

    const/4 v6, 0x0

    const/16 v7, 0xfe

    const/4 v8, 0x2

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p1

    invoke-virtual/range {v0 .. v10}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->transmitApdu(IIIIIIIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    .line 255
    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 257
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "itlState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->logd(Ljava/lang/String;)V

    return p3
.end method


# virtual methods
.method closeChannel(III)V
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close channel : channelId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slotIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", portIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EsimOsUpdateUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 216
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->iccCloseLogicalChannelByPort(III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 218
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method getBooleanFromSharedPrefs(Ljava/lang/String;)Z
    .locals 1

    .line 417
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mSharedPref:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method getCurrentEuiccOsInfo()Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mEuiccOSInfo:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;

    return-object p0
.end method

.method getFileName()Ljava/lang/String;
    .locals 4

    .line 346
    const-string v0, ""

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mQtiRadioProxy:Lcom/qti/phone/QtiRadioProxy;

    const-string v2, "persist.vendor.esim_os_update_name"

    invoke-virtual {v1, v2, v0}, Lcom/qti/phone/QtiRadioProxy;->getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->loge(Ljava/lang/String;)V

    .line 352
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OS Image filename = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "EsimOsUpdateUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method getIntFromSharedPrefs(Ljava/lang/String;)I
    .locals 1

    .line 407
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mSharedPref:Landroid/content/SharedPreferences;

    const/4 v0, -0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method getOsImageFile()Ljava/io/File;
    .locals 3

    .line 357
    invoke-virtual {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getFileName()Ljava/lang/String;

    move-result-object p0

    .line 358
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/user_de/0/com.qti.phone/cache/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 362
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method getStringFromSharedPrefs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 427
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method isOsUpdateSupported(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x6

    .line 325
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "890490"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method isValidLogicalChannel(I)Z
    .locals 0

    .line 0
    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method openITLChannel(II)I
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mTelMgr:Landroid/telephony/TelephonyManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 195
    :cond_0
    :goto_0
    iget v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mRetryCount:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    .line 197
    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mTelMgr:Landroid/telephony/TelephonyManager;

    const-string v2, "D2760001180002FF34100089C0026E01"

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/telephony/TelephonyManager;->iccOpenLogicalChannelByPort(IILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v0

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open Channel response = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " count = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mRetryCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "EsimOsUpdateUtils"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v0}, Landroid/telephony/IccOpenLogicalChannelResponse;->getStatus()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 200
    iput v3, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mRetryCount:I

    .line 201
    invoke-virtual {v0}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I

    move-result p0

    return p0

    .line 203
    :cond_1
    iget v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mRetryCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mRetryCount:I

    goto :goto_0

    .line 206
    :cond_2
    const-string p1, "ITL OPEN_CHANNEL failed"

    invoke-direct {p0, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->logd(Ljava/lang/String;)V

    .line 207
    iput v3, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mRetryCount:I

    return v1
.end method

.method readITLAndOSProperties(II)V
    .locals 5

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->openITLChannel(II)I

    move-result v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itlChannelId received = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->logd(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->readItlState(III)I

    move-result v1

    .line 140
    invoke-direct {p0, v0, p1, p2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->readItlCurrentTxId(III)I

    move-result v2

    .line 141
    invoke-direct {p0, v0, p1, p2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->readItlOngoingTxId(III)I

    move-result v3

    .line 142
    invoke-direct {p0, v0, p1, p2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->getItlAndOsVersion(III)Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-virtual {p0, p1, p2, v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->closeChannel(III)V

    .line 144
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->isITLAndOSDetailsProper(IIILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->fillEuiccOsInfo(IIILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method saveBooleanInSharedPrefs(Ljava/lang/String;Z)V
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 412
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 413
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method saveIntInSharedPrefs(Ljava/lang/String;I)V
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 402
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 403
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method saveStringInSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 422
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 423
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method setManifestWrittenStatus(Z)V
    .locals 1

    .line 431
    const-string v0, "OS_UPDATE_MANIFEST_WRITTEN"

    invoke-virtual {p0, v0, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->saveBooleanInSharedPrefs(Ljava/lang/String;Z)V

    return-void
.end method

.method transmitApdu(IIIIIIIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    move-object v0, p0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cla = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " instruction = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p5

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " p1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p6

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " p2 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " p3 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p8

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " TAG = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p10

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->logd(Ljava/lang/String;)V

    .line 228
    iget-object v3, v0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->mTelMgr:Landroid/telephony/TelephonyManager;

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Landroid/telephony/TelephonyManager;->iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transmit apdu "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->logd(Ljava/lang/String;)V

    return-object v1
.end method

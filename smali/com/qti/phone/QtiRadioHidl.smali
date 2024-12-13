.class public Lcom/qti/phone/QtiRadioHidl;
.super Ljava/lang/Object;
.source "QtiRadioHidl.java"

# interfaces
.implements Lcom/qti/phone/IQtiRadioConnectionInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/QtiRadioHidl$QtiRadioProxyDeathRecipient;,
        Lcom/qti/phone/QtiRadioHidl$QtiRILHandler;,
        Lcom/qti/phone/QtiRadioHidl$QtiRadioResponse;,
        Lcom/qti/phone/QtiRadioHidl$QtiRadioIndication;
    }
.end annotation


# static fields
.field static final QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;


# instance fields
.field private final MAX_SLOTS:I

.field private final UNSOL:Lcom/qti/extphone/Token;

.field private mCallback:Lcom/qti/phone/IQtiRadioConnectionCallback;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Lcom/qti/phone/QtiRadioHidl$QtiRadioProxyDeathRecipient;

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

.field private mQtiPhoneId:I

.field private mQtiRILHandler:Lcom/qti/phone/QtiRadioHidl$QtiRILHandler;

.field private mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

.field mQtiRadioIndication:Lcom/qti/phone/QtiRadioHidl$QtiRadioIndication;

.field private mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field mQtiRadioResponse:Lcom/qti/phone/QtiRadioHidl$QtiRadioResponse;


# direct methods
.method static bridge synthetic -$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioHidl;)Lcom/qti/extphone/Token;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->UNSOL:Lcom/qti/extphone/Token;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioHidl;)Lcom/qti/phone/IQtiRadioConnectionCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mCallback:Lcom/qti/phone/IQtiRadioConnectionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioHidl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQtiPhoneId(Lcom/qti/phone/QtiRadioHidl;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQtiRILHandler(Lcom/qti/phone/QtiRadioHidl;)Lcom/qti/phone/QtiRadioHidl$QtiRILHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRILHandler:Lcom/qti/phone/QtiRadioHidl$QtiRILHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertHidl2Aidl(Lcom/qti/phone/QtiRadioHidl;Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)Lcom/qti/extphone/DcParam;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioHidl;->convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)Lcom/qti/extphone/DcParam;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertHidl2Aidl(Lcom/qti/phone/QtiRadioHidl;Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)Lcom/qti/extphone/SignalStrength;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioHidl;->convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)Lcom/qti/extphone/SignalStrength;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertHidl2Aidl(Lcom/qti/phone/QtiRadioHidl;I)Lcom/qti/extphone/Status;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioHidl;->convertHidl2Aidl(I)Lcom/qti/extphone/Status;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertHidl2Aidl(Lcom/qti/phone/QtiRadioHidl;Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)Lcom/qti/extphone/UpperLayerIndInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioHidl;->convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)Lcom/qti/extphone/UpperLayerIndInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertHidlBearerStatus2Aidl(Lcom/qti/phone/QtiRadioHidl;I)Lcom/qti/extphone/BearerAllocationStatus;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioHidl;->convertHidlBearerStatus2Aidl(I)Lcom/qti/extphone/BearerAllocationStatus;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertHidlCdmaSmsResult2Aidl(Lcom/qti/phone/QtiRadioHidl;ILjava/lang/String;I)Lcom/qti/extphone/SmsResult;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioHidl;->convertHidlCdmaSmsResult2Aidl(ILjava/lang/String;I)Lcom/qti/extphone/SmsResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertHidlConfigType2Aidl(Lcom/qti/phone/QtiRadioHidl;I)Lcom/qti/extphone/NrConfigType;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioHidl;->convertHidlConfigType2Aidl(I)Lcom/qti/extphone/NrConfigType;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertHidlNrConfig2Aidl(Lcom/qti/phone/QtiRadioHidl;I)Lcom/qti/extphone/NrConfig;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioHidl;->convertHidlNrConfig2Aidl(I)Lcom/qti/extphone/NrConfig;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertHidlNrIconType2Aidl(Lcom/qti/phone/QtiRadioHidl;I)Lcom/qti/extphone/NrIconType;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioHidl;->convertHidlNrIconType2Aidl(I)Lcom/qti/extphone/NrIconType;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertHidlRadioResponseInfo2Aidl(Lcom/qti/phone/QtiRadioHidl;Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;)Lcom/qti/extphone/QRadioResponseInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioHidl;->convertHidlRadioResponseInfo2Aidl(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;)Lcom/qti/extphone/QRadioResponseInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitQtiRadioHidl(Lcom/qti/phone/QtiRadioHidl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioHidl;->initQtiRadioHidl()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misEnableOrDisableSucess(Lcom/qti/phone/QtiRadioHidl;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioHidl;->isEnableOrDisableSucess(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetServiceAndRequestList(Lcom/qti/phone/QtiRadioHidl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioHidl;->resetServiceAndRequestList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 83
    const-string v0, "slot2"

    const-string v1, "slot3"

    const-string v2, "slot1"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qti/phone/QtiRadioHidl;->QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 3

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiPhoneId:I

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x2

    .line 97
    iput v0, p0, Lcom/qti/phone/QtiRadioHidl;->MAX_SLOTS:I

    .line 99
    new-instance v0, Lcom/qti/extphone/Token;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/qti/extphone/Token;-><init>(I)V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->UNSOL:Lcom/qti/extphone/Token;

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 610
    iput p1, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiPhoneId:I

    .line 611
    iput-object p2, p0, Lcom/qti/phone/QtiRadioHidl;->mContext:Landroid/content/Context;

    .line 612
    new-instance p1, Lcom/qti/phone/QtiRadioHidl$QtiRadioProxyDeathRecipient;

    invoke-direct {p1, p0}, Lcom/qti/phone/QtiRadioHidl$QtiRadioProxyDeathRecipient;-><init>(Lcom/qti/phone/QtiRadioHidl;)V

    iput-object p1, p0, Lcom/qti/phone/QtiRadioHidl;->mDeathRecipient:Lcom/qti/phone/QtiRadioHidl$QtiRadioProxyDeathRecipient;

    .line 613
    new-instance p1, Lcom/qti/phone/QtiRadioHidl$QtiRILHandler;

    invoke-direct {p1, p0}, Lcom/qti/phone/QtiRadioHidl$QtiRILHandler;-><init>(Lcom/qti/phone/QtiRadioHidl;)V

    iput-object p1, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRILHandler:Lcom/qti/phone/QtiRadioHidl$QtiRILHandler;

    .line 614
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioHidl;->initQtiRadioHidl()V

    return-void
.end method

.method private constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V
    .locals 5

    .line 852
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 853
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 856
    :try_start_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    iput p0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    .line 857
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    int-to-byte p0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    iput-boolean p0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    .line 858
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    iput p0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    .line 859
    iget-object p0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digitMode:I

    .line 860
    iget-object p0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberMode:I

    .line 861
    iget-object p0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberType:I

    .line 862
    iget-object p0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberPlan:I

    .line 863
    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result p0

    int-to-byte p0, p0

    move v2, v0

    :goto_1
    if-ge v2, p0, :cond_1

    .line 865
    iget-object v3, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v3, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_5

    .line 867
    :cond_1
    iget-object p0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->subaddressType:I

    .line 868
    iget-object p0, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    if-ne v2, v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->odd:Z

    .line 869
    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result p0

    int-to-byte p0, p0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_3

    .line 871
    iget-object v2, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v2, v2, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 874
    :cond_3
    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result p0

    :goto_4
    if-ge v0, p0, :cond_4

    .line 876
    iget-object v1, p1, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 879
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendSmsCdma: conversion from input stream to object failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioHidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;)Lcom/qti/extphone/DcParam;
    .locals 1

    .line 125
    new-instance p0, Lcom/qti/extphone/DcParam;

    iget v0, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->endc:I

    iget p1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/DcParam;->dcnr:I

    invoke-direct {p0, v0, p1}, Lcom/qti/extphone/DcParam;-><init>(II)V

    return-object p0
.end method

.method private convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;)Lcom/qti/extphone/SignalStrength;
    .locals 1

    .line 135
    new-instance p0, Lcom/qti/extphone/SignalStrength;

    iget v0, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;->rsrp:I

    iget p1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_0/SignalStrength;->snr:I

    invoke-direct {p0, v0, p1}, Lcom/qti/extphone/SignalStrength;-><init>(II)V

    return-object p0
.end method

.method private convertHidl2Aidl(I)Lcom/qti/extphone/Status;
    .locals 0

    .line 113
    new-instance p0, Lcom/qti/extphone/Status;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/qti/extphone/Status;-><init>(I)V

    return-object p0
.end method

.method private convertHidl2Aidl(Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;)Lcom/qti/extphone/UpperLayerIndInfo;
    .locals 1

    .line 130
    new-instance p0, Lcom/qti/extphone/UpperLayerIndInfo;

    iget v0, p1, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;->plmnInfoList:I

    iget p1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_1/UpperLayerIndInfo;->upplerLayerInd:I

    invoke-direct {p0, v0, p1}, Lcom/qti/extphone/UpperLayerIndInfo;-><init>(II)V

    return-object p0
.end method

.method private convertHidlBearerStatus2Aidl(I)Lcom/qti/extphone/BearerAllocationStatus;
    .locals 0

    .line 121
    new-instance p0, Lcom/qti/extphone/BearerAllocationStatus;

    invoke-direct {p0, p1}, Lcom/qti/extphone/BearerAllocationStatus;-><init>(I)V

    return-object p0
.end method

.method private convertHidlCdmaSmsResult2Aidl(ILjava/lang/String;I)Lcom/qti/extphone/SmsResult;
    .locals 0

    .line 143
    new-instance p0, Lcom/qti/extphone/SmsResult;

    invoke-direct {p0, p1, p2, p3}, Lcom/qti/extphone/SmsResult;-><init>(ILjava/lang/String;I)V

    return-object p0
.end method

.method private convertHidlConfigType2Aidl(I)Lcom/qti/extphone/NrConfigType;
    .locals 0

    .line 139
    new-instance p0, Lcom/qti/extphone/NrConfigType;

    invoke-direct {p0, p1}, Lcom/qti/extphone/NrConfigType;-><init>(I)V

    return-object p0
.end method

.method private convertHidlNrConfig2Aidl(I)Lcom/qti/extphone/NrConfig;
    .locals 0

    .line 109
    new-instance p0, Lcom/qti/extphone/NrConfig;

    invoke-direct {p0, p1}, Lcom/qti/extphone/NrConfig;-><init>(I)V

    return-object p0
.end method

.method private convertHidlNrIconType2Aidl(I)Lcom/qti/extphone/NrIconType;
    .locals 0

    .line 105
    new-instance p0, Lcom/qti/extphone/NrIconType;

    invoke-direct {p0, p1}, Lcom/qti/extphone/NrIconType;-><init>(I)V

    return-object p0
.end method

.method private convertHidlRadioResponseInfo2Aidl(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;)Lcom/qti/extphone/QRadioResponseInfo;
    .locals 2

    .line 148
    new-instance p0, Lcom/qti/extphone/QRadioResponseInfo;

    iget v0, p1, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->type:I

    iget v1, p1, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->serial:I

    iget p1, p1, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->error:I

    invoke-direct {p0, v0, v1, p1}, Lcom/qti/extphone/QRadioResponseInfo;-><init>(III)V

    return-object p0
.end method

.method private declared-synchronized initQtiRadioHidl()V
    .locals 4

    monitor-enter p0

    .line 628
    :try_start_0
    iget v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 629
    monitor-exit p0

    return-void

    .line 632
    :cond_0
    :try_start_1
    sget-object v0, Lcom/qti/phone/QtiRadioHidl;->QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget v1, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiPhoneId:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;->getService(Ljava/lang/String;)Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    if-nez v0, :cond_1

    .line 634
    const-string v0, "QtiRadioHidl"

    const-string v1, "initQtiRadioHidl: mQtiRadio is null. Return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    .line 637
    :cond_1
    :try_start_2
    const-string v0, "QtiRadioHidl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initQtiRadioHidl: mQtiRadio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mQtiPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    iget-object v1, p0, Lcom/qti/phone/QtiRadioHidl;->mDeathRecipient:Lcom/qti/phone/QtiRadioHidl$QtiRadioProxyDeathRecipient;

    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 640
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 639
    invoke-interface {v0, v1, v2, v3}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 641
    new-instance v0, Lcom/qti/phone/QtiRadioHidl$QtiRadioResponse;

    iget v1, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiPhoneId:I

    invoke-direct {v0, p0, v1}, Lcom/qti/phone/QtiRadioHidl$QtiRadioResponse;-><init>(Lcom/qti/phone/QtiRadioHidl;I)V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadioResponse:Lcom/qti/phone/QtiRadioHidl$QtiRadioResponse;

    .line 642
    new-instance v0, Lcom/qti/phone/QtiRadioHidl$QtiRadioIndication;

    iget v1, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiPhoneId:I

    invoke-direct {v0, p0, v1}, Lcom/qti/phone/QtiRadioHidl$QtiRadioIndication;-><init>(Lcom/qti/phone/QtiRadioHidl;I)V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadioIndication:Lcom/qti/phone/QtiRadioHidl$QtiRadioIndication;

    .line 643
    iget-object v1, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadioResponse:Lcom/qti/phone/QtiRadioHidl$QtiRadioResponse;

    invoke-interface {v1, v2, v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;->setCallback(Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse;Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioIndication;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 645
    :goto_0
    :try_start_3
    const-string v1, "QtiRadioHidl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initQtiRadioHidl: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 647
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method private isEnableOrDisableSucess(I)Z
    .locals 0

    .line 0
    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetServiceAndRequestList()V
    .locals 1

    const/4 v0, 0x0

    .line 666
    iput-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 667
    iput-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadioResponse:Lcom/qti/phone/QtiRadioHidl$QtiRadioResponse;

    .line 668
    iput-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadioIndication:Lcom/qti/phone/QtiRadioHidl$QtiRadioIndication;

    .line 669
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method


# virtual methods
.method public disable5g(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 900
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 901
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 902
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 903
    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 905
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "disable5g: serial = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioHidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->disable5g(I)V

    return-void

    .line 908
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 909
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enable5g(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 886
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 887
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 888
    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 890
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "enable5g: serial = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioHidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->enable5g(I)V

    return-void

    .line 893
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 894
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enable5gOnly(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 930
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 931
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 932
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 933
    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 935
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "enable5gOnly: serial = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioHidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->enable5gOnly(I)V

    return-void

    .line 938
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 939
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableEndc(ZLcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 745
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v0

    .line 746
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 747
    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 749
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enableEndc: serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "enable: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "QtiRadioHidl"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-interface {v0, v1, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->enableEndc(IZ)V

    return-void

    .line 752
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 753
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCellularRoamingPreference()Lcom/qti/extphone/CellularRoamingPreference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1158
    const-string p0, "QtiRadioHidl"

    const-string v0, "getCellularRoamingPreference not supported in HIDL"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCiwlanConfig()Lcom/qti/extphone/CiwlanConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1128
    const-string p0, "QtiRadioHidl"

    const-string v0, "getCiwlanConfig not supported in HIDL"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCiwlanModeUserPreference()Lcom/qti/extphone/CiwlanConfig;
    .locals 1

    .line 1152
    const-string p0, "QtiRadioHidl"

    const-string v0, "getCiwlanModeUserPreference not supported for HIDL"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDdsSwitchCapability(Lcom/qti/extphone/Token;)V
    .locals 0

    .line 1103
    const-string p0, "QtiRadioHidl"

    const-string p1, "getDdsSwitchCapability not supported in HIDL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getFacilityLockForApp(Lcom/qti/extphone/Token;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public getImei(Lcom/qti/extphone/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public getNetworkSelectionMode(Lcom/qti/extphone/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public getPropertyValueBool(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 693
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 694
    invoke-static {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 697
    :try_start_0
    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 699
    :catch_0
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API Error"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 702
    :cond_0
    const-string p0, "QtiRadioHidl"

    const-string v0, "getPropertyValueBool HAL API not available"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public getPropertyValueInt(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 676
    invoke-static {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 679
    :try_start_0
    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 681
    :catch_0
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API Error"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 684
    :cond_0
    const-string p0, "QtiRadioHidl"

    const-string v0, "getPropertyValueInt HAL API not available"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 711
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 712
    invoke-static {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 715
    :try_start_0
    invoke-interface {p0, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 717
    :catch_0
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API Error"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 720
    :cond_0
    const-string p0, "QtiRadioHidl"

    const-string v0, "getPropertyValueString HAL API not available"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getQosParameters(Lcom/qti/extphone/Token;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getQosParameters: cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioHidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 1038
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadio;

    move-result-object v0

    .line 1039
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    .line 1040
    iget-object v3, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1042
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getQosParameters: serial = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-interface {v0, v2, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_7/IQtiRadio;->getQosParameters(II)V

    return-void

    .line 1045
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1046
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getQtiRadioCapability(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 1021
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio;

    move-result-object v0

    .line 1022
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 1023
    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1025
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getQtiRadioCapability: serial = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioHidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_6/IQtiRadio;->getQtiRadioCapability(I)V

    return-void

    .line 1028
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1029
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSimPersoUnlockStatus()Lcom/qti/extphone/QtiPersoUnlockStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1134
    const-string p0, "QtiRadioHidl"

    const-string v0, "getSimPersoUnlockStatus not supported for HIDL"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public isCiwlanAvailable()Z
    .locals 1

    .line 1140
    const-string p0, "QtiRadioHidl"

    const-string v0, "isCiwlanAvailable not supported for HIDL"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isEpdgOverCellularDataSupported()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isFeatureSupported(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyDisableProfileStatus(Lcom/qti/extphone/Token;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1188
    const-string p0, "QtiRadioHidl"

    const-string p1, "notifyDisableProfileStatus not supported in HIDL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyEnableProfileStatus(Lcom/qti/extphone/Token;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1182
    const-string p0, "QtiRadioHidl"

    const-string p1, "notifyEnableProfileStatus not supported in HIDL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public query5gConfigInfo(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 1006
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;

    move-result-object v0

    .line 1007
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 1008
    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1010
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "query5gConfigInfo: serial = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioHidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;->query5gConfigInfo(I)V

    return-void

    .line 1013
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1014
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public query5gStatus(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 946
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 947
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 948
    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 950
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "query5gStatus: serial = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioHidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->query5gStatus(I)V

    return-void

    .line 953
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 954
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public queryCallForwardStatus(Lcom/qti/extphone/Token;IILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public queryEndcStatus(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 760
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v0

    .line 761
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 762
    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 764
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "queryEndcStatus: serial = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioHidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->queryEndcStatus(I)V

    return-void

    .line 767
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 768
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public queryNrBearerAllocation(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 916
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 917
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 918
    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 920
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "queryNrBearerAllocation: serial = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioHidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->queryNrBearerAllocation(I)V

    return-void

    .line 923
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 924
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public queryNrConfig(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 790
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;

    move-result-object v0

    .line 791
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 792
    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 794
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "queryNrConfig: serial = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioHidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;->queryNrConfig(I)V

    return-void

    .line 797
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 798
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public queryNrDcParam(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 960
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 961
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 962
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 963
    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 965
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "queryNrDcParam: serial = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioHidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->queryNrDcParam(I)V

    return-void

    .line 968
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 969
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public queryNrIcon(Lcom/qti/extphone/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1170
    const-string p0, "QtiRadioHidl"

    const-string p1, "queryNrIcon not supported in HIDL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public queryNrIconType(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 730
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadio;

    move-result-object v0

    .line 731
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 732
    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 734
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "queryNrIconType: serial = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioHidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadio;->queryNrIconType(I)V

    return-void

    .line 737
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 738
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public queryNrSignalStrength(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 975
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 976
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 977
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 978
    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 980
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "queryNrSignalStrength: serial = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioHidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->queryNrSignalStrength(I)V

    return-void

    .line 983
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 984
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public queryUpperLayerIndInfo(Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 990
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 991
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;

    move-result-object v0

    .line 992
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 993
    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 995
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "queryUpperLayerIndInfo: serial = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioHidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;->queryUpperLayerIndInfo(I)V

    return-void

    .line 998
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 999
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerCallback(Lcom/qti/phone/IQtiRadioConnectionCallback;)V
    .locals 2

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback: callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioHidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iput-object p1, p0, Lcom/qti/phone/QtiRadioHidl;->mCallback:Lcom/qti/phone/IQtiRadioConnectionCallback;

    return-void
.end method

.method public sendAllEsimProfiles(Lcom/qti/extphone/Token;ZILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qti/extphone/Token;",
            "ZI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1176
    const-string p0, "QtiRadioHidl"

    const-string p1, "sendAllEsimProfiles not supported in HIDL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendCdmaSms([BZLcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 833
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 834
    invoke-virtual {p3}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 835
    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 837
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCdmaSms: serial = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "QtiRadioHidl"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    new-instance p3, Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    invoke-direct {p3}, Landroid/hardware/radio/V1_0/CdmaSmsMessage;-><init>()V

    .line 840
    invoke-direct {p0, p3, p1}, Lcom/qti/phone/QtiRadioHidl;->constructCdmaSendSmsRilRequest(Landroid/hardware/radio/V1_0/CdmaSmsMessage;[B)V

    .line 842
    invoke-interface {v0, v1, p3, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->sendCdmaSms(ILandroid/hardware/radio/V1_0/CdmaSmsMessage;Z)V

    return-void

    .line 844
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendUserPreferenceForDataDuringVoiceCall(Lcom/qti/extphone/Token;Z)V
    .locals 0

    .line 1108
    const-string p0, "QtiRadioHidl"

    const-string p1, "sendUserPreferenceForDataDuringVoiceCall not supported in HIDL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Lcom/qti/extphone/Token;Landroid/telephony/ImsiEncryptionInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 806
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_4/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_4/IQtiRadio;

    move-result-object v0

    .line 807
    new-instance v1, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;-><init>()V

    .line 809
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    .line 810
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 812
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setCarrierInfoForImsiEncryption: serial = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioHidl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object p0, v1, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;->base:Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getMcc()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    .line 814
    iget-object p0, v1, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;->base:Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getMnc()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    .line 815
    iget-object p0, v1, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;->base:Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getKeyIdentifier()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    .line 816
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 817
    iget-object p0, v1, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;->base:Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    .line 818
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->expirationTime:J

    .line 820
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    array-length p1, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    aget-byte v4, p0, v3

    .line 821
    iget-object v5, v1, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;->base:Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;

    iget-object v5, v5, Landroid/hardware/radio/V1_1/ImsiEncryptionInfo;->carrierKey:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/Byte;

    invoke-direct {v6, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 823
    :cond_1
    invoke-virtual {p2}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result p0

    iput p0, v1, Lvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;->keyType:I

    .line 824
    invoke-interface {v0, v2, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_4/IQtiRadio;->setCarrierInfoForImsiEncryption(ILvendor/qti/hardware/radio/qtiradio/V2_4/ImsiEncryptionInfo;)V

    return-void

    .line 826
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCellularRoamingPreference(Lcom/qti/extphone/Token;Lcom/qti/extphone/CellularRoamingPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1165
    const-string p0, "QtiRadioHidl"

    const-string p1, "setCellularRoamingPreference not supported in HIDL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCiwlanModeUserPreference(Lcom/qti/extphone/Token;Lcom/qti/extphone/CiwlanConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1147
    const-string p0, "QtiRadioHidl"

    const-string p1, "setCiwlanModeUserPreference not supported for HIDL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setNetworkSelectionModeAutomatic(ILcom/qti/extphone/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public setNetworkSelectionModeManual(Lcom/qti/extphone/QtiSetNetworkSelectionMode;Lcom/qti/extphone/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public setNrConfig(Lcom/qti/extphone/NrConfig;Lcom/qti/extphone/Token;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 774
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 775
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;

    move-result-object v0

    .line 776
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    .line 777
    iget-object v2, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 779
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setNrConfig: serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " config= "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qti/extphone/NrConfig;->get()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "QtiRadioHidl"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual {p1}, Lcom/qti/extphone/NrConfig;->get()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;->setNrConfig(II)V

    return-void

    .line 782
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioHidl;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 783
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "API not available!"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNrUltraWidebandIconConfig(Lcom/qti/extphone/Token;ILvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;Ljava/util/ArrayList;Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qti/extphone/Token;",
            "I",
            "Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;",
            "Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/qtiradio/NrUwbIconRefreshTime;",
            ">;",
            "Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1122
    const-string p0, "QtiRadioHidl"

    const-string p1, "setNrUltraWidebandIconConfig not supported in HIDL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "not supported by HIDL"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Lcom/qti/extphone/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public stopNetworkScan(Lcom/qti/extphone/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public unRegisterCallback(Lcom/qti/phone/IQtiRadioConnectionCallback;)V
    .locals 2

    .line 1199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterCallback: callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioHidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iget-object v0, p0, Lcom/qti/phone/QtiRadioHidl;->mCallback:Lcom/qti/phone/IQtiRadioConnectionCallback;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1201
    iput-object p1, p0, Lcom/qti/phone/QtiRadioHidl;->mCallback:Lcom/qti/phone/IQtiRadioConnectionCallback;

    :cond_0
    return-void
.end method

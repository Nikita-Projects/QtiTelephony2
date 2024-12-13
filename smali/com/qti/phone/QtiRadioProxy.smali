.class public Lcom/qti/phone/QtiRadioProxy;
.super Lcom/xiaomi/internal/telephony_ext/MiRadioProxy;
.source "QtiRadioProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/phone/QtiRadioProxy$ServiceNotification;,
        Lcom/qti/phone/QtiRadioProxy$WorkerHandler;,
        Lcom/qti/phone/QtiRadioProxy$Transaction;,
        Lcom/qti/phone/QtiRadioProxy$Result;,
        Lcom/qti/phone/QtiRadioProxy$CbResults;,
        Lcom/qti/phone/QtiRadioProxy$AidlToken;,
        Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context; = null

.field private static volatile mSerial:I = -0x1

.field private static sAidlDynamicSubscriptionManager:Lvendor/qti/hardware/data/dynamicddsaidlservice/ISubscriptionManager;

.field private static sDynamicSubscriptionManager:Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;


# instance fields
.field private final CNE_FACTORY_SERVICE_INSTANCE_NAME:Ljava/lang/String;

.field private final CNE_FACTORY_SERVICE_NAME:Ljava/lang/String;

.field private FAILED:Z

.field private final SMART_DDS_SWITCH_OFF:I

.field private final SMART_DDS_SWITCH_ON:I

.field private SUCCESS:Z

.field private mAidlDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mCneDataFactoryAvailable:Z

.field private final mDeathBinderCookie:J

.field private mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

.field private mFactory:Lvendor/qti/data/factoryservice/IFactory;

.field private mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qti/phone/QtiRadioProxy$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFactoryAidlAvailable:Z

.field private mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

.field mQtiRadioCallback:Lcom/qti/phone/IQtiRadioConnectionCallback;

.field private final mServiceNotification:Lcom/qti/phone/QtiRadioProxy$ServiceNotification;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$DXDgwkSVCvi1z2LO7OIqvGmeRJw(Lcom/qti/phone/QtiRadioProxy$CbResults;ILvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->lambda$getDynamicSubscriptionManager$1(Lcom/qti/phone/QtiRadioProxy$CbResults;ILvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jgucfn079-H1OYChoxHncIVWrd8(Lcom/qti/phone/QtiRadioProxy;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->lambda$init$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDeathRecipient(Lcom/qti/phone/QtiRadioProxy;)Landroid/os/IHwBinder$DeathRecipient;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioProxy;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFactoryAidlAvailable(Lcom/qti/phone/QtiRadioProxy;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/qti/phone/QtiRadioProxy;->mIsFactoryAidlAvailable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioProxy;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mWorkerThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCneDataFactoryAvailable(Lcom/qti/phone/QtiRadioProxy;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/qti/phone/QtiRadioProxy;->mCneDataFactoryAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallDynamicDdsSwitchOnDemand(Lcom/qti/phone/QtiRadioProxy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioProxy;->callDynamicDdsSwitchOnDemand()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetNetworkSelectionModeResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy;->getNetworkSelectionModeResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetQosParametersResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QosParametersResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy;->getQosParametersResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QosParametersResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetQtiRadioCapabilityResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy;->getQtiRadioCapabilityResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnetworkScanResult(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/android/internal/telephony/NetworkScanResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->networkScanResult(ILcom/qti/extphone/Token;Lcom/android/internal/telephony/NetworkScanResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mon5gConfigInfo(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfigType;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy;->on5gConfigInfo(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfigType;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mon5gStatus(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy;->on5gStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCiwlanAvailable(Lcom/qti/phone/QtiRadioProxy;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->onCiwlanAvailable(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCiwlanConfigChange(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/CiwlanConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->onCiwlanConfigChange(ILcom/qti/extphone/CiwlanConfig;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDataDeactivateDelayTime(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy;->onDataDeactivateDelayTime(ILcom/qti/extphone/Token;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDdsSwitchCapabilityChange(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy;->onDdsSwitchCapabilityChange(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDdsSwitchCriteriaChange(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->onDdsSwitchCriteriaChange(ILcom/qti/extphone/Token;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDdsSwitchRecommendation(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->onDdsSwitchRecommendation(ILcom/qti/extphone/Token;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDisableEsimProfile(Lcom/qti/phone/QtiRadioProxy;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->onDisableEsimProfile(IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monEnableEndc(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->onEnableEndc(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monEnableEsimProfile(Lcom/qti/phone/QtiRadioProxy;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->onEnableEsimProfile(IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monEndcStatus(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy;->onEndcStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monEpdgOverCellularDataSupported(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->onEpdgOverCellularDataSupported(ILcom/qti/extphone/Token;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monGetAllEsimProfiles(Lcom/qti/phone/QtiRadioProxy;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->onGetAllEsimProfiles(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNrDcParam(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/DcParam;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy;->onNrDcParam(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/DcParam;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNrIconChange(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/NrIcon;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->onNrIconChange(ILcom/qti/extphone/NrIcon;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNrIconResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIcon;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy;->onNrIconResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIcon;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monQosParametersChanged(Lcom/qti/phone/QtiRadioProxy;IILcom/qti/extphone/QosParametersResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->onQosParametersChanged(IILcom/qti/extphone/QosParametersResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSendUserPreferenceForDataDuringVoiceCall(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->onSendUserPreferenceForDataDuringVoiceCall(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSetNrUltraWidebandIconConfigResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->onSetNrUltraWidebandIconConfigResponse(ILcom/qti/extphone/Token;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSignalStrength(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SignalStrength;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy;->onSignalStrength(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SignalStrength;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUpperLayerIndInfo(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/UpperLayerIndInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy;->onUpperLayerIndInfo(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/UpperLayerIndInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendCdmaSmsResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SmsResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy;->sendCdmaSmsResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SmsResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendImeiInfoIndInternal(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/QtiImeiInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->sendImeiInfoIndInternal(ILcom/qti/extphone/QtiImeiInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendImeiInfoResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QtiImeiInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy;->sendImeiInfoResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QtiImeiInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSimPersoUnlockStatusChange(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/QtiPersoUnlockStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->sendSimPersoUnlockStatusChange(ILcom/qti/extphone/QtiPersoUnlockStatus;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendcallforwardqueryResponse(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[Lcom/qti/extphone/QtiCallForwardInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->sendcallforwardqueryResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[Lcom/qti/extphone/QtiCallForwardInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendfacilityLockResponse(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->sendfacilityLockResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAidlDynamicSubscriptionChange(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->setAidlDynamicSubscriptionChange(Lcom/qti/extphone/Token;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCarrierInfoForImsiEncryptionResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QRadioResponseInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy;->setCarrierInfoForImsiEncryptionResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QRadioResponseInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCellularRoamingPreferenceResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->setCellularRoamingPreferenceResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCiwlanModeUserPreferenceResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->setCiwlanModeUserPreferenceResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDynamicSubscriptionChange(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/qti/phone/QtiRadioProxy;->setDynamicSubscriptionChange(Lcom/qti/extphone/Token;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNetworkSelectionModeAutomaticResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->setNetworkSelectionModeAutomaticResponse(ILcom/qti/extphone/Token;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNetworkSelectionModeManualResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->setNetworkSelectionModeManualResponse(ILcom/qti/extphone/Token;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSmartDdsSwitchToggleResponse(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->setSmartDdsSwitchToggleResponse(Lcom/qti/extphone/Token;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartNetworkScanResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->startNetworkScanResponse(ILcom/qti/extphone/Token;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopNetworkScanResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy;->stopNetworkScanResponse(ILcom/qti/extphone/Token;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsAidlDynamicSubscriptionManager()Lvendor/qti/hardware/data/dynamicddsaidlservice/ISubscriptionManager;
    .locals 1

    .line 0
    sget-object v0, Lcom/qti/phone/QtiRadioProxy;->sAidlDynamicSubscriptionManager:Lvendor/qti/hardware/data/dynamicddsaidlservice/ISubscriptionManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsDynamicSubscriptionManager()Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;
    .locals 1

    .line 0
    sget-object v0, Lcom/qti/phone/QtiRadioProxy;->sDynamicSubscriptionManager:Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsAidlDynamicSubscriptionManager(Lvendor/qti/hardware/data/dynamicddsaidlservice/ISubscriptionManager;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/qti/phone/QtiRadioProxy;->sAidlDynamicSubscriptionManager:Lvendor/qti/hardware/data/dynamicddsaidlservice/ISubscriptionManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputsDynamicSubscriptionManager(Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/qti/phone/QtiRadioProxy;->sDynamicSubscriptionManager:Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1026
    invoke-direct {p0, p1}, Lcom/xiaomi/internal/telephony_ext/MiRadioProxy;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcom/qti/phone/QtiRadioProxy;->SMART_DDS_SWITCH_OFF:I

    const/4 v1, 0x1

    .line 133
    iput v1, p0, Lcom/qti/phone/QtiRadioProxy;->SMART_DDS_SWITCH_ON:I

    .line 135
    iput-boolean v1, p0, Lcom/qti/phone/QtiRadioProxy;->SUCCESS:Z

    .line 136
    iput-boolean v0, p0, Lcom/qti/phone/QtiRadioProxy;->FAILED:Z

    .line 138
    const-string v2, "vendor.qti.data.factory@2.4::IFactory"

    iput-object v2, p0, Lcom/qti/phone/QtiRadioProxy;->CNE_FACTORY_SERVICE_NAME:Ljava/lang/String;

    .line 139
    const-string v2, "default"

    iput-object v2, p0, Lcom/qti/phone/QtiRadioProxy;->CNE_FACTORY_SERVICE_INSTANCE_NAME:Ljava/lang/String;

    .line 144
    iput-boolean v0, p0, Lcom/qti/phone/QtiRadioProxy;->mIsFactoryAidlAvailable:Z

    .line 152
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "QtiRadioProxyBgThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/qti/phone/QtiRadioProxy;->mWorkerThread:Landroid/os/HandlerThread;

    const-wide/32 v2, 0x7fffffff

    .line 154
    iput-wide v2, p0, Lcom/qti/phone/QtiRadioProxy;->mDeathBinderCookie:J

    .line 156
    iput-boolean v0, p0, Lcom/qti/phone/QtiRadioProxy;->mCneDataFactoryAvailable:Z

    .line 157
    new-instance v0, Lcom/qti/phone/QtiRadioProxy$ServiceNotification;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/qti/phone/QtiRadioProxy$ServiceNotification;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/phone/QtiRadioProxy$ServiceNotification-IA;)V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mServiceNotification:Lcom/qti/phone/QtiRadioProxy$ServiceNotification;

    .line 158
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    .line 631
    new-instance v0, Lcom/qti/phone/QtiRadioProxy$1;

    invoke-direct {v0, p0}, Lcom/qti/phone/QtiRadioProxy$1;-><init>(Lcom/qti/phone/QtiRadioProxy;)V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadioCallback:Lcom/qti/phone/IQtiRadioConnectionCallback;

    .line 1620
    new-instance v0, Lcom/qti/phone/QtiRadioProxy$2;

    invoke-direct {v0, p0}, Lcom/qti/phone/QtiRadioProxy$2;-><init>(Lcom/qti/phone/QtiRadioProxy;)V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 1636
    new-instance v0, Lcom/qti/phone/QtiRadioProxy$3;

    invoke-direct {v0, p0}, Lcom/qti/phone/QtiRadioProxy$3;-><init>(Lcom/qti/phone/QtiRadioProxy;)V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mAidlDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1028
    sput-object p1, Lcom/qti/phone/QtiRadioProxy;->mContext:Landroid/content/Context;

    .line 1029
    invoke-static {p1}, Lcom/qti/phone/QtiRadioFactory;->makeQtiRadio(Landroid/content/Context;)[Lcom/qti/phone/IQtiRadioConnectionInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    .line 1030
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Made mQtiRadio - length = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QtiRadioProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object p1, p0, Lcom/qti/phone/QtiRadioProxy;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 1032
    iget-object p1, p0, Lcom/qti/phone/QtiRadioProxy;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->setLooper(Landroid/os/Looper;)V

    .line 1033
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioProxy;->isBoardApiLevelMatched()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->isCneAidlAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1034
    const-string p1, "QtiRadioProxy() isCneAidlAvailable: init AIDL ... "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iput-boolean v1, p0, Lcom/qti/phone/QtiRadioProxy;->mIsFactoryAidlAvailable:Z

    .line 1036
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioProxy;->initIFactoryAidl()V

    goto :goto_0

    .line 1038
    :cond_0
    const-string p1, "QtiRadioProxy() init HIDL ... "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioProxy;->initIFactoryHidl()V

    .line 1042
    :goto_0
    iget-object p1, p0, Lcom/qti/phone/QtiRadioProxy;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/xiaomi/internal/telephony_ext/MiRadioProxy;->initDelayNotifyParams(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 0

    .line 1014
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;-><init>(Landroid/content/Context;)V

    .line 1015
    invoke-virtual {p0, p2}, Lcom/qti/phone/QtiRadioProxy;->init(Lcom/qti/phone/ExtTelephonyServiceImpl;)V

    return-void
.end method

.method static synthetic access$000(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIconType;)Z
    .locals 0

    .line 77
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/internal/telephony_ext/MiRadioProxy;->delayNotifyNrIcon(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIconType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIconType;)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/internal/telephony_ext/MiRadioProxy;->nrIconRemove(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIconType;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/BearerAllocationStatus;)Z
    .locals 0

    .line 77
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/internal/telephony_ext/MiRadioProxy;->delayNotifyBearerAllocation(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/BearerAllocationStatus;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/BearerAllocationStatus;)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/internal/telephony_ext/MiRadioProxy;->bearerAllocRemove(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/BearerAllocationStatus;)V

    return-void
.end method

.method private callDynamicDdsSwitchOnDemand()V
    .locals 4

    .line 1662
    sget-object v0, Lcom/qti/phone/QtiRadioProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_dds_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savedSmartDdsSwitchValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiRadioProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v1

    .line 1666
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mWorkerThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 1667
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/qti/phone/QtiRadioProxy$Result;-><init>(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/16 v0, 0x11

    .line 1666
    invoke-virtual {p0, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private createAidlDynamicSubscriptionManager()Lvendor/qti/hardware/data/dynamicddsaidlservice/ISubscriptionManager;
    .locals 5

    .line 1747
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mFactory:Lvendor/qti/data/factoryservice/IFactory;

    const/4 v1, 0x0

    const-string v2, "QtiRadioProxy"

    if-nez v0, :cond_0

    .line 1748
    const-string p0, "IFactory getService returned null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1752
    :cond_0
    :try_start_0
    const-string v0, "Call createAidlDynamicSubscriptionManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    new-instance v0, Lvendor/qti/data/factoryservice/Result;

    invoke-direct {v0}, Lvendor/qti/data/factoryservice/Result;-><init>()V

    .line 1756
    new-instance v3, Lcom/qti/phone/QtiRadioProxy$AidlToken;

    invoke-direct {v3, p0}, Lcom/qti/phone/QtiRadioProxy$AidlToken;-><init>(Lcom/qti/phone/QtiRadioProxy;)V

    .line 1757
    iget-object v4, p0, Lcom/qti/phone/QtiRadioProxy;->mFactory:Lvendor/qti/data/factoryservice/IFactory;

    invoke-interface {v4, v3, v0}, Lvendor/qti/data/factoryservice/IFactory;->createDynamicddsISubscriptionManager(Lvendor/qti/hardware/data/dynamicddsaidlservice/IToken;Lvendor/qti/data/factoryservice/Result;)Lvendor/qti/hardware/data/dynamicddsaidlservice/ISubscriptionManager;

    move-result-object v3

    .line 1758
    iget v4, v0, Lvendor/qti/data/factoryservice/Result;->status:I

    if-nez v4, :cond_1

    .line 1759
    const-string v0, "createAidlDynamicSubscriptionManager success"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    sput-object v3, Lcom/qti/phone/QtiRadioProxy;->sAidlDynamicSubscriptionManager:Lvendor/qti/hardware/data/dynamicddsaidlservice/ISubscriptionManager;

    .line 1761
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mAidlDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1762
    sget-object p0, Lcom/qti/phone/QtiRadioProxy;->sAidlDynamicSubscriptionManager:Lvendor/qti/hardware/data/dynamicddsaidlservice/ISubscriptionManager;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 1764
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAidlDynamicSubscriptionManager failed with status "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lvendor/qti/data/factoryservice/Result;->status:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1768
    :goto_0
    const-string v0, "createDynamicddsISubscriptionManager exception"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v1
.end method

.method private dumpInflightRequests(Ljava/io/PrintWriter;)V
    .locals 4

    .line 2605
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDynamicSubscriptionManager()Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;
    .locals 6

    .line 1712
    const-string v0, "QtiRadioProxy"

    new-instance v1, Lcom/qti/phone/QtiRadioProxy$CbResults;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/qti/phone/QtiRadioProxy$CbResults;-><init>(Lcom/qti/phone/QtiRadioProxy$CbResults-IA;)V

    .line 1716
    :try_start_0
    const-string v3, "Call IFactory getService"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    invoke-static {}, Lvendor/qti/data/factory/V2_4/IFactory;->getService()Lvendor/qti/data/factory/V2_4/IFactory;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1719
    const-string v4, "CnE factory not supported"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v2

    :goto_0
    if-nez v3, :cond_0

    .line 1722
    const-string p0, "CnE IFactory getService returned null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1727
    :cond_0
    :try_start_1
    const-string v4, "Call createDynamicddsISubscriptionManager"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    new-instance v4, Lcom/qti/phone/QtiRadioProxy$4;

    invoke-direct {v4, p0}, Lcom/qti/phone/QtiRadioProxy$4;-><init>(Lcom/qti/phone/QtiRadioProxy;)V

    new-instance v5, Lcom/qti/phone/QtiRadioProxy$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Lcom/qti/phone/QtiRadioProxy$$ExternalSyntheticLambda1;-><init>(Lcom/qti/phone/QtiRadioProxy$CbResults;)V

    invoke-interface {v3, v4, v5}, Lvendor/qti/data/factory/V2_0/IFactory;->createDynamicddsISubscriptionManager(Lvendor/qti/hardware/data/dynamicdds/V1_0/IToken;Lvendor/qti/data/factory/V2_0/IFactory$createDynamicddsISubscriptionManagerCallback;)V

    .line 1733
    const-string v3, "createDynamicddsISubscriptionManager success"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    iget-object v3, v1, Lcom/qti/phone/QtiRadioProxy$CbResults;->service:Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/32 v4, 0x7fffffff

    invoke-interface {v3, p0, v4, v5}, Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1735
    const-string p0, "Failed to link to death recipient"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    .line 1737
    :cond_1
    :goto_1
    iget-object p0, v1, Lcom/qti/phone/QtiRadioProxy$CbResults;->service:Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 1739
    :goto_2
    const-string v1, "createDynamicddsISubscriptionManager exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private getNetworkSelectionModeResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V
    .locals 7

    .line 2107
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/4 v2, 0x2

    .line 2108
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkSelectionModeResponse: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2110
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/qti/extphone/IExtPhoneCallback;->getNetworkSelectionModeResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V

    .line 2113
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getNetworkSelectionModeResponse: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static getNextToken()Lcom/qti/extphone/Token;
    .locals 2

    .line 628
    new-instance v0, Lcom/qti/extphone/Token;

    sget v1, Lcom/qti/phone/QtiRadioProxy;->mSerial:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/qti/phone/QtiRadioProxy;->mSerial:I

    invoke-direct {v0, v1}, Lcom/qti/extphone/Token;-><init>(I)V

    return-object v0
.end method

.method private getQosParametersResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QosParametersResult;)V
    .locals 7

    .line 2403
    const-string v0, "QtiRadioProxy"

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/4 v2, 0x3

    .line 2405
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getQosParametersResponse:  Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2409
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2407
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/qti/extphone/IExtPhoneCallback;->getQosParametersResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QosParametersResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2413
    const-string p2, "getQosParametersResponse: caught remote exception"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2415
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getQtiRadioCapabilityResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;I)V
    .locals 7

    .line 2013
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/4 v2, 0x4

    .line 2014
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2016
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getQtiRadioCapabilityResponse: Responding backfor transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2017
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2016
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/qti/extphone/IExtPhoneCallback;->getQtiRadioCapabilityResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;I)V

    .line 2019
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2022
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getQtiRadioCapabilityResponse: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private initIFactoryAidl()V
    .locals 2

    .line 1058
    const-string v0, "vendor.qti.data.factoryservice.IFactory/default"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1059
    const-string v1, "QtiRadioProxy"

    if-nez v0, :cond_0

    .line 1060
    const-string p0, "initIFactoryAidl failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1063
    :cond_0
    invoke-static {v0}, Lvendor/qti/data/factoryservice/IFactory$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/data/factoryservice/IFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mFactory:Lvendor/qti/data/factoryservice/IFactory;

    if-nez v0, :cond_1

    .line 1065
    const-string p0, "Get binder for IFactory StableAIDL failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1067
    :cond_1
    const-string v0, "Connected to IFactory StableAIDL service ... "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1068
    iput-boolean v0, p0, Lcom/qti/phone/QtiRadioProxy;->mCneDataFactoryAvailable:Z

    :goto_0
    return-void
.end method

.method private initIFactoryHidl()V
    .locals 5

    .line 1048
    const-string v0, "Failed to register for service start notification"

    const-string v1, "QtiRadioProxy"

    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v2

    const-string v3, "vendor.qti.data.factory@2.4::IFactory"

    const-string v4, "default"

    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mServiceNotification:Lcom/qti/phone/QtiRadioProxy$ServiceNotification;

    invoke-interface {v2, v3, v4, p0}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1050
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1053
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private isBoardApiLevelMatched()Z
    .locals 4

    .line 2528
    const-string p0, "ro.board.api_level"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 2529
    const-string v1, "ro.product.first_api_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBoardApiLevelMatched: apiLevel= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ProdLevel= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QtiRadioProxy"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x22

    if-ge p0, v2, :cond_1

    if-nez p0, :cond_0

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 2534
    :cond_1
    :goto_0
    const-string p0, "isBoardApiLevelMatched: true..."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private static isCneAidlAvailable()Z
    .locals 3

    .line 2520
    :try_start_0
    const-string v0, "vendor.qti.data.factoryservice.IFactory/default"

    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security exception while call into AIDL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private isSlotIdValid(I)Z
    .locals 2

    if-ltz p1, :cond_0

    .line 1808
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1811
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mQtiRadio length = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " skipping request!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$getDynamicSubscriptionManager$1(Lcom/qti/phone/QtiRadioProxy$CbResults;ILvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;)V
    .locals 0

    .line 1730
    iput p1, p0, Lcom/qti/phone/QtiRadioProxy$CbResults;->status:I

    .line 1731
    iput-object p2, p0, Lcom/qti/phone/QtiRadioProxy$CbResults;->service:Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;

    return-void
.end method

.method private synthetic lambda$init$0(I)V
    .locals 0

    .line 1101
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->registerCallback(I)V

    return-void
.end method

.method private networkScanResult(ILcom/qti/extphone/Token;Lcom/android/internal/telephony/NetworkScanResult;)V
    .locals 8

    .line 2122
    const-string v0, "QtiRadioProxy"

    const/4 v1, -0x1

    const/4 v2, 0x6

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "networkScanResult: = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    iget v5, p3, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    iget v6, p3, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    iget-object v7, p3, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/qti/extphone/IExtPhoneCallback;->networkScanResult(ILcom/qti/extphone/Token;IILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "networkScanResult: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private on5gConfigInfo(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfigType;)V
    .locals 7

    .line 1981
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/4 v2, 0x7

    .line 1982
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 1984
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "on5gConfigInfo: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1985
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1984
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/qti/extphone/IExtPhoneCallback;->on5gConfigInfo(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfigType;)V

    .line 1987
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1990
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "on5gConfigInfo: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private on5gStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 7

    .line 1916
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x8

    .line 1917
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 1919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "on5gStatus: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1920
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1919
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/qti/extphone/IExtPhoneCallback;->on5gStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    .line 1922
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1925
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "on5gStatus: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onCiwlanAvailable(IZ)V
    .locals 2

    .line 2446
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->updateCiwlanAvailableCache(IZ)V

    const/4 v0, -0x1

    const/16 v1, 0x30

    .line 2448
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2450
    invoke-interface {v0, p1, p2}, Lcom/qti/extphone/IExtPhoneCallback;->onCiwlanAvailable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2453
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCiwlanAvailable: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onCiwlanConfigChange(ILcom/qti/extphone/CiwlanConfig;)V
    .locals 2

    .line 2475
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->updateCiwlanConfigCache(ILcom/qti/extphone/CiwlanConfig;)V

    const/4 v0, -0x1

    const/16 v1, 0x32

    .line 2477
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2479
    invoke-interface {v0, p1, p2}, Lcom/qti/extphone/IExtPhoneCallback;->onCiwlanConfigChange(ILcom/qti/extphone/CiwlanConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2482
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCiwlanConfigChange: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onDataDeactivateDelayTime(ILcom/qti/extphone/Token;J)V
    .locals 6

    .line 2361
    const-string v0, "QtiRadioProxy"

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result p2

    const/16 v1, 0xa

    .line 2363
    :try_start_0
    invoke-virtual {p0, p2, v1}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataDeactivateDelayTime: Responding back for transaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2367
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2365
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    invoke-interface {v2, p1, p3, p4}, Lcom/qti/extphone/IExtPhoneCallback;->onDataDeactivateDelayTime(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2371
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onDataDeactivateDelayTime: Exception = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private onDdsSwitchCapabilityChange(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 7

    .line 2313
    const-string v0, "QtiRadioProxy"

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0xb

    .line 2315
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDdsSwitchCapabilityChange:  Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2319
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2317
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/qti/extphone/IExtPhoneCallback;->onDdsSwitchCapabilityChange(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2323
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onDdsSwitchCapabilityChange: Exception = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private onDdsSwitchCriteriaChange(ILcom/qti/extphone/Token;Z)V
    .locals 6

    .line 2329
    const-string v0, "QtiRadioProxy"

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result p2

    const/16 v1, 0xc

    .line 2331
    :try_start_0
    invoke-virtual {p0, p2, v1}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDdsSwitchCriteriaChange: Responding back for transaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2335
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2333
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    invoke-interface {v2, p1, p3}, Lcom/qti/extphone/IExtPhoneCallback;->onDdsSwitchCriteriaChange(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2339
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDdsSwitchCriteriaChange: Exception = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private onDdsSwitchRecommendation(ILcom/qti/extphone/Token;I)V
    .locals 6

    .line 2345
    const-string v0, "QtiRadioProxy"

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result p2

    const/16 v1, 0xd

    .line 2347
    :try_start_0
    invoke-virtual {p0, p2, v1}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDdsSwitchRecommendation: Responding back for transaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2351
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2349
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    invoke-interface {v2, p1, p3}, Lcom/qti/extphone/IExtPhoneCallback;->onDdsSwitchRecommendation(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2355
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDdsSwitchRecommendation: Exception = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private onDisableEsimProfile(IILjava/lang/String;)V
    .locals 5

    .line 2235
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2236
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;

    .line 2237
    const-string v2, "QtiRadioProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisableEsimProfile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    invoke-virtual {v1, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;->onDisableEsimProfile(IILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2240
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onEnableEndc(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 7

    .line 1856
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0xe

    .line 1857
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 1859
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEnableEndc: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1860
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1859
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    invoke-interface {v3, p1, p2, p3}, Lcom/qti/extphone/IExtPhoneCallback;->onEnableEndc(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    .line 1862
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1865
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onEnableEndc: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onEnableEsimProfile(IILjava/lang/String;)V
    .locals 5

    .line 2226
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2227
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;

    .line 2228
    const-string v2, "QtiRadioProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEnableEsimProfile:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    invoke-virtual {v1, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;->onEnableEsimProfile(IILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2231
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onEndcStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 7

    .line 1871
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0xf

    .line 1872
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 1874
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEndcStatus: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1875
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1874
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/qti/extphone/IExtPhoneCallback;->onEndcStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    .line 1877
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1880
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onEndcStatus: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onEpdgOverCellularDataSupported(ILcom/qti/extphone/Token;Z)V
    .locals 6

    .line 2377
    const-string v0, "QtiRadioProxy"

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result p2

    const/16 v1, 0x10

    .line 2379
    :try_start_0
    invoke-virtual {p0, p2, v1}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEpdgOverCellularDataSupported: Responding back for transaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2383
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2381
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    invoke-interface {v2, p1, p3}, Lcom/qti/extphone/IExtPhoneCallback;->onEpdgOverCellularDataSupported(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2387
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEpdgOverCellularDataSupported: Exception = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private onGetAllEsimProfiles(II)V
    .locals 4

    .line 2217
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2218
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;

    .line 2219
    const-string v2, "QtiRadioProxy"

    const-string v3, "onGetAllEsimProfiles"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    invoke-virtual {v1, p1, p2}, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;->onGetAllEsimProfiles(II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2222
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onNrDcParam(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/DcParam;)V
    .locals 7

    .line 1949
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x13

    .line 1950
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 1952
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNrDcParam: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1953
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1952
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/qti/extphone/IExtPhoneCallback;->onNrDcParam(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/DcParam;)V

    .line 1955
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1958
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNrDcParam: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onNrIconChange(ILcom/qti/extphone/NrIcon;)V
    .locals 4

    .line 2564
    const-string v0, "QtiRadioProxy"

    const/4 v1, -0x1

    const/16 v2, 0x33

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNrIconChange: icon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    invoke-interface {v1, p1, p2}, Lcom/qti/extphone/IExtPhoneCallback;->onNrIconChange(ILcom/qti/extphone/NrIcon;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2570
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNrIconChange: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onNrIconResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIcon;)V
    .locals 7

    .line 2575
    const-string v0, "QtiRadioProxy"

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x34

    .line 2577
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNrIconResponse: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2580
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2579
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/qti/extphone/IExtPhoneCallback;->onNrIconResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIcon;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2584
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNrIconResponse: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onQosParametersChanged(IILcom/qti/extphone/QosParametersResult;)V
    .locals 3

    .line 2419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQosParametersChanged: slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", qosParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/16 v2, 0x15

    .line 2423
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2425
    invoke-interface {v0, p1, p2, p3}, Lcom/qti/extphone/IExtPhoneCallback;->onQosParametersChanged(IILcom/qti/extphone/QosParametersResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2428
    const-string p1, "onQosParametersChanged: caught remote exception"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private onSendUserPreferenceForDataDuringVoiceCall(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 7

    .line 2294
    const-string v0, "QtiRadioProxy"

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x17

    .line 2296
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSendUserPreferenceForDataDuringVoiceCall: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2301
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2299
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    invoke-interface {v3, p1, p2, p3}, Lcom/qti/extphone/IExtPhoneCallback;->onSendUserPreferenceForDataDuringVoiceCall(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2306
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSendUserPreferenceForDataDuringVoiceCall: Exception = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private onSetNrUltraWidebandIconConfigResponse(ILcom/qti/extphone/Token;)V
    .locals 1

    .line 2509
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result p1

    .line 2510
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSetNrUltraWidebandIconConfigResponse: token = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QtiRadioProxy"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private onSignalStrength(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SignalStrength;)V
    .locals 7

    .line 1997
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x19

    .line 1998
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSignalStrength: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2001
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2000
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/qti/extphone/IExtPhoneCallback;->onSignalStrength(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SignalStrength;)V

    .line 2003
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2006
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSignalStrength: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onUpperLayerIndInfo(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/UpperLayerIndInfo;)V
    .locals 7

    .line 1965
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x1b

    .line 1966
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 1968
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onUpperLayerIndInfo: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1969
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1968
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/qti/extphone/IExtPhoneCallback;->onUpperLayerIndInfo(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/UpperLayerIndInfo;)V

    .line 1971
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1974
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onUpperLayerIndInfo: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private registerCallback(I)V
    .locals 1

    .line 1110
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p1, v0, p1

    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadioCallback:Lcom/qti/phone/IQtiRadioConnectionCallback;

    invoke-interface {p1, p0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->registerCallback(Lcom/qti/phone/IQtiRadioConnectionCallback;)V

    :cond_0
    return-void
.end method

.method private sendCdmaSmsResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SmsResult;)V
    .locals 7

    .line 2029
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x1d

    .line 2030
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2032
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCdmaSmsResponse: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2033
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2032
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/qti/extphone/IExtPhoneCallback;->sendCdmaSmsResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SmsResult;)V

    .line 2035
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2038
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendCdmaSmsResponse: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private sendImeiInfoIndInternal(ILcom/qti/extphone/QtiImeiInfo;)V
    .locals 5

    .line 2208
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2209
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;

    .line 2210
    const-string v2, "QtiRadioProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendImeiInfoIndInternal: slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    invoke-virtual {v1, p1, p2}, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;->onImeiChanged(ILcom/qti/extphone/QtiImeiInfo;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2213
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sendImeiInfoResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QtiImeiInfo;)V
    .locals 8

    .line 2196
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 2197
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2198
    :try_start_0
    iget-object v2, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;

    .line 2199
    const-string v4, "QtiRadioProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendImeiInfoResponse: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2199
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;->getImeiResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QtiImeiInfo;)V

    .line 2202
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2204
    :cond_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sendSimPersoUnlockStatusChange(ILcom/qti/extphone/QtiPersoUnlockStatus;)V
    .locals 4

    .line 2435
    const-string v0, "QtiRadioProxy"

    const/4 v1, -0x1

    const/16 v2, 0x2a

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSimPersoUnlockStatusChange: = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    invoke-interface {v1, p1, p2}, Lcom/qti/extphone/IExtPhoneCallback;->onSimPersoUnlockStatusChange(ILcom/qti/extphone/QtiPersoUnlockStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2441
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendSimPersoUnlockStatusChange: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private sendcallforwardqueryResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[Lcom/qti/extphone/QtiCallForwardInfo;)V
    .locals 6

    .line 2153
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result p1

    const/16 v1, 0x1c

    .line 2154
    invoke-virtual {p0, p1, v1}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendcallforwardqueryResponse: Responding back for transaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2156
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    invoke-interface {v2, p2, p3}, Lcom/qti/extphone/IExtPhoneCallback;->queryCallForwardStatusResponse(Lcom/qti/extphone/Status;[Lcom/qti/extphone/QtiCallForwardInfo;)V

    .line 2159
    iget-object v2, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendcallforwardqueryResponse: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private sendfacilityLockResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[I)V
    .locals 6

    .line 2168
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result p1

    const/4 v1, 0x1

    .line 2169
    invoke-virtual {p0, p1, v1}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendfacilityLockResponse: Responding back for transaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2171
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    invoke-interface {v2, p2, p3}, Lcom/qti/extphone/IExtPhoneCallback;->getFacilityLockForAppResponse(Lcom/qti/extphone/Status;[I)V

    .line 2174
    iget-object v2, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendfacilityLockResponse: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setAidlDynamicSubscriptionChange(Lcom/qti/extphone/Token;Z)V
    .locals 5

    .line 1692
    sget-object v0, Lcom/qti/phone/QtiRadioProxy;->sAidlDynamicSubscriptionManager:Lvendor/qti/hardware/data/dynamicddsaidlservice/ISubscriptionManager;

    const-string v1, "QtiRadioProxy"

    if-nez v0, :cond_0

    .line 1693
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioProxy;->createAidlDynamicSubscriptionManager()Lvendor/qti/hardware/data/dynamicddsaidlservice/ISubscriptionManager;

    move-result-object v0

    sput-object v0, Lcom/qti/phone/QtiRadioProxy;->sAidlDynamicSubscriptionManager:Lvendor/qti/hardware/data/dynamicddsaidlservice/ISubscriptionManager;

    if-nez v0, :cond_0

    .line 1695
    const-string p0, "createAidlDynamicSubscriptionManager returned null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0x12

    const/4 v2, 0x3

    .line 1700
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send setDynamicSubscriptionChange req isEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    sget-object v3, Lcom/qti/phone/QtiRadioProxy;->sAidlDynamicSubscriptionManager:Lvendor/qti/hardware/data/dynamicddsaidlservice/ISubscriptionManager;

    invoke-interface {v3, p2}, Lvendor/qti/hardware/data/dynamicddsaidlservice/ISubscriptionManager;->setDynamicSubscriptionChange(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1706
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v3

    .line 1703
    :try_start_1
    const-string v4, "AIDL: setDynamicSubscriptionChange exception"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1706
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1708
    throw v1
.end method

.method private setCarrierInfoForImsiEncryptionResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QRadioResponseInfo;)V
    .locals 6

    .line 2136
    const-string p3, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p4}, Lcom/qti/extphone/QRadioResponseInfo;->getSerial()I

    move-result v0

    const/16 v1, 0x1e

    .line 2137
    invoke-virtual {p0, v0, v1}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCarrierInfoForImsiEncryptionResponse: Responding back for transaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2140
    invoke-static {p3, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    invoke-interface {v2, p1, p2, p4}, Lcom/qti/extphone/IExtPhoneCallback;->setCarrierInfoForImsiEncryptionResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/QRadioResponseInfo;)V

    .line 2143
    iget-object v2, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setCarrierInfoForImsiEncryptionResponse: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setCellularRoamingPreferenceResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 8

    .line 2541
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    const/16 v1, 0x2f

    .line 2543
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2545
    const-string v3, "QtiRadioProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCellularRoamingPreferenceResponse: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2546
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2545
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    invoke-interface {v2, p1, p2, p3}, Lcom/qti/extphone/IExtPhoneCallback;->setCellularRoamingPreferenceResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2550
    const-string v2, "QtiRadioProxy"

    const-string v3, "setCellularRoamingPreferenceResponse: caught remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2552
    :cond_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2553
    :try_start_1
    iget-object v2, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;

    .line 2554
    const-string v4, "QtiRadioProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCellularRoamingPreferenceResponse: Responding back for transaction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2555
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2554
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    invoke-virtual {v3, p1, p2, p3}, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;->setCellularRoamingPreferenceResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2558
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2559
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2558
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private setCiwlanModeUserPreferenceResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 7

    .line 2459
    const-string v0, "QtiRadioProxy"

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x31

    .line 2461
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCiwlanModeUserPreferenceResponse:  Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2465
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2463
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    invoke-interface {v3, p1, p2, p3}, Lcom/qti/extphone/IExtPhoneCallback;->setCiwlanModeUserPreferenceResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2469
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setCiwlanModeUserPreferenceResponse: Exception = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDynamicSubscriptionChange(Lcom/qti/extphone/Token;Z)V
    .locals 5

    .line 1672
    sget-object v0, Lcom/qti/phone/QtiRadioProxy;->sDynamicSubscriptionManager:Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;

    const-string v1, "QtiRadioProxy"

    if-nez v0, :cond_0

    .line 1673
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioProxy;->getDynamicSubscriptionManager()Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;

    move-result-object v0

    sput-object v0, Lcom/qti/phone/QtiRadioProxy;->sDynamicSubscriptionManager:Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;

    if-nez v0, :cond_0

    .line 1675
    const-string p0, "getDynamicSubscriptionManager returned null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0x12

    const/4 v2, 0x3

    .line 1680
    :try_start_0
    sget-object v3, Lcom/qti/phone/QtiRadioProxy;->sDynamicSubscriptionManager:Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;

    invoke-interface {v3, p2}, Lvendor/qti/hardware/data/dynamicdds/V1_0/ISubscriptionManager;->setDynamicSubscriptionChange(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1685
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v3

    .line 1682
    :try_start_1
    const-string v4, "setDynamicSubscriptionChange exception"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1685
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1687
    throw v1
.end method

.method private setLooper(Landroid/os/Looper;)V
    .locals 1

    .line 1106
    new-instance v0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;-><init>(Lcom/qti/phone/QtiRadioProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method private setNetworkSelectionModeAutomaticResponse(ILcom/qti/extphone/Token;I)V
    .locals 7

    .line 2090
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x20

    .line 2091
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2094
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNetworkSelectionModeAutomaticResponse: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2095
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2094
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    invoke-interface {v3, p1, p2, p3}, Lcom/qti/extphone/IExtPhoneCallback;->setNetworkSelectionModeAutomaticResponse(ILcom/qti/extphone/Token;I)V

    .line 2097
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setNetworkSelectionModeAutomaticResponse: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setNetworkSelectionModeManualResponse(ILcom/qti/extphone/Token;I)V
    .locals 7

    .line 2074
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x21

    .line 2075
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2078
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNetworkSelectionModeManualResponse: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2079
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2078
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    invoke-interface {v3, p1, p2, p3}, Lcom/qti/extphone/IExtPhoneCallback;->setNetworkSelectionModeManualResponse(ILcom/qti/extphone/Token;I)V

    .line 2081
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2084
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setNetworkSelectionModeManualResponse: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setSmartDdsSwitchToggleResponse(Lcom/qti/extphone/Token;II)V
    .locals 6

    .line 1779
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSmartDdsSwitchToggleResponse status = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "QtiRadioProxy"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1782
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result p3

    const/16 v1, 0x23

    .line 1783
    invoke-virtual {p0, p3, v1}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qti/extphone/IExtPhoneCallback;

    .line 1785
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSmartDdsSwitchToggleResponse: Responding back for transaction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1786
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1785
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    invoke-interface {v2, p1, p2}, Lcom/qti/extphone/IExtPhoneCallback;->setSmartDdsSwitchToggleResponse(Lcom/qti/extphone/Token;Z)V

    .line 1788
    iget-object v2, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1791
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSmartDdsSwitchToggleResponse: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private startNetworkScanResponse(ILcom/qti/extphone/Token;I)V
    .locals 7

    .line 2044
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x24

    .line 2045
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2047
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startNetworkScanResponse: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2048
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2047
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    invoke-interface {v3, p1, p2, p3}, Lcom/qti/extphone/IExtPhoneCallback;->startNetworkScanResponse(ILcom/qti/extphone/Token;I)V

    .line 2050
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2053
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startNetworkScanResponse: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private stopNetworkScanResponse(ILcom/qti/extphone/Token;I)V
    .locals 7

    .line 2059
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x25

    .line 2060
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2062
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopNetworkScanResponse: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2063
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2062
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    invoke-interface {v3, p1, p2, p3}, Lcom/qti/extphone/IExtPhoneCallback;->stopNetworkScanResponse(ILcom/qti/extphone/Token;I)V

    .line 2065
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2068
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "stopNetworkScanResponse: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public disable5g(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable5g: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1231
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1232
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "disable5g"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->disable5g(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 2613
    const-string p1, "5G-Middleware:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2614
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mQtiRadio = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2615
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2617
    const-string p1, "Inflight requests : "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2618
    invoke-direct {p0, p2}, Lcom/qti/phone/QtiRadioProxy;->dumpInflightRequests(Ljava/io/PrintWriter;)V

    .line 2619
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public enable5g(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable5g: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1220
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1221
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "enable5g"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->enable5g(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public enable5gOnly(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable5gOnly: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1254
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1255
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "enable5gOnly"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->enable5gOnly(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public enableEndc(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableEndc: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1144
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1145
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "enableEndc"

    invoke-direct {v3, p0, v0, v4, p3}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, p2, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->enableEndc(ZLcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCellularRoamingPreference(I)Lcom/qti/extphone/CellularRoamingPreference;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCellularRoamingPreference: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1544
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->getCellularRoamingPreference()Lcom/qti/extphone/CellularRoamingPreference;

    move-result-object p0

    return-object p0
.end method

.method public getCiwlanConfig(I)Lcom/qti/extphone/CiwlanConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCiwlanConfig: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1503
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->getCiwlanConfig()Lcom/qti/extphone/CiwlanConfig;

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

    .line 1535
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->getCiwlanModeUserPreference()Lcom/qti/extphone/CiwlanConfig;

    move-result-object p0

    return-object p0
.end method

.method public getDdsSwitchCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDdsSwitchCapability: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1473
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1474
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "getDdsSwitchCapability"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->getDdsSwitchCapability(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/qti/extphone/Client;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFacilityLockForApp: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p7}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1416
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v2

    .line 1417
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "getFacilityLockForApp"

    invoke-direct {v3, p0, v2, v4, p7}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object v1, p0, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/qti/phone/IQtiRadioConnectionInterface;->getFacilityLockForApp(Lcom/qti/extphone/Token;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getImei(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImei: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1429
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1430
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "getImei"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->getImei(Lcom/qti/extphone/Token;)V

    return-object v0
.end method

.method public getNetworkSelectionMode(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkSelectionMode: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1197
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1198
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "getNetworkSelectionMode"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->getNetworkSelectionMode(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPropertyValueBool(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1120
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-interface {p0, p1, p2}, Lcom/qti/phone/IQtiRadioConnectionInterface;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getPropertyValueInt(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1116
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-interface {p0, p1, p2}, Lcom/qti/phone/IQtiRadioConnectionInterface;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1124
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-interface {p0, p1, p2}, Lcom/qti/phone/IQtiRadioConnectionInterface;->getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQosParameters(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getQosParameters: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1492
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1493
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "getQosParameters"

    invoke-direct {v3, p0, v0, v4, p3}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0, p2}, Lcom/qti/phone/IQtiRadioConnectionInterface;->getQosParameters(Lcom/qti/extphone/Token;I)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getQtiRadioCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getQtiRadioCapability: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1326
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1327
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "getQtiRadioCapability"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->getQtiRadioCapability(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSimPersoUnlockStatus(I)Lcom/qti/extphone/QtiPersoUnlockStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimPersoUnlockStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1511
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->getSimPersoUnlockStatus()Lcom/qti/extphone/QtiPersoUnlockStatus;

    move-result-object p0

    return-object p0
.end method

.method init(Lcom/qti/phone/ExtTelephonyServiceImpl;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1099
    const-string v0, "QtiRadioProxy"

    const-string v1, "init: set ExtTelephonyServiceImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iput-object p1, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    .line 1101
    iget-object p1, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    array-length p1, p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, Lcom/qti/phone/QtiRadioProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qti/phone/QtiRadioProxy$$ExternalSyntheticLambda0;-><init>(Lcom/qti/phone/QtiRadioProxy;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 1102
    invoke-direct {p0}, Lcom/qti/phone/QtiRadioProxy;->callDynamicDdsSwitchOnDemand()V

    return-void
.end method

.method public isCiwlanAvailable(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1515
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1516
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->isCiwlanAvailable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEpdgOverCellularDataSupported(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1481
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->isEpdgOverCellularDataSupported()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFeatureSupported(I)Z
    .locals 1

    .line 1452
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-interface {p0, p1}, Lcom/qti/phone/IQtiRadioConnectionInterface;->isFeatureSupported(I)Z

    move-result p0

    return p0
.end method

.method public isSmartDdsSwitchFeatureAvailable()Z
    .locals 0

    .line 1437
    iget-boolean p0, p0, Lcom/qti/phone/QtiRadioProxy;->mCneDataFactoryAvailable:Z

    return p0
.end method

.method public notifyDisableProfileStatus(IIZ)Lcom/qti/extphone/Token;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDisableProfileStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " refNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " result  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1610
    const-string p0, "notifyDisableProfileStatus: invalid slotId"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1613
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1614
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v5, "notifyDisableProfileStatus"

    invoke-direct {v4, p0, v0, v5, v2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0, p2, p3}, Lcom/qti/phone/IQtiRadioConnectionInterface;->notifyDisableProfileStatus(Lcom/qti/extphone/Token;IZ)V

    return-object v0
.end method

.method public notifyEnableProfileStatus(IIZ)Lcom/qti/extphone/Token;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEnableProfileStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " refNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " result  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1594
    const-string p0, "notifyEnableProfileStatus: invalid slotId"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1597
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1598
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v5, "notifyEnableProfileStatus"

    invoke-direct {v4, p0, v0, v5, v2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0, p2, p3}, Lcom/qti/phone/IQtiRadioConnectionInterface;->notifyEnableProfileStatus(Lcom/qti/extphone/Token;IZ)V

    return-object v0
.end method

.method protected onAnyNrBearerAllocation(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/BearerAllocationStatus;)V
    .locals 7

    .line 1933
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x9

    .line 1934
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 1936
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAnyNrBearerAllocation: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1937
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1936
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/qti/extphone/IExtPhoneCallback;->onAnyNrBearerAllocation(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/BearerAllocationStatus;)V

    .line 1939
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1942
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onAnyNrBearerAllocation: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onMultiSimConfigChanged(I)V
    .locals 4

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiSimConfigChanged activeModemCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    array-length v1, v0

    if-ne v1, p1, :cond_0

    return-void

    .line 1080
    :cond_0
    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-lt v1, p1, :cond_1

    .line 1084
    iget-object v2, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadioCallback:Lcom/qti/phone/IQtiRadioConnectionCallback;

    invoke-interface {v2, v3}, Lcom/qti/phone/IQtiRadioConnectionInterface;->unRegisterCallback(Lcom/qti/phone/IQtiRadioConnectionCallback;)V

    .line 1085
    iget-object v2, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1088
    :cond_1
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/qti/phone/IQtiRadioConnectionInterface;

    iput-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    :goto_1
    if-ge v0, p1, :cond_2

    .line 1092
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    sget-object v2, Lcom/qti/phone/QtiRadioProxy;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/qti/phone/QtiRadioFactory;->makeQtiRadio(Landroid/content/Context;I)Lcom/qti/phone/IQtiRadioConnectionInterface;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1093
    invoke-direct {p0, v0}, Lcom/qti/phone/QtiRadioProxy;->registerCallback(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onNrConfigStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfig;)V
    .locals 7

    .line 1901
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x12

    .line 1902
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 1904
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNrConfigStatus: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1905
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1904
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/qti/extphone/IExtPhoneCallback;->onNrConfigStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfig;)V

    .line 1907
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1910
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNrConfigStatus: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onNrIconType(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIconType;)V
    .locals 7

    .line 1841
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x14

    .line 1842
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 1844
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNrIconType: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1845
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1844
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/qti/extphone/IExtPhoneCallback;->onNrIconType(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIconType;)V

    .line 1847
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1850
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNrIconType: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSetNrConfig(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 7

    .line 1886
    const-string v0, "QtiRadioProxy"

    :try_start_0
    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    const/16 v2, 0x18

    .line 1887
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/extphone/IExtPhoneCallback;

    .line 1889
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSetNrConfig: Responding back for transaction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1890
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1889
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    invoke-interface {v3, p1, p2, p3}, Lcom/qti/extphone/IExtPhoneCallback;->onSetNrConfig(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    .line 1892
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1895
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSetNrConfig: Exception = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public query5gConfigInfo(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query5gConfigInfo: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1314
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1315
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "query5gConfigInfo"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->query5gConfigInfo(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public query5gStatus(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query5gStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1266
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1267
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "query5gStatus"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->query5gStatus(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryCallForwardStatus(IIILjava/lang/String;ZLcom/qti/extphone/Client;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallForwardStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p6}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1403
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v2

    .line 1404
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "queryCallForwardStatus"

    invoke-direct {v3, p0, v2, v4, p6}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object v1, p0, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/qti/phone/IQtiRadioConnectionInterface;->queryCallForwardStatus(Lcom/qti/extphone/Token;IILjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public queryEndcStatus(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryEndcStatus: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1156
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1157
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "queryEndcStatus"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->queryEndcStatus(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryNrBearerAllocation(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrBearerAllocation: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1242
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1243
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "queryNrBearerAllocation"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->queryNrBearerAllocation(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryNrConfig(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrConfig: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1209
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1210
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "queryNrConfig"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->queryNrConfig(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryNrDcParam(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrDcParam: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1278
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1279
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "queryNrDcParam"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->queryNrDcParam(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryNrIcon(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrIcon: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1567
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1568
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "queryNrIcon"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->queryNrIcon(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryNrIconType(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrIconType: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1132
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1133
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "queryNrIconType"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->queryNrIconType(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryNrSignalStrength(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrSignalStrength: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1290
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1291
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "queryNrSignalStrength"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->queryNrSignalStrength(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryUpperLayerIndInfo(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryUpperLayerIndInfo: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1302
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1303
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "queryUpperLayerIndInfo"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->queryUpperLayerIndInfo(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method registerInternalCallback(Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;)V
    .locals 4

    .line 2244
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2245
    :try_start_0
    const-string v1, "QtiRadioProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add internal callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2247
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeClientFromInflightRequests(Lcom/qti/extphone/IExtPhoneCallback;)V
    .locals 6

    .line 1796
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1797
    iget-object v3, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    .line 1798
    iget-object v4, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    iget-object v5, v3, Lcom/qti/phone/QtiRadioProxy$Transaction;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v4, v5}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/qti/phone/QtiRadioProxy$Transaction;->mClient:Lcom/qti/extphone/Client;

    .line 1799
    invoke-virtual {v3}, Lcom/qti/extphone/Client;->getCallback()Lcom/qti/extphone/IExtPhoneCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/qti/extphone/IExtPhoneCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1800
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeClientFromInflightRequests: Token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1801
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1800
    const-string v3, "QtiRadioProxy"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v2, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method retrieveCallbacks(II)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/qti/extphone/IExtPhoneCallback;",
            ">;"
        }
    .end annotation

    .line 1817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 1819
    iget-object p2, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1820
    iget-object p2, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Transaction;

    .line 1821
    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Transaction;->mClient:Lcom/qti/extphone/Client;

    .line 1822
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1823
    invoke-virtual {p1}, Lcom/qti/extphone/Client;->getCallback()Lcom/qti/extphone/IExtPhoneCallback;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1825
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "This client is invalid now: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QtiRadioProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1829
    :cond_1
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->retrieveCallbacksWithEvent(II)Ljava/util/ArrayList;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public sendAllEsimProfiles(IZILjava/util/List;)Lcom/qti/extphone/Token;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/qti/extphone/Token;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAllEsimProfiles: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " refNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " iccIdList  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1579
    const-string p0, "sendAllEsimProfiles: invalid slotId"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1582
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1583
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v5, "sendAllEsimProfiles"

    invoke-direct {v4, p0, v0, v5, v2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0, p2, p3, p4}, Lcom/qti/phone/IQtiRadioConnectionInterface;->sendAllEsimProfiles(Lcom/qti/extphone/Token;ZILjava/util/List;)V

    return-object v0
.end method

.method public sendCdmaSms(I[BZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCdmaSms: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p4}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1339
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1340
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "sendCdmaSms"

    invoke-direct {v3, p0, v0, v4, p4}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, p2, p3, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->sendCdmaSms([BZLcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method sendImeiInfoInd([Lcom/qti/extphone/QtiImeiInfo;)V
    .locals 4

    .line 2184
    const-string v0, "QtiRadioProxy"

    const/4 v1, -0x1

    const/16 v2, 0x11

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/qti/phone/QtiRadioProxy;->retrieveCallbacks(II)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/extphone/IExtPhoneCallback;

    .line 2186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendImeiInfoInd: = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    invoke-interface {v1, p1}, Lcom/qti/extphone/IExtPhoneCallback;->onImeiTypeChanged([Lcom/qti/extphone/QtiImeiInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendImeiInfoInd: Exception = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method sendMcfgRefreshInfo(Lcom/qti/extphone/Token;Lcom/qti/phone/QtiMcfgRefreshInfo;)V
    .locals 3

    .line 2393
    iget-object p1, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    monitor-enter p1

    .line 2394
    :try_start_0
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;

    .line 2395
    const-string v1, "QtiRadioProxy"

    const-string v2, "sendMcfgRefreshInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    invoke-virtual {v0, p2}, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;->onMcfgRefresh(Lcom/qti/phone/QtiMcfgRefreshInfo;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2398
    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sendUserPreferenceForDataDuringVoiceCall(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendUserPreferenceForDataDuringVoiceCall: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1461
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1462
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "sendUserPreferenceForDataDuringVoiceCall"

    invoke-direct {v3, p0, v0, v4, p3}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0, p2}, Lcom/qti/phone/IQtiRadioConnectionInterface;->sendUserPreferenceForDataDuringVoiceCall(Lcom/qti/extphone/Token;Z)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCarrierInfoForImsiEncryption: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1390
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1391
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "setCarrierInfoForImsiEncryption"

    invoke-direct {v3, p0, v0, v4, p3}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0, p2}, Lcom/qti/phone/IQtiRadioConnectionInterface;->setCarrierInfoForImsiEncryption(Lcom/qti/extphone/Token;Landroid/telephony/ImsiEncryptionInfo;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setCellularRoamingPreference(Lcom/qti/extphone/Client;ILcom/qti/extphone/CellularRoamingPreference;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCellularRoamingPreference: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", internationalPref = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    invoke-virtual {p3}, Lcom/qti/extphone/CellularRoamingPreference;->getInternationalCellularRoamingPref()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", domesticPref = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    invoke-virtual {p3}, Lcom/qti/extphone/CellularRoamingPreference;->getDomesticCellularRoamingPref()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1549
    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    invoke-direct {p0, p2}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1555
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1556
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "setCellularRoamingPreference"

    invoke-direct {v3, p0, v0, v4, p1}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p2

    invoke-interface {p0, v0, p3}, Lcom/qti/phone/IQtiRadioConnectionInterface;->setCellularRoamingPreference(Lcom/qti/extphone/Token;Lcom/qti/extphone/CellularRoamingPreference;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setCiwlanModeUserPreference(ILcom/qti/extphone/Client;Lcom/qti/extphone/CiwlanConfig;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCiwlanModeUserPreference: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1527
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1528
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "setCiwlanModeUserPreference"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0, p3}, Lcom/qti/phone/IQtiRadioConnectionInterface;->setCiwlanModeUserPreference(Lcom/qti/extphone/Token;Lcom/qti/extphone/CiwlanConfig;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setNetworkSelectionModeAutomatic(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetworkSelectionModeAutomatic: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " accessType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1184
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1185
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "setNetworkSelectionModeAutomatic"

    invoke-direct {v3, p0, v0, v4, p3}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, p2, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->setNetworkSelectionModeAutomatic(ILcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setNetworkSelectionModeManual(ILcom/qti/extphone/QtiSetNetworkSelectionMode;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetworkSelectionModeManual: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1377
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1378
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "setNetworkSelectionModeManual"

    invoke-direct {v3, p0, v0, v4, p3}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, p2, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->setNetworkSelectionModeManual(Lcom/qti/extphone/QtiSetNetworkSelectionMode;Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setNrConfig(ILcom/qti/extphone/NrConfig;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1165
    sget-object v1, Lcom/qti/phone/QtiRadioProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 1166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNrConfig: slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1171
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1172
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "setNrConfig"

    invoke-direct {v3, p0, v0, v4, p3}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, p2, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->setNrConfig(Lcom/qti/extphone/NrConfig;Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setNrUltraWidebandIconConfig(IILvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;Ljava/util/ArrayList;Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;)Lcom/qti/extphone/Token;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;",
            "Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/qtiradio/NrUwbIconRefreshTime;",
            ">;",
            "Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;",
            ")",
            "Lcom/qti/extphone/Token;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    move v0, p1

    .line 2490
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "QtiRadioProxy"

    if-nez v2, :cond_0

    .line 2491
    const-string v0, "setNrUltraWidebandIconConfig: invalid slotId"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 2494
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v2

    .line 2495
    iget-object v5, v1, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/qti/extphone/Token;->get()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v8, "setNrUltraWidebandIconConfig"

    invoke-direct {v7, p0, v2, v8, v3}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNrUltraWidebandIconConfig: slotId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " token = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    :try_start_0
    iget-object v3, v1, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object v5, v3, v0

    move-object v6, v2

    move v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-interface/range {v5 .. v11}, Lcom/qti/phone/IQtiRadioConnectionInterface;->setNrUltraWidebandIconConfig(Lcom/qti/extphone/Token;ILvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandInfo;Ljava/util/ArrayList;Lvendor/qti/hardware/radio/qtiradio/NrUwbIconBandwidthInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 2502
    iget-object v1, v1, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2503
    throw v0
.end method

.method public setSmartDdsSwitchToggle(ZLcom/qti/extphone/Client;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmartDdsSwitchToggle: isEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1443
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1444
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "setSmartDdsSwitchToggle"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mWorkerThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 1448
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy$Result;-><init>(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/16 p1, 0x11

    .line 1447
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startNetworkScan(ILandroid/telephony/NetworkScanRequest;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNetworkScan: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1352
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1353
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "startNetworkScan"

    invoke-direct {v3, p0, v0, v4, p3}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, p2, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public stopNetworkScan(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopNetworkScan: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiRadioProxy;->isSlotIdValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isClientValid(Lcom/qti/extphone/Client;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1364
    :cond_0
    invoke-static {}, Lcom/qti/phone/QtiRadioProxy;->getNextToken()Lcom/qti/extphone/Token;

    move-result-object v0

    .line 1365
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy;->mInflightRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/qti/phone/QtiRadioProxy$Transaction;

    const-string v4, "stopNetworkScan"

    invoke-direct {v3, p0, v0, v4, p2}, Lcom/qti/phone/QtiRadioProxy$Transaction;-><init>(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Ljava/lang/String;Lcom/qti/extphone/Client;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mQtiRadio:[Lcom/qti/phone/IQtiRadioConnectionInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/qti/phone/IQtiRadioConnectionInterface;->stopNetworkScan(Lcom/qti/extphone/Token;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method unRegisterInternalCallback(Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;)V
    .locals 4

    .line 2251
    iget-object v0, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2252
    :try_start_0
    const-string v1, "QtiRadioProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove internal callback = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy;->mInternalCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2254
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

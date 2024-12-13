.class Lcom/qti/phone/QtiRadioProxy$WorkerHandler;
.super Landroid/os/Handler;
.source "QtiRadioProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiRadioProxy;


# direct methods
.method public constructor <init>(Lcom/qti/phone/QtiRadioProxy;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    .line 168
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioProxyHandler: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 583
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    invoke-virtual {p0, p1}, Lcom/xiaomi/internal/telephony_ext/MiRadioProxy;->handleMessageMi(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 576
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tokenkey = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    invoke-virtual {v2}, Lcom/qti/extphone/Token;->get()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioProxy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    invoke-virtual {p1}, Lcom/qti/extphone/Token;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 566
    :pswitch_1
    const-string v0, "EVENT_DISABLE_ESIM_PROFILE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 568
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v1, p1, v0}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monDisableEsimProfile(Lcom/qti/phone/QtiRadioProxy;IILjava/lang/String;)V

    goto/16 :goto_1

    .line 558
    :pswitch_2
    const-string v0, "EVENT_ENABLE_ESIM_PROFILE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 560
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v1, p1, v0}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monEnableEsimProfile(Lcom/qti/phone/QtiRadioProxy;IILjava/lang/String;)V

    goto/16 :goto_1

    .line 552
    :pswitch_3
    const-string v0, "EVENT_GET_ALL_ESIM_PROFILES"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monGetAllEsimProfiles(Lcom/qti/phone/QtiRadioProxy;II)V

    goto/16 :goto_1

    .line 544
    :pswitch_4
    const-string v0, "EVENT_QUERY_NR_ICON_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 546
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, v0, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, v0, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/qti/extphone/NrIcon;

    invoke-static {p0, p1, v1, v2, v0}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monNrIconResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIcon;)V

    goto/16 :goto_1

    .line 537
    :pswitch_5
    const-string v0, "EVENT_ON_NR_ICON_CHANGE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 539
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/qti/extphone/NrIcon;

    invoke-static {p0, p1, v0}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monNrIconChange(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/NrIcon;)V

    goto/16 :goto_1

    .line 530
    :pswitch_6
    const-string v0, "EVENT_SET_CELLULAR_ROAMING_PREFERENCE_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 532
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, v0, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-static {p0, p1, v1, v0}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msetCellularRoamingPreferenceResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    goto/16 :goto_1

    .line 522
    :pswitch_7
    const-string v0, "EVENT_ON_CIWLAN_CONFIG_CHANGE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 524
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 525
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/CiwlanConfig;

    invoke-static {p0, v0, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monCiwlanConfigChange(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/CiwlanConfig;)V

    goto/16 :goto_1

    .line 514
    :pswitch_8
    const-string v0, "EVENT_SET_CIWLAN_MODE_USER_PREFERENCE_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 516
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 517
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msetCiwlanModeUserPreferenceResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    goto/16 :goto_1

    .line 506
    :pswitch_9
    const-string v0, "EVENT_ON_CIWLAN_AVAILABLE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 508
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 509
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monCiwlanAvailable(Lcom/qti/phone/QtiRadioProxy;IZ)V

    goto/16 :goto_1

    .line 498
    :pswitch_a
    const-string v0, "EVENT_SIM_PERSO_UNLOCK_STATUS_CHANGE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 500
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 501
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QtiPersoUnlockStatus;

    invoke-static {p0, v0, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msendSimPersoUnlockStatusChange(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/QtiPersoUnlockStatus;)V

    goto/16 :goto_1

    .line 489
    :pswitch_b
    const-string v0, "EVENT_ON_QOS_PARAMETERS_CHANGED"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 491
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 492
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 493
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QosParametersResult;

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monQosParametersChanged(Lcom/qti/phone/QtiRadioProxy;IILcom/qti/extphone/QosParametersResult;)V

    goto/16 :goto_1

    .line 480
    :pswitch_c
    const-string v0, "EVENT_GET_QOS_PARAMETERS_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 482
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 483
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QosParametersResult;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mgetQosParametersResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QosParametersResult;)V

    goto/16 :goto_1

    .line 463
    :pswitch_d
    const-string v0, "EVENT_GET_NETWORK_SELECTION_MODE_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 465
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 466
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/NetworkSelectionMode;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mgetNetworkSelectionModeResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V

    goto/16 :goto_1

    .line 454
    :pswitch_e
    const-string v0, "EVENT_START_NETWORK_SELECTION_MODE_AUTOMATIC_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 456
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 457
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 458
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 457
    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msetNetworkSelectionModeAutomaticResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;I)V

    goto/16 :goto_1

    .line 445
    :pswitch_f
    const-string v0, "EVENT_START_NETWORK_SELECTION_MODE_MANUAL_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 447
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 448
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 449
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 448
    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msetNetworkSelectionModeManualResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;I)V

    goto/16 :goto_1

    .line 437
    :pswitch_10
    const-string v0, "EVENT_STOP_NETWORK_SCAN_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 439
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 440
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mstopNetworkScanResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;I)V

    goto/16 :goto_1

    .line 472
    :pswitch_11
    const-string v0, "EVENT_NETWORK_SCAN_RESULT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 474
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 475
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/NetworkScanResult;

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mnetworkScanResult(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/android/internal/telephony/NetworkScanResult;)V

    goto/16 :goto_1

    .line 429
    :pswitch_12
    const-string v0, "EVENT_START_NETWORK_SCAN_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 431
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 432
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mstartNetworkScanResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;I)V

    goto/16 :goto_1

    .line 422
    :pswitch_13
    const-string v0, "EVENT_ON_SET_NR_ULTRA_WIDEBAND_CONFIG_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 424
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    invoke-static {p0, p1, v0}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monSetNrUltraWidebandIconConfigResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;)V

    goto/16 :goto_1

    .line 415
    :pswitch_14
    const-string v0, "EVENT_ON_MCFG_REFRESH"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 417
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v0, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiMcfgRefreshInfo;

    invoke-virtual {p0, v0, p1}, Lcom/qti/phone/QtiRadioProxy;->sendMcfgRefreshInfo(Lcom/qti/extphone/Token;Lcom/qti/phone/QtiMcfgRefreshInfo;)V

    goto/16 :goto_1

    .line 407
    :pswitch_15
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 408
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 409
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 410
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 409
    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monEpdgOverCellularDataSupported(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Z)V

    goto/16 :goto_1

    .line 399
    :pswitch_16
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 400
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 401
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 402
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 401
    invoke-static {p0, v0, v1, v2, v3}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monDataDeactivateDelayTime(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;J)V

    goto/16 :goto_1

    .line 391
    :pswitch_17
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 392
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 393
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 394
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 393
    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monDdsSwitchRecommendation(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;I)V

    goto/16 :goto_1

    .line 383
    :pswitch_18
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 384
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 385
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 386
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 385
    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monDdsSwitchCriteriaChange(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Z)V

    goto/16 :goto_1

    .line 375
    :pswitch_19
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 376
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 377
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 378
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 377
    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monDdsSwitchCapabilityChange(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    goto/16 :goto_1

    .line 367
    :pswitch_1a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 368
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 369
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monSendUserPreferenceForDataDuringVoiceCall(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    goto/16 :goto_1

    .line 359
    :pswitch_1b
    const-string v0, "EVENT_IMEI_CHANGE_IND_INFO"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 361
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 362
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QtiImeiInfo;

    invoke-static {p0, v0, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msendImeiInfoIndInternal(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/QtiImeiInfo;)V

    goto/16 :goto_1

    .line 350
    :pswitch_1c
    const-string v0, "EVENT_GET_IMEI_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 352
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 353
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QtiImeiInfo;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msendImeiInfoResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QtiImeiInfo;)V

    goto/16 :goto_1

    .line 190
    :pswitch_1d
    const-string v0, "EVENT_ON_SMART_DDS_SWITCH_TOGGLE_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qti/extphone/Token;

    .line 192
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 193
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 194
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msetSmartDdsSwitchToggleResponse(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;II)V

    goto/16 :goto_1

    .line 176
    :pswitch_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SMART_DDS_SWITCH_TOGGLE mIsFactoryAidlAvailable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$fgetmIsFactoryAidlAvailable(Lcom/qti/phone/QtiRadioProxy;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 179
    iget-object v0, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    .line 180
    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 181
    :goto_0
    iget-object p1, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    invoke-static {p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$fgetmIsFactoryAidlAvailable(Lcom/qti/phone/QtiRadioProxy;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    invoke-static {p0, v0, v1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msetAidlDynamicSubscriptionChange(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Z)V

    goto/16 :goto_1

    .line 184
    :cond_1
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    invoke-static {p0, v0, v1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msetDynamicSubscriptionChange(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Z)V

    goto/16 :goto_1

    .line 343
    :pswitch_1f
    const-string v0, "EVENT_FACILITY_LOCK_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 345
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v0, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msendfacilityLockResponse(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[I)V

    goto/16 :goto_1

    .line 335
    :pswitch_20
    const-string v0, "EVENT_CALL_FORWARD_QUERY_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 337
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v0, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, [Lcom/qti/extphone/QtiCallForwardInfo;

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msendcallforwardqueryResponse(Lcom/qti/phone/QtiRadioProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[Lcom/qti/extphone/QtiCallForwardInfo;)V

    goto/16 :goto_1

    .line 326
    :pswitch_21
    const-string v0, "EVENT_SEND_CARRIER_INFO_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 328
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 329
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/QRadioResponseInfo;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msetCarrierInfoForImsiEncryptionResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QRadioResponseInfo;)V

    goto/16 :goto_1

    .line 317
    :pswitch_22
    const-string v0, "EVENT_SEND_CDMA_SMS_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 319
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 320
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/SmsResult;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$msendCdmaSmsResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SmsResult;)V

    goto/16 :goto_1

    .line 308
    :pswitch_23
    const-string v0, "EVENT_QTI_RADIO_CAPABILITY_RESPONSE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 310
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 311
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 312
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 311
    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mgetQtiRadioCapabilityResponse(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;I)V

    goto/16 :goto_1

    .line 299
    :pswitch_24
    const-string v0, "EVENT_ON_SIGNAL_STRENGTH"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 301
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 302
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/SignalStrength;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monSignalStrength(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SignalStrength;)V

    goto/16 :goto_1

    .line 290
    :pswitch_25
    const-string v0, "EVENT_ON_5G_CONFIG_INFO"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 292
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 293
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/NrConfigType;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mon5gConfigInfo(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfigType;)V

    goto/16 :goto_1

    .line 281
    :pswitch_26
    const-string v0, "EVENT_ON_UPPER_LAYER_IND_INFO"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 283
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 284
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/UpperLayerIndInfo;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monUpperLayerIndInfo(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/UpperLayerIndInfo;)V

    goto/16 :goto_1

    .line 272
    :pswitch_27
    const-string v0, "EVENT_ON_NR_DC_PARAM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 274
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 275
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/DcParam;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monNrDcParam(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/DcParam;)V

    goto/16 :goto_1

    .line 248
    :pswitch_28
    const-string v0, "EVENT_ON_5G_ENABLE_STATUS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 250
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 251
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$mon5gStatus(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    goto/16 :goto_1

    .line 256
    :pswitch_29
    const-string v0, "EVENT_ON_BEARER_ALLOCATION_CHANGE_IND"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 258
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 260
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object v4, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast v4, Lcom/qti/extphone/BearerAllocationStatus;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/qti/phone/QtiRadioProxy;->access$200(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/BearerAllocationStatus;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object v4, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast v4, Lcom/qti/extphone/BearerAllocationStatus;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/qti/phone/QtiRadioProxy;->onAnyNrBearerAllocation(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/BearerAllocationStatus;)V

    .line 264
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/BearerAllocationStatus;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->access$300(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/BearerAllocationStatus;)V

    goto/16 :goto_1

    .line 239
    :pswitch_2a
    const-string v0, "EVENT_ON_NR_CONFIG_STATUS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 241
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 242
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/NrConfig;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->onNrConfigStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfig;)V

    goto/16 :goto_1

    .line 231
    :pswitch_2b
    const-string v0, "EVENT_ON_SET_NR_CONFIG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 233
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 234
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-virtual {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->onSetNrConfig(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    goto :goto_1

    .line 223
    :pswitch_2c
    const-string v0, "EVENT_ON_ENDC_STATUS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 225
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 226
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monEndcStatus(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    goto :goto_1

    .line 215
    :pswitch_2d
    const-string v0, "EVENT_ON_ENABLE_ENDC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 217
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 218
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiRadioProxy;->-$$Nest$monEnableEndc(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    goto :goto_1

    .line 199
    :pswitch_2e
    const-string v0, "EVENT_ON_NR_ICON_TYPE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 201
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/qti/phone/QtiRadioProxy$Result;

    .line 203
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object v4, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast v4, Lcom/qti/extphone/NrIconType;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/qti/phone/QtiRadioProxy;->access$000(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIconType;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v3, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object v4, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast v4, Lcom/qti/extphone/NrIconType;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/qti/phone/QtiRadioProxy;->onNrIconType(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIconType;)V

    .line 207
    iget-object p0, p0, Lcom/qti/phone/QtiRadioProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioProxy;

    iget-object v1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v2, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object p1, p1, Lcom/qti/phone/QtiRadioProxy$Result;->mData:Ljava/lang/Object;

    check-cast p1, Lcom/qti/extphone/NrIconType;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/qti/phone/QtiRadioProxy;->access$100(Lcom/qti/phone/QtiRadioProxy;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIconType;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

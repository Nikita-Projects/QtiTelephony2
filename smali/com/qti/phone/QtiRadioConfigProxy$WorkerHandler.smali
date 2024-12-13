.class Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;
.super Landroid/os/Handler;
.source "QtiRadioConfigProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioConfigProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiRadioConfigProxy;


# direct methods
.method public constructor <init>(Lcom/qti/phone/QtiRadioConfigProxy;Landroid/os/Looper;)V
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

    .line 140
    iput-object p1, p0, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    .line 141
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigProxyHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    .line 148
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 218
    :pswitch_0
    const-string p1, "EVENT_ON_ALLOW_MODEM_RECOMMENDATION_FOR_DATA_DURING_CALL"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    iget-object p1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-static {p0, p1, v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$monSendUserPreferenceForDataDuringVoiceCall(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    goto/16 :goto_0

    .line 212
    :pswitch_1
    const-string p1, "EVENT_ON_DDS_SWITCH_RECOMMENDATION"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    iget-object p1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$monDdsSwitchRecommendation(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;I)V

    goto/16 :goto_0

    .line 206
    :pswitch_2
    const-string p1, "EVENT_ON_DDS_SWITCH_CRITERIA_CHANGED"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    iget-object p1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$monDdsSwitchCriteriaChanged(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Z)V

    goto/16 :goto_0

    .line 200
    :pswitch_3
    const-string p1, "EVENT_ON_DDS_SWITCH_CAPABILITY_CHANGED"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    iget-object p1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 202
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 201
    invoke-static {p0, p1, v1, v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$monDdsSwitchCapabilityChanged(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    goto/16 :goto_0

    .line 194
    :pswitch_4
    const-string p1, "EVENT_ON_DUAL_DATA_RECOMMENDATION"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    iget-object p1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/qti/extphone/DualDataRecommendation;

    invoke-static {p0, p1, v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$monDualDataRecommendation(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/DualDataRecommendation;)V

    goto/16 :goto_0

    .line 189
    :pswitch_5
    const-string p1, "EVENT_SET_DUAL_DATA_USER_PREFERENCE_RESPONSE"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    iget-object p1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-static {p0, p1, v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$msetDualDataUserPreferenceResponse(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    goto/16 :goto_0

    .line 183
    :pswitch_6
    const-string p1, "EVENT_ON_DUAL_DATA_CAPABILITY_CHANGED"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    iget-object p1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 185
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 184
    invoke-static {p0, p1, v1, v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$monDualDataCapabilityChanged(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    goto :goto_0

    .line 177
    :pswitch_7
    const-string p1, "EVENT_ON_CIWLAN_CAPABILITY_CHANGE"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    iget-object p1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/qti/phone/CiwlanCapability;

    invoke-static {p0, p1, v1, v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$monCiwlanCapabilityChanged(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/phone/CiwlanCapability;)V

    goto :goto_0

    .line 172
    :pswitch_8
    const-string p1, "EVENT_ON_SET_SIM_TYPE_RESPONSE"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    iget-object p1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-static {p0, p1, v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$monSetSimTypeResponse(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    goto :goto_0

    .line 166
    :pswitch_9
    const-string p1, "EVENT_ON_GET_SIM_TYPE_INFO_RESPONSE"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    iget-object p1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mData:Ljava/lang/Object;

    check-cast v0, [Lvendor/qti/hardware/radio/qtiradioconfig/SimTypeInfo;

    invoke-static {p0, p1, v1, v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$monGetSimTypeInfoResponse(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[Lvendor/qti/hardware/radio/qtiradioconfig/SimTypeInfo;)V

    goto :goto_0

    .line 161
    :pswitch_a
    const-string p1, "EVENT_ON_MSIM_PREFERENCE_RESPONSE"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    iget-object p1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-static {p0, p1, v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$msetMsimPreferenceResponse(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    goto :goto_0

    .line 156
    :pswitch_b
    const-string p1, "EVENT_ON_SECURE_MODE_STATUS_CHANGE"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    iget-object p1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$monSecureModeStatusChange(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Z)V

    goto :goto_0

    .line 150
    :pswitch_c
    const-string p1, "EVENT_GET_SECURE_MODE_STATUS_RESPONSE"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$WorkerHandler;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    iget-object p1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mToken:Lcom/qti/extphone/Token;

    iget-object v1, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    iget-object v0, v0, Lcom/qti/phone/QtiRadioConfigProxy$Result;->mData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 152
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 151
    invoke-static {p0, p1, v1, v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$mgetSecureModeStatusResponse(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch
.end method

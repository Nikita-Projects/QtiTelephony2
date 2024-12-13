.class Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;
.super Landroid/content/BroadcastReceiver;
.source "SubsidyDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/subsidylock/SubsidyDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;


# direct methods
.method constructor <init>(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubsidyDeviceController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.telephony.extra.SLOT_INDEX"

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v0, :cond_3

    const-string v0, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 102
    :cond_0
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 103
    iget-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p1}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$fgetmSubsidyDevHandler(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$fgetmSubsidyDevHandler(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Landroid/os/Handler;

    move-result-object p0

    const-string v0, "subscription"

    .line 104
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, v4, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 103
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 106
    :cond_1
    const-string v0, "org.codeaurora.intent.action.RADIO_POWER_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 107
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 109
    const-string v0, "state"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 112
    iget-object v0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {v0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$fgetmContext(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qti/phone/subsidylock/SubsidyLockUtils;->isValidSlotId(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {v0}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$fgetmRadioState(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)[I

    move-result-object v0

    aput p2, v0, p1

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p1}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$misRadioOnForAllSlots(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p1}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$misAirplaneModeOn(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p1}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$fgetmRetrySettingPrimaryCard(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 117
    iget-object p1, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p1}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$fgetmSubsidyDevHandler(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p2}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$fgetmSubsidyDevHandler(Lcom/qti/phone/subsidylock/SubsidyDeviceController;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x3

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    iget-object p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p0, v2}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$fputmRetrySettingPrimaryCard(Lcom/qti/phone/subsidylock/SubsidyDeviceController;Z)V

    goto :goto_1

    .line 96
    :cond_3
    :goto_0
    const-string p1, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 98
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 101
    iget-object p0, p0, Lcom/qti/phone/subsidylock/SubsidyDeviceController$1;->this$0:Lcom/qti/phone/subsidylock/SubsidyDeviceController;

    invoke-static {p0, p1, p2}, Lcom/qti/phone/subsidylock/SubsidyDeviceController;->-$$Nest$mhandleSimStateChanged(Lcom/qti/phone/subsidylock/SubsidyDeviceController;II)V

    :cond_4
    :goto_1
    return-void
.end method

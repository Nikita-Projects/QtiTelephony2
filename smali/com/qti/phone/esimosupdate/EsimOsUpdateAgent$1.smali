.class Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$1;
.super Landroid/content/BroadcastReceiver;
.source "EsimOsUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;


# direct methods
.method constructor <init>(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$1;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 107
    const-string v0, "android.telephony.action.SIM_SLOT_STATUS_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$1;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    const-string p2, "received slot status change indication"

    invoke-static {p1, p2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$mlogd(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$1;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$fgetmHandler(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$1;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$fgetmHandler(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)Landroid/os/Handler;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 110
    :cond_0
    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 111
    const-string p1, "android.telephony.extra.SLOT_INDEX"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 113
    iget-object p2, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$1;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM_CARD_STATE_CHANGED: slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$mlogd(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$1;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {p2}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$fgetmEsimSlotId(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 115
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$1;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$mcheckIccCardAndProceed(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)V

    :cond_1
    :goto_0
    return-void
.end method

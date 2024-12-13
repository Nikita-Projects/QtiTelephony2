.class final Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;
.super Landroid/os/Handler;
.source "EsimOsUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EsimOsUpdateAgentHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;


# direct methods
.method constructor <init>(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;Landroid/os/Looper;)V
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

    .line 122
    iput-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    .line 123
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EsimOsUpdateAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    .line 158
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    const-string p1, "invalid message "

    invoke-static {p0, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$mlogd(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :pswitch_0
    iget-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$fgetmEsimOsUpdateUtils(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$fgetmEsimSlotId(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)I

    move-result v0

    iget-object v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {v1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$fgetmPortId(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->readITLAndOSProperties(II)V

    .line 152
    iget-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$mverifyITLAndOSDetailsAfterOSWrite(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$mnotifyOSUpdateCompleted(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$fgetmEsimOsUpdateUtils(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {v0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$fgetmEsimSlotId(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)I

    move-result v0

    iget-object v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {v1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$fgetmPortId(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;->readITLAndOSProperties(II)V

    .line 145
    iget-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$mverifyITLDetailsAfterManifestWrite(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$mwriteOSFileContentInCard(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$mwriteOSFileContentInCard(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)V

    goto :goto_0

    .line 135
    :pswitch_3
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$mhandleCardStateChanged(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)V

    goto :goto_0

    .line 131
    :pswitch_4
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$EsimOsUpdateAgentHandler;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-static {p0}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->-$$Nest$mhandleSlotStatusEvent(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

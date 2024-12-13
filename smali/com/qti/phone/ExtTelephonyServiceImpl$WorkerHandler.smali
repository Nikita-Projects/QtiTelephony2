.class Lcom/qti/phone/ExtTelephonyServiceImpl$WorkerHandler;
.super Landroid/os/Handler;
.source "ExtTelephonyServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/ExtTelephonyServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;


# direct methods
.method public constructor <init>(Lcom/qti/phone/ExtTelephonyServiceImpl;Landroid/os/Looper;)V
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

    .line 1105
    iput-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$WorkerHandler;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    .line 1106
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyServiceImplHandler: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 1138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid message = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1114
    :cond_0
    const-string p1, "EVENT_MULTI_SIM_CONFIG_CHANGED"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-static {}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$sfgetmNumPhones()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 1117
    const-class p1, Lcom/qti/phone/primarycard/PrimaryCardService;

    invoke-static {p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$smisServiceRunning(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1118
    const-string p1, "Stopping PrimaryCardService"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-static {}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qti/phone/primarycard/PrimaryCardService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1121
    :cond_1
    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$WorkerHandler;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-static {p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$fgetmPrimaryImeiHandler(Lcom/qti/phone/ExtTelephonyServiceImpl;)Lcom/qti/phone/QtiPrimaryImeiHandler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1122
    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$WorkerHandler;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-static {p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$fgetmPrimaryImeiHandler(Lcom/qti/phone/ExtTelephonyServiceImpl;)Lcom/qti/phone/QtiPrimaryImeiHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qti/phone/QtiPrimaryImeiHandler;->destroy()V

    .line 1123
    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$WorkerHandler;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$fputmPrimaryImeiHandler(Lcom/qti/phone/ExtTelephonyServiceImpl;Lcom/qti/phone/QtiPrimaryImeiHandler;)V

    .line 1125
    :cond_2
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$WorkerHandler;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$mdisposeSubsidyDeviceController(Lcom/qti/phone/ExtTelephonyServiceImpl;)V

    goto :goto_0

    .line 1128
    :cond_3
    const-class p1, Lcom/qti/phone/primarycard/PrimaryCardService;

    invoke-static {p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$smisServiceRunning(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1129
    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$WorkerHandler;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-static {p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$mstartPrimaryCardServiceIfRequired(Lcom/qti/phone/ExtTelephonyServiceImpl;)V

    .line 1131
    :cond_4
    iget-object p1, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$WorkerHandler;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-static {p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$mmakeQtiPrimaryImeiHandler(Lcom/qti/phone/ExtTelephonyServiceImpl;)V

    .line 1132
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyServiceImpl$WorkerHandler;->this$0:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->-$$Nest$minitSubsidyDeviceController(Lcom/qti/phone/ExtTelephonyServiceImpl;)V

    :goto_0
    return-void
.end method

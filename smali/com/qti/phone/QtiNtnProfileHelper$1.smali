.class Lcom/qti/phone/QtiNtnProfileHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiNtnProfileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiNtnProfileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiNtnProfileHelper;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiNtnProfileHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/qti/phone/QtiNtnProfileHelper$1;->this$0:Lcom/qti/phone/QtiNtnProfileHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QtiNtnProfileHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string p1, "com.android.action.enable_esim"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    const-string v1, "refNum"

    const/4 v2, 0x0

    const-string v3, "slotId"

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/qti/phone/QtiNtnProfileHelper$1;->this$0:Lcom/qti/phone/QtiNtnProfileHelper;

    invoke-static {p1}, Lcom/qti/phone/QtiNtnProfileHelper;->-$$Nest$fgetmHandler(Lcom/qti/phone/QtiNtnProfileHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object v4, p0, Lcom/qti/phone/QtiNtnProfileHelper$1;->this$0:Lcom/qti/phone/QtiNtnProfileHelper;

    invoke-static {v4}, Lcom/qti/phone/QtiNtnProfileHelper;->-$$Nest$fgetmHandler(Lcom/qti/phone/QtiNtnProfileHelper;)Landroid/os/Handler;

    move-result-object v4

    .line 79
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 80
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    .line 78
    invoke-virtual {v4, v0, v2, p2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 81
    :cond_0
    const-string p1, "com.android.action.disable_esim"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/qti/phone/QtiNtnProfileHelper$1;->this$0:Lcom/qti/phone/QtiNtnProfileHelper;

    invoke-static {p1}, Lcom/qti/phone/QtiNtnProfileHelper;->-$$Nest$fgetmHandler(Lcom/qti/phone/QtiNtnProfileHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object v4, p0, Lcom/qti/phone/QtiNtnProfileHelper$1;->this$0:Lcom/qti/phone/QtiNtnProfileHelper;

    invoke-static {v4}, Lcom/qti/phone/QtiNtnProfileHelper;->-$$Nest$fgetmHandler(Lcom/qti/phone/QtiNtnProfileHelper;)Landroid/os/Handler;

    move-result-object v4

    .line 83
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 84
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x3

    .line 82
    invoke-virtual {v4, v0, v2, p2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

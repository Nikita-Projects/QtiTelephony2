.class Lcom/xiaomi/internal/telephony_ext/MiRadioProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "MiRadioProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/internal/telephony_ext/MiRadioProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/internal/telephony_ext/MiRadioProxy;


# direct methods
.method constructor <init>(Lcom/xiaomi/internal/telephony_ext/MiRadioProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/xiaomi/internal/telephony_ext/MiRadioProxy$1;->this$0:Lcom/xiaomi/internal/telephony_ext/MiRadioProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 209
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    const-string p1, "state"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_AIRPLANE_MODE_CHANGED received, airplaneMode = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MiRadioProxy"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 213
    iget-object p0, p0, Lcom/xiaomi/internal/telephony_ext/MiRadioProxy$1;->this$0:Lcom/xiaomi/internal/telephony_ext/MiRadioProxy;

    invoke-virtual {p0}, Lcom/xiaomi/internal/telephony_ext/MiRadioProxy;->resetDelayNotifyParams()V

    :cond_0
    return-void
.end method

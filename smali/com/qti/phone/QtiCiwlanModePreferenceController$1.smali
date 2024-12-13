.class Lcom/qti/phone/QtiCiwlanModePreferenceController$1;
.super Ljava/lang/Object;
.source "QtiCiwlanModePreferenceController.java"

# interfaces
.implements Lcom/qti/extphone/ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiCiwlanModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiCiwlanModePreferenceController;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiCiwlanModePreferenceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController$1;->this$0:Lcom/qti/phone/QtiCiwlanModePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    .line 74
    const-string v0, "ExtTelephonyService connected"

    invoke-static {v0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->-$$Nest$smlogd(Ljava/lang/String;)V

    const/16 v0, 0x31

    .line 75
    filled-new-array {v0}, [I

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController$1;->this$0:Lcom/qti/phone/QtiCiwlanModePreferenceController;

    invoke-static {v1}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->-$$Nest$fgetmExtTelephonyManager(Lcom/qti/phone/QtiCiwlanModePreferenceController;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController$1;->this$0:Lcom/qti/phone/QtiCiwlanModePreferenceController;

    invoke-static {v3}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->-$$Nest$fgetmPackageName(Lcom/qti/phone/QtiCiwlanModePreferenceController;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/qti/extphone/ExtPhoneCallbackListener;

    invoke-direct {v4}, Lcom/qti/extphone/ExtPhoneCallbackListener;-><init>()V

    invoke-virtual {v2, v3, v4, v0}, Lcom/qti/extphone/ExtTelephonyManager;->registerCallbackWithEvents(Ljava/lang/String;Lcom/qti/extphone/ExtPhoneCallbackListener;[I)Lcom/qti/extphone/Client;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->-$$Nest$fputmClient(Lcom/qti/phone/QtiCiwlanModePreferenceController;Lcom/qti/extphone/Client;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController$1;->this$0:Lcom/qti/phone/QtiCiwlanModePreferenceController;

    invoke-static {v1}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->-$$Nest$fgetmClient(Lcom/qti/phone/QtiCiwlanModePreferenceController;)Lcom/qti/extphone/Client;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController$1;->this$0:Lcom/qti/phone/QtiCiwlanModePreferenceController;

    invoke-static {v0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->-$$Nest$fgetmExtTelephonyManager(Lcom/qti/phone/QtiCiwlanModePreferenceController;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->isFeatureSupported(I)Z

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController$1;->this$0:Lcom/qti/phone/QtiCiwlanModePreferenceController;

    invoke-static {v1}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->-$$Nest$fgetmContext(Lcom/qti/phone/QtiCiwlanModePreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CIWLAN_MODE_PREF_SUPPORT_KEY"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController$1;->this$0:Lcom/qti/phone/QtiCiwlanModePreferenceController;

    invoke-static {v0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->-$$Nest$mregisterReceivers(Lcom/qti/phone/QtiCiwlanModePreferenceController;)V

    .line 85
    iget-object p0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController$1;->this$0:Lcom/qti/phone/QtiCiwlanModePreferenceController;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-static {p0, v0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->-$$Nest$mgetModemPreference(Lcom/qti/phone/QtiCiwlanModePreferenceController;[I)V

    goto :goto_0

    .line 87
    :cond_0
    const-string p0, "C_IWLAN mode preference not supported"

    invoke-static {p0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->-$$Nest$smlogd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDisconnected()V
    .locals 1

    .line 93
    const-string v0, "ExtTelephonyService disconnected"

    invoke-static {v0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 94
    iget-object p0, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController$1;->this$0:Lcom/qti/phone/QtiCiwlanModePreferenceController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/qti/phone/QtiCiwlanModePreferenceController;->-$$Nest$fputmClient(Lcom/qti/phone/QtiCiwlanModePreferenceController;Lcom/qti/extphone/Client;)V

    return-void
.end method

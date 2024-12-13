.class Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;
.super Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;
.source "QtiRadioConfigAidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioConfigAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QtiRadioConfigIndicationAidl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiRadioConfigAidl;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiRadioConfigAidl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 466
    iput-object p1, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 474
    const-string p0, "84271754c99c2ecafdaee254427af1cba85b595e"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x5

    return p0
.end method

.method public onCiwlanCapabilityChanged(I)V
    .locals 3

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCiwlanCapabilityChanged: capability = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/extphone/Token;

    move-result-object p0

    new-instance v1, Lcom/qti/extphone/Status;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/qti/extphone/Status;-><init>(I)V

    const/4 v2, 0x0

    .line 535
    invoke-static {p1, v2}, Lcom/qti/phone/QtiRadioConfigUtils;->convertHalCiwlanCapability(II)Lcom/qti/phone/CiwlanCapability;

    move-result-object p1

    .line 534
    invoke-interface {v0, p0, v1, p1}, Lcom/qti/phone/IQtiRadioConfigConnectionCallback;->onCiwlanCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/phone/CiwlanCapability;)V

    return-void
.end method

.method public onDdsSwitchCapabilityChanged(Z)V
    .locals 3

    .line 549
    const-string v0, "QtiRadioConfigAidl"

    const-string v1, "onDdsSwitchCapabilityChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/extphone/Token;

    move-result-object p0

    new-instance v1, Lcom/qti/extphone/Status;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/qti/extphone/Status;-><init>(I)V

    invoke-interface {v0, p0, v1, p1}, Lcom/qti/phone/IQtiRadioConfigConnectionCallback;->onDdsSwitchCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    return-void
.end method

.method public onDdsSwitchCriteriaChanged(Z)V
    .locals 2

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDdsSwitchCriteriaChanged, telephonyDdsSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/extphone/Token;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/qti/phone/IQtiRadioConfigConnectionCallback;->onDdsSwitchCriteriaChanged(Lcom/qti/extphone/Token;Z)V

    return-void
.end method

.method public onDdsSwitchRecommendation(I)V
    .locals 2

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDdsSwitchRecommendation: recommendedSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/extphone/Token;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/qti/phone/IQtiRadioConfigConnectionCallback;->onDdsSwitchRecommendation(Lcom/qti/extphone/Token;I)V

    return-void
.end method

.method public onDualDataCapabilityChanged(Z)V
    .locals 3

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDualDataCapabilityChanged: capability = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/extphone/Token;

    move-result-object p0

    new-instance v1, Lcom/qti/extphone/Status;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/qti/extphone/Status;-><init>(I)V

    invoke-interface {v0, p0, v1, p1}, Lcom/qti/phone/IQtiRadioConfigConnectionCallback;->onDualDataCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    return-void
.end method

.method public onDualDataRecommendation(Lvendor/qti/hardware/radio/qtiradioconfig/DualDataRecommendation;)V
    .locals 2

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDualDataRecommendation: Sub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lvendor/qti/hardware/radio/qtiradioconfig/DualDataRecommendation;->sub:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lvendor/qti/hardware/radio/qtiradioconfig/DualDataRecommendation;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/extphone/Token;

    move-result-object p0

    .line 521
    invoke-static {p1}, Lcom/qti/phone/QtiRadioConfigUtils;->convertHalDualDataRecommendation(Lvendor/qti/hardware/radio/qtiradioconfig/DualDataRecommendation;)Lcom/qti/extphone/DualDataRecommendation;

    move-result-object p1

    .line 520
    invoke-interface {v0, p0, p1}, Lcom/qti/phone/IQtiRadioConfigConnectionCallback;->onDualDataRecommendation(Lcom/qti/extphone/Token;Lcom/qti/extphone/DualDataRecommendation;)V

    return-void
.end method

.method public onSecureModeStatusChange(Z)V
    .locals 2

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSecureModeStatusChange: enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigIndicationAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetUNSOL(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/extphone/Token;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/qti/phone/IQtiRadioConfigConnectionCallback;->onSecureModeStatusChange(Lcom/qti/extphone/Token;Z)V

    return-void
.end method

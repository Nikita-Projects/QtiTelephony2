.class Lcom/qti/phone/QtiRadioConfigProxy$1;
.super Ljava/lang/Object;
.source "QtiRadioConfigProxy.java"

# interfaces
.implements Lcom/qti/phone/IQtiRadioConfigConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioConfigProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiRadioConfigProxy;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiRadioConfigProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 390
    iput-object p1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecureModeStatusResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    .line 394
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioConfigProxy$Result;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 393
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getSimTypeInfoResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[Lvendor/qti/hardware/radio/qtiradioconfig/SimTypeInfo;)V
    .locals 3

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimTypeInfoResponse status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioConfigProxy$Result;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/4 p0, 0x4

    .line 416
    invoke-virtual {v1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 415
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCiwlanCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/phone/CiwlanCapability;)V
    .locals 3

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCiwlanCapabilityChanged CiwlanCapability = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0, p3}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fputmCiwlanCapability(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/phone/CiwlanCapability;)V

    .line 451
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioConfigProxy$Result;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/4 p0, 0x6

    .line 452
    invoke-virtual {v1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 451
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDdsSwitchCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    .line 458
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioConfigProxy$Result;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/16 p0, 0xa

    invoke-virtual {v1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 457
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDdsSwitchCriteriaChanged(Lcom/qti/extphone/Token;Z)V
    .locals 4

    .line 463
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    .line 465
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3, p2}, Lcom/qti/phone/QtiRadioConfigProxy$Result;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/16 p0, 0xb

    .line 464
    invoke-virtual {v1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 463
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDdsSwitchRecommendation(Lcom/qti/extphone/Token;I)V
    .locals 4

    .line 470
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    .line 472
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3, p2}, Lcom/qti/phone/QtiRadioConfigProxy$Result;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/16 p0, 0xc

    .line 471
    invoke-virtual {v1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 470
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDualDataCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmDualDataCapability(Lcom/qti/phone/QtiRadioConfigProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 429
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    .line 430
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/qti/phone/QtiRadioConfigProxy$Result;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/4 p0, 0x7

    invoke-virtual {v1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 429
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDualDataRecommendation(Lcom/qti/extphone/Token;Lcom/qti/extphone/DualDataRecommendation;)V
    .locals 4

    .line 442
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3, p2}, Lcom/qti/phone/QtiRadioConfigProxy$Result;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/16 p0, 0x9

    .line 443
    invoke-virtual {v1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 442
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSecureModeStatusChange(Lcom/qti/extphone/Token;Z)V
    .locals 4

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSecureModeStatusChange enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    .line 401
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3, p2}, Lcom/qti/phone/QtiRadioConfigProxy$Result;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/4 p0, 0x2

    invoke-virtual {v1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 400
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSendUserPreferenceForDataDuringVoiceCall(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 4

    .line 477
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/qti/phone/QtiRadioConfigProxy$Result;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/16 p0, 0xd

    .line 478
    invoke-virtual {v1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 477
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setDualDataUserPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 4

    .line 435
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/qti/phone/QtiRadioConfigProxy$Result;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/16 p0, 0x8

    .line 436
    invoke-virtual {v1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 435
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setMsimPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 4

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMsimPreferenceResponse status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/qti/phone/QtiRadioConfigProxy$Result;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/4 p0, 0x3

    .line 408
    invoke-virtual {v1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 407
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setSimTypeResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 4

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimTypeResponse status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigProxy;->-$$Nest$fgetmWorkerThreadHandler(Lcom/qti/phone/QtiRadioConfigProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qti/phone/QtiRadioConfigProxy$Result;

    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigProxy$1;->this$0:Lcom/qti/phone/QtiRadioConfigProxy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/qti/phone/QtiRadioConfigProxy$Result;-><init>(Lcom/qti/phone/QtiRadioConfigProxy;Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/4 p0, 0x5

    .line 423
    invoke-virtual {v1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 422
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

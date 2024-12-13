.class Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;
.super Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse$Stub;
.source "QtiRadioConfigAidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiRadioConfigAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QtiRadioConfigResponseAidl"
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

    .line 252
    iput-object p1, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCiwlanCapabilityResponse(Lvendor/qti/hardware/radio/RadioResponseInfo;I)V
    .locals 4

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCiwlanCapabilityResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " capability = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v2, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 408
    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->error:I

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigUtils;->convertHalErrorcode(I)Lcom/qti/extphone/Status;

    move-result-object v1

    .line 409
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    move-result-object v2

    iget v3, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->error:I

    .line 410
    invoke-static {p2, v3}, Lcom/qti/phone/QtiRadioConfigUtils;->convertHalCiwlanCapability(II)Lcom/qti/phone/CiwlanCapability;

    move-result-object p2

    .line 409
    invoke-interface {v2, v0, v1, p2}, Lcom/qti/phone/IQtiRadioConfigConnectionCallback;->onCiwlanCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/phone/CiwlanCapability;)V

    .line 411
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    iget p1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 413
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getCiwlanCapabilityResponse: No previous request found for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getDdsSwitchCapabilityResponse(Lvendor/qti/hardware/radio/RadioResponseInfo;Z)V
    .locals 3

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDdsSwitchCapabilityResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isCapable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v2, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 434
    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->error:I

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigUtils;->convertHalErrorcode(I)Lcom/qti/extphone/Status;

    move-result-object v1

    .line 435
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    move-result-object v2

    invoke-interface {v2, v0, v1, p2}, Lcom/qti/phone/IQtiRadioConfigConnectionCallback;->onDdsSwitchCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    .line 436
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    iget p1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 438
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getDdsSwitchCapabilityResponse: No previous request found for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getDualDataCapabilityResponse(Lvendor/qti/hardware/radio/RadioResponseInfo;Z)V
    .locals 3

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDualDataCapabilityResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " capability = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v2, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 366
    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->error:I

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigUtils;->convertHalErrorcode(I)Lcom/qti/extphone/Status;

    move-result-object v1

    .line 367
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    move-result-object v2

    invoke-interface {v2, v0, v1, p2}, Lcom/qti/phone/IQtiRadioConfigConnectionCallback;->onDualDataCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    .line 368
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    iget p1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 370
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getDualDataCapabilityResponse: No previous request found for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 260
    const-string p0, "84271754c99c2ecafdaee254427af1cba85b595e"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x5

    return p0
.end method

.method public getSecureModeStatusResponse(IIZ)V
    .locals 3

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSecureModeStatusResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 276
    invoke-static {p2}, Lcom/qti/phone/QtiRadioConfigUtils;->convertHalErrorcode(I)Lcom/qti/extphone/Status;

    move-result-object p2

    .line 277
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Lcom/qti/phone/IQtiRadioConfigConnectionCallback;->getSecureModeStatusResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V

    .line 278
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 280
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getSecureModeStatusResponse: No previous request found for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getSimTypeInfoResponse(II[Lvendor/qti/hardware/radio/qtiradioconfig/SimTypeInfo;)V
    .locals 5

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimTypeInfoResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 319
    invoke-static {p2}, Lcom/qti/phone/QtiRadioConfigUtils;->convertHalErrorcode(I)Lcom/qti/extphone/Status;

    move-result-object p2

    const/4 v2, 0x0

    .line 321
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_0

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimTypeInfo, current "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p3, v2

    iget v4, v4, Lvendor/qti/hardware/radio/qtiradioconfig/SimTypeInfo;->currentSimType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p3, v2

    iget v4, v4, Lvendor/qti/hardware/radio/qtiradioconfig/SimTypeInfo;->supportedSimTypes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Lcom/qti/phone/IQtiRadioConfigConnectionCallback;->getSimTypeInfoResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;[Lvendor/qti/hardware/radio/qtiradioconfig/SimTypeInfo;)V

    .line 326
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 328
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getSimTypeInfoResponse: No previous request found for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public sendUserPreferenceForDataDuringVoiceCallResponse(Lvendor/qti/hardware/radio/RadioResponseInfo;)V
    .locals 3

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendUserPreferenceForDataDuringVoiceCallResponse:  serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v2, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 456
    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->error:I

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigUtils;->convertHalErrorcode(I)Lcom/qti/extphone/Status;

    move-result-object v1

    .line 457
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/qti/phone/IQtiRadioConfigConnectionCallback;->onSendUserPreferenceForDataDuringVoiceCall(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    .line 458
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    iget p1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 460
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendUserPreferenceForDataDuringVoiceCallResponse: No previous request found for serial = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setDualDataUserPreferenceResponse(Lvendor/qti/hardware/radio/RadioResponseInfo;)V
    .locals 3

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDualDataUserPreferenceResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v2, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 386
    iget v1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->error:I

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigUtils;->convertHalErrorcode(I)Lcom/qti/extphone/Status;

    move-result-object v1

    .line 387
    iget-object v2, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v2}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/qti/phone/IQtiRadioConfigConnectionCallback;->setDualDataUserPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    .line 388
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    iget p1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 390
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDualDataUserPreferenceResponse: No previous request found for serial = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lvendor/qti/hardware/radio/RadioResponseInfo;->serial:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setMsimPreferenceResponse(II)V
    .locals 3

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMsimPreferenceResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 297
    invoke-static {p2}, Lcom/qti/phone/QtiRadioConfigUtils;->convertHalErrorcode(I)Lcom/qti/extphone/Status;

    move-result-object p2

    .line 298
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/qti/phone/IQtiRadioConfigConnectionCallback;->setMsimPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    .line 299
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 301
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setMsimPreferenceResponse: No previous request found for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSimTypeResponse(II)V
    .locals 3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimTypeResponse: serial = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioConfigAidl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/Token;

    .line 345
    invoke-static {p2}, Lcom/qti/phone/QtiRadioConfigUtils;->convertHalErrorcode(I)Lcom/qti/extphone/Status;

    move-result-object p2

    .line 346
    iget-object v1, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {v1}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmCallback(Lcom/qti/phone/QtiRadioConfigAidl;)Lcom/qti/phone/IQtiRadioConfigConnectionCallback;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/qti/phone/IQtiRadioConfigConnectionCallback;->setSimTypeResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V

    .line 347
    iget-object p0, p0, Lcom/qti/phone/QtiRadioConfigAidl$QtiRadioConfigResponseAidl;->this$0:Lcom/qti/phone/QtiRadioConfigAidl;

    invoke-static {p0}, Lcom/qti/phone/QtiRadioConfigAidl;->-$$Nest$fgetmInflightRequests(Lcom/qti/phone/QtiRadioConfigAidl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 349
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSimTypeResponse: No previous request found for serial = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

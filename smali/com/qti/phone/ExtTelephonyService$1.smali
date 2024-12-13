.class Lcom/qti/phone/ExtTelephonyService$1;
.super Lcom/qti/extphone/IExtPhone$Stub;
.source "ExtTelephonyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/ExtTelephonyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/ExtTelephonyService;


# direct methods
.method constructor <init>(Lcom/qti/phone/ExtTelephonyService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-direct {p0}, Lcom/qti/extphone/IExtPhone$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abortIncrementalScan(I)Z
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abortIncrementalScan slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "abortIncrementalScan"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 151
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->abortIncrementalScan(I)Z

    move-result p0

    return p0
.end method

.method public checkSimPinLockStatus(I)Z
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "checkSimPinLockStatus"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 391
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->checkSimPinLockStatus(I)Z

    move-result p0

    return p0
.end method

.method public disable5g(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "disable5g"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable5g slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->disable5g(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public enable5g(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "enable5g"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable5g slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->enable5g(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public enable5gOnly(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "enable5gOnly"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable5gOnly slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->enable5gOnly(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public enableEndc(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "enableEndc"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableEndc slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->enableEndc(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getAirplaneMode()Z
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getAirplaneMode"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 385
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getAirplaneMode()Z

    move-result p0

    return p0
.end method

.method public getCellularRoamingPreference(I)Lcom/qti/extphone/CellularRoamingPreference;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getCellularRoamingPreference(I)Lcom/qti/extphone/CellularRoamingPreference;

    move-result-object p0

    return-object p0
.end method

.method public getCiwlanConfig(I)Lcom/qti/extphone/CiwlanConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getCiwlanConfig"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 487
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getCiwlanConfig(I)Lcom/qti/extphone/CiwlanConfig;

    move-result-object p0

    return-object p0
.end method

.method public getCiwlanModeUserPreference(I)Lcom/qti/extphone/CiwlanConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 520
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getCiwlanModeUserPreference(I)Lcom/qti/extphone/CiwlanConfig;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPrimaryCardSlotId()I
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getCurrentPrimaryCardSlotId"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 116
    const-string v0, "ExtTelephonyService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getCurrentPrimaryCardSlotId()I

    move-result p0

    return p0
.end method

.method public getCurrentSimType()[Lcom/qti/extphone/QtiSimType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getCurrentSimType"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 468
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getCurrentSimType()[Lcom/qti/extphone/QtiSimType;

    move-result-object p0

    return-object p0
.end method

.method public getDdsSwitchCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getDdsSwitchCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getDdsSwitchConfigCapability(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getDdsSwitchConfigCapability(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getDualDataCapability()Z
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getDualDataCapability()Z

    move-result p0

    return p0
.end method

.method public getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/qti/extphone/Client;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFacilityLockForApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    .line 350
    invoke-virtual/range {v0 .. v7}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/qti/extphone/Client;)V

    return-void
.end method

.method public getImeiInfo()[Lcom/qti/extphone/QtiImeiInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getImeiInfo"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 357
    const-string v0, "ExtTelephonyService"

    const-string v1, "getImeiInfo: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getImeiInfo()[Lcom/qti/extphone/QtiImeiInfo;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkSelectionMode(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getNetworkSelectionMode"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkSelectionMode slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getNetworkSelectionMode(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getPrimaryCarrierSlotId()I
    .locals 1

    .line 135
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v0, "getPrimaryCarrierSlotId"

    invoke-static {p0, v0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public getPropertyValueBool(Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getPropertyValueBool"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyValueBool property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getPropertyValueInt(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getPropertyValueInt"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyValueInt property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getPropertyValueString"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyValueString property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQosParameters(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getQosParameters"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 456
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getQosParameters(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getQtiRadioCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getQtiRadioCapability"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getQtiRadioCapability slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getQtiRadioCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getSecureModeStatus(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getSecureModeStatus"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 444
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getSecureModeStatus(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public getSimPersoUnlockStatus(I)Lcom/qti/extphone/QtiPersoUnlockStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getSimPersoUnlockStatus(I)Lcom/qti/extphone/QtiPersoUnlockStatus;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedSimTypes()[Lcom/qti/extphone/QtiSimType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "getSupportedSimTypes"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 474
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->getSupportedSimTypes()[Lcom/qti/extphone/QtiSimType;

    move-result-object p0

    return-object p0
.end method

.method public isCiwlanAvailable(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isCiwlanAvailable(I)Z

    move-result p0

    return p0
.end method

.method public isEpdgOverCellularDataSupported(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isEpdgOverCellularDataSupported(I)Z

    move-result p0

    return p0
.end method

.method public isFeatureSupported(I)Z
    .locals 2

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFeatureSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isFeatureSupported(I)Z

    move-result p0

    return p0
.end method

.method public isPrimaryCarrierSlotId(I)Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "isPrimaryCarrierSlotId"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPrimaryCarrierSlotId slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isPrimaryCarrierSlotId(I)Z

    move-result p0

    return p0
.end method

.method public isSMSPromptEnabled()Z
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "isSMSPromptEnabled"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 157
    const-string v0, "ExtTelephonyService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isSMSPromptEnabled()Z

    move-result p0

    return p0
.end method

.method public isSmartDdsSwitchFeatureAvailable()Z
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "isSmartDdsSwitchFeatureAvailable"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {v0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isSmartDdsSwitchFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    .line 366
    invoke-virtual {p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->isSubsidyFeatureEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public performIncrementalScan(I)Z
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performIncrementalScan slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "performIncrementalScan"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 144
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->performIncrementalScan(I)Z

    move-result p0

    return p0
.end method

.method public query5gConfigInfo(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "query5gConfigInfo"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query5gConfigInfo slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->query5gConfigInfo(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public query5gStatus(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "query5gStatus"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query5gStatus slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->query5gStatus(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryCallForwardStatus(IIILjava/lang/String;ZLcom/qti/extphone/Client;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallForwardStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryCallForwardStatus(IIILjava/lang/String;ZLcom/qti/extphone/Client;)V

    return-void
.end method

.method public queryEndcStatus(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "queryEndcStatus"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryEndcStatus slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryEndcStatus(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrBearerAllocation(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "queryNrBearerAllocation"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrBearerAllocation slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryNrBearerAllocation(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrConfig(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "queryNrConfig"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrConfig slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryNrConfig(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrDcParam(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "queryNrDcParam"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrDcParam slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryNrDcParam(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrIcon(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "queryNrIcon"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 537
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryNrIcon(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrIconType(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "queryNrIconType"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrIconType slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryNrIconType(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryNrSignalStrength(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "queryNrSignalStrength"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNrSignalStrength slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryNrSignalStrength(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public queryUpperLayerIndInfo(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "queryUpperLayerIndInfo"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryUpperLayerIndInfo slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->queryUpperLayerIndInfo(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public registerCallback(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;)Lcom/qti/extphone/Client;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "registerCallback"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 545
    filled-new-array {v0}, [I

    move-result-object v0

    .line 547
    invoke-virtual {p0, p1, p2, v0}, Lcom/qti/phone/ExtTelephonyService$1;->registerCallbackWithEvents(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;[I)Lcom/qti/extphone/Client;

    move-result-object p0

    return-object p0
.end method

.method public registerCallbackWithEvents(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;[I)Lcom/qti/extphone/Client;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "registerCallbackWithEvents"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallbackWithEvents packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->registerCallbackWithEvents(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;[I)Lcom/qti/extphone/Client;

    move-result-object p0

    return-object p0
.end method

.method public registerQtiRadioConfigCallback(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;)Lcom/qti/extphone/Client;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "registerQtiRadioConfigCallback"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerQtiRadioConfigCallback packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 571
    filled-new-array {v0}, [I

    move-result-object v0

    .line 573
    invoke-virtual {p0, p1, p2, v0}, Lcom/qti/phone/ExtTelephonyService$1;->registerCallbackWithEvents(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;[I)Lcom/qti/extphone/Client;

    move-result-object p0

    return-object p0
.end method

.method public sendCdmaSms(I[BZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "sendCdmaSms"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCdmaSms slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qti/phone/ExtTelephonyServiceImpl;->sendCdmaSms(I[BZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public sendUserPreferenceConfigForDataDuringVoiceCall([ZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->sendUserPreferenceConfigForDataDuringVoiceCall([ZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public sendUserPreferenceForDataDuringVoiceCall(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->sendUserPreferenceForDataDuringVoiceCall(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setAirplaneMode(Z)Z
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "setAirplaneMode"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 379
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setAirplaneMode(Z)Z

    move-result p0

    return p0
.end method

.method public setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "setCarrierInfoForImsiEncryption"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 333
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setCellularRoamingPreference(Lcom/qti/extphone/Client;ILcom/qti/extphone/CellularRoamingPreference;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setCellularRoamingPreference(Lcom/qti/extphone/Client;ILcom/qti/extphone/CellularRoamingPreference;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setCiwlanModeUserPreference(ILcom/qti/extphone/Client;Lcom/qti/extphone/CiwlanConfig;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setCiwlanModeUserPreference(ILcom/qti/extphone/Client;Lcom/qti/extphone/CiwlanConfig;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setDualDataUserPreference(Lcom/qti/extphone/Client;Z)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setDualDataUserPreference(Lcom/qti/extphone/Client;Z)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setMsimPreference(Lcom/qti/extphone/Client;Lcom/qti/extphone/MsimPreference;)Lcom/qti/extphone/Token;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setMsimPreference(Lcom/qti/extphone/Client;Lcom/qti/extphone/MsimPreference;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setNetworkSelectionModeAutomatic(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "setNetworkSelectionModeAutomatic"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetworkSelectionModeAutomatic slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setNetworkSelectionModeAutomatic(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setNetworkSelectionModeManual(ILcom/qti/extphone/QtiSetNetworkSelectionMode;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "setNetworkSelectionModeManual"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetworkSelectionModeManual slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setNetworkSelectionModeManual(ILcom/qti/extphone/QtiSetNetworkSelectionMode;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setNrConfig(ILcom/qti/extphone/NrConfig;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "setNrConfig"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNrConfig slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setNrConfig(ILcom/qti/extphone/NrConfig;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setPrimaryCardOnSlot(I)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string p1, "setPrimaryCardOnSlot"

    invoke-static {p0, p1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    return-void
.end method

.method public setSMSPromptEnabled(Z)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "setSMSPromptEnabled"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setSMSPromptEnabled(Z)V

    return-void
.end method

.method public setSimType(Lcom/qti/extphone/Client;[Lcom/qti/extphone/QtiSimType;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "setSimType"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 480
    const-string v0, "ExtTelephonyService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setSimType(Lcom/qti/extphone/Client;[Lcom/qti/extphone/QtiSimType;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public setSmartDdsSwitchToggle(ZLcom/qti/extphone/Client;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "setSmartDdsSwitchToggle"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 373
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->setSmartDdsSwitchToggle(ZLcom/qti/extphone/Client;)V

    return-void
.end method

.method public startNetworkScan(ILandroid/telephony/NetworkScanRequest;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "startNetworkScan"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNetworkScan slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->startNetworkScan(ILandroid/telephony/NetworkScanRequest;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public stopNetworkScan(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "stopNetworkScan"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopNetworkScan slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->stopNetworkScan(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lcom/qti/extphone/IDepersoResCallback;I)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "supplyIccDepersonalization"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supplyIccDepersonalization phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qti/phone/ExtTelephonyServiceImpl;->supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lcom/qti/extphone/IDepersoResCallback;I)V

    return-void
.end method

.method public toggleSimPinLock(IZLjava/lang/String;)Z
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "toggleSimPinLock"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 397
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->toggleSimPinLock(IZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public unRegisterCallback(Lcom/qti/extphone/IExtPhoneCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "unRegisterCallback"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 562
    const-string v0, "ExtTelephonyService"

    const-string v1, "unRegisterCallback...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->unregisterCallback(Lcom/qti/extphone/IExtPhoneCallback;)V

    return-void
.end method

.method public unregisterQtiRadioConfigCallback(Lcom/qti/extphone/IExtPhoneCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "unregisterQtiRadioConfigCallback"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 580
    const-string v0, "ExtTelephonyService"

    const-string v1, "unregisterQtiRadioConfigCallback..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/qti/phone/ExtTelephonyServiceImpl;->unregisterCallback(Lcom/qti/extphone/IExtPhoneCallback;)V

    return-void
.end method

.method public verifySimPin(ILjava/lang/String;)Z
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "verifySimPin"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 403
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/qti/phone/ExtTelephonyServiceImpl;->verifySimPin(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public verifySimPukChangePin(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    const-string v1, "verifySimPukChangePin"

    invoke-static {v0, v1}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V

    .line 409
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService$1;->this$0:Lcom/qti/phone/ExtTelephonyService;

    invoke-static {p0}, Lcom/qti/phone/ExtTelephonyService;->-$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->verifySimPukChangePin(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.class public Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;
.super Ljava/lang/Object;
.source "EsimOsUpdateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EuiccOSInfo"
.end annotation


# instance fields
.field binaryVersion:I

.field currentTransactionId:I

.field itlState:I

.field itlVersion:Ljava/lang/String;

.field ongoingTransactionId:I

.field osVersion:I

.field final synthetic this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;


# direct methods
.method public constructor <init>(Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 442
    iput-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinaryVersion()I
    .locals 0

    .line 490
    iget p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->binaryVersion:I

    return p0
.end method

.method public getCurrentTransactionId()I
    .locals 0

    .line 450
    iget p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->currentTransactionId:I

    return p0
.end method

.method public getItlState()I
    .locals 0

    .line 466
    iget p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->itlState:I

    return p0
.end method

.method public getOngoingTransactionId()I
    .locals 0

    .line 458
    iget p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->ongoingTransactionId:I

    return p0
.end method

.method public setBinaryVersion(I)V
    .locals 0

    .line 486
    iput p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->binaryVersion:I

    return-void
.end method

.method public setCurrentTransactionId(I)V
    .locals 0

    .line 446
    iput p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->currentTransactionId:I

    return-void
.end method

.method public setItlState(I)V
    .locals 0

    .line 462
    iput p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->itlState:I

    return-void
.end method

.method public setItlVersion(Ljava/lang/String;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->itlVersion:Ljava/lang/String;

    return-void
.end method

.method public setOngoingTransactionId(I)V
    .locals 0

    .line 454
    iput p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->ongoingTransactionId:I

    return-void
.end method

.method public setOsVersion(I)V
    .locals 0

    .line 478
    iput p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->osVersion:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EuiccOSInfo : currentTxId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->currentTransactionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ongoingTxId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->ongoingTransactionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", itlState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->itlState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", itlVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->itlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", osVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->osVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", binaryVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateUtils$EuiccOSInfo;->binaryVersion:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

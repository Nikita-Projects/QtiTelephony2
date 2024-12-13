.class Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;
.super Ljava/lang/Object;
.source "EsimOsUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "APDUParams"
.end annotation


# instance fields
.field cla:I

.field data:Ljava/lang/String;

.field ins:I

.field lc:I

.field p1:I

.field p2:I

.field final synthetic this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;


# direct methods
.method public constructor <init>(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 528
    iput-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->this$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    const/4 v1, 0x2

    .line 532
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->cla:I

    const/4 p1, 0x4

    .line 533
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->ins:I

    const/4 v1, 0x6

    .line 534
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->p1:I

    const/16 p1, 0x8

    .line 535
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->p2:I

    .line 536
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->lc:I

    .line 537
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->data:Ljava/lang/String;

    return-void

    .line 530
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Data length must be 10"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCla()I
    .locals 0

    .line 541
    iget p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->cla:I

    return p0
.end method

.method public getData()Ljava/lang/String;
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->data:Ljava/lang/String;

    return-object p0
.end method

.method public getIns()I
    .locals 0

    .line 545
    iget p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->ins:I

    return p0
.end method

.method public getLc()I
    .locals 0

    .line 557
    iget p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->lc:I

    return p0
.end method

.method public getP1()I
    .locals 0

    .line 549
    iget p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->p1:I

    return p0
.end method

.method public getP2()I
    .locals 0

    .line 553
    iget p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$APDUParams;->p2:I

    return p0
.end method

.class public final Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;
.super Ljava/lang/Object;
.source "QosSession.java"


# instance fields
.field public qos:Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

.field public qosFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;",
            ">;"
        }
    .end annotation
.end field

.field public qosSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qosSessionId:I

    .line 12
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qos:Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qosFilters:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 26
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;

    if-eq v2, v3, :cond_2

    return v1

    .line 29
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;

    .line 30
    iget v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qosSessionId:I

    iget v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qosSessionId:I

    if-eq v2, v3, :cond_3

    return v1

    .line 33
    :cond_3
    iget-object v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qos:Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    iget-object v3, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qos:Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 36
    :cond_4
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qosFilters:Ljava/util/ArrayList;

    iget-object p1, p1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qosFilters:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 44
    iget v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qosSessionId:I

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qos:Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    .line 46
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qosFilters:Ljava/util/ArrayList;

    .line 47
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 44
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 92
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qosSessionId:I

    .line 93
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qos:Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    const-wide/16 v1, 0x4

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x20

    add-long v7, p3, v0

    const-wide/16 v0, 0x28

    add-long/2addr p3, v0

    .line 95
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p3

    mul-int/lit8 p4, p3, 0x58

    int-to-long v3, p4

    .line 97
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const/4 v9, 0x1

    move-object v2, p1

    .line 96
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p2

    .line 100
    iget-object p4, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qosFilters:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    .line 102
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;-><init>()V

    mul-int/lit8 v1, p4, 0x58

    int-to-long v1, v1

    .line 103
    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 104
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qosFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ".qosSessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qosSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", .qos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qos:Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ", .qosFilters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qosFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;
.super Ljava/lang/Object;
.source "QtiCellInfoRatSpecificInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_tag:I

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3

    .line 252
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getTag()I

    move-result p1

    invoke-direct {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_tagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is available."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _set(ILjava/lang/Object;)V
    .locals 0

    .line 270
    iput p1, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_tag:I

    .line 271
    iput-object p2, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_5

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    .line 264
    const-string p0, "cdma"

    return-object p0

    .line 266
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 263
    :cond_1
    const-string p0, "nr"

    return-object p0

    .line 262
    :cond_2
    const-string p0, "lte"

    return-object p0

    .line 261
    :cond_3
    const-string p0, "tdscdma"

    return-object p0

    .line 260
    :cond_4
    const-string p0, "wcdma"

    return-object p0

    .line 259
    :cond_5
    const-string p0, "gsm"

    return-object p0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 233
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 234
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 209
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getCdma()Lvendor/qti/hardware/radio/qtiradio/CellInfoCdma;

    move-result-object v0

    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getNr()Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoNr;

    move-result-object v0

    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getLte()Lvendor/qti/hardware/radio/qtiradio/CellInfoLte;

    move-result-object v0

    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getTdscdma()Lvendor/qti/hardware/radio/qtiradio/CellInfoTdscdma;

    move-result-object v0

    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    .line 214
    :cond_4
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getWcdma()Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;

    move-result-object v0

    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    .line 211
    :cond_5
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getGsm()Lvendor/qti/hardware/radio/qtiradio/CellInfoGsm;

    move-result-object v0

    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getCdma()Lvendor/qti/hardware/radio/qtiradio/CellInfoCdma;
    .locals 1

    const/4 v0, 0x5

    .line 119
    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_assertTag(I)V

    .line 120
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoCdma;

    return-object p0
.end method

.method public getGsm()Lvendor/qti/hardware/radio/qtiradio/CellInfoGsm;
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_assertTag(I)V

    .line 45
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoGsm;

    return-object p0
.end method

.method public getLte()Lvendor/qti/hardware/radio/qtiradio/CellInfoLte;
    .locals 1

    const/4 v0, 0x3

    .line 89
    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_assertTag(I)V

    .line 90
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoLte;

    return-object p0
.end method

.method public getNr()Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoNr;
    .locals 1

    const/4 v0, 0x4

    .line 104
    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_assertTag(I)V

    .line 105
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoNr;

    return-object p0
.end method

.method public final getStability()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getTag()I
    .locals 0

    .line 34
    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_tag:I

    return p0
.end method

.method public getTdscdma()Lvendor/qti/hardware/radio/qtiradio/CellInfoTdscdma;
    .locals 1

    const/4 v0, 0x2

    .line 74
    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_assertTag(I)V

    .line 75
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoTdscdma;

    return-object p0
.end method

.method public getWcdma()Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;
    .locals 1

    const/4 v0, 0x1

    .line 59
    invoke-direct {p0, v0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_assertTag(I)V

    .line 60
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_value:Ljava/lang/Object;

    check-cast p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 199
    sget-object v1, Lvendor/qti/hardware/radio/qtiradio/CellInfoCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/CellInfoCdma;

    .line 200
    invoke-direct {p0, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void

    .line 203
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "union: unknown tag: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 194
    :cond_1
    sget-object v1, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoNr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoNr;

    .line 195
    invoke-direct {p0, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void

    .line 189
    :cond_2
    sget-object v1, Lvendor/qti/hardware/radio/qtiradio/CellInfoLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/CellInfoLte;

    .line 190
    invoke-direct {p0, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void

    .line 184
    :cond_3
    sget-object v1, Lvendor/qti/hardware/radio/qtiradio/CellInfoTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/CellInfoTdscdma;

    .line 185
    invoke-direct {p0, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void

    .line 179
    :cond_4
    sget-object v1, Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;

    .line 180
    invoke-direct {p0, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void

    .line 174
    :cond_5
    sget-object v1, Lvendor/qti/hardware/radio/qtiradio/CellInfoGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/CellInfoGsm;

    .line 175
    invoke-direct {p0, v0, p1}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 241
    iget v0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_tag:I

    const-string v1, ")"

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QtiCellInfoRatSpecificInfo.cdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getCdma()Lvendor/qti/hardware/radio/qtiradio/CellInfoCdma;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_tag:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QtiCellInfoRatSpecificInfo.nr("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getNr()Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoNr;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 245
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QtiCellInfoRatSpecificInfo.lte("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getLte()Lvendor/qti/hardware/radio/qtiradio/CellInfoLte;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 244
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QtiCellInfoRatSpecificInfo.tdscdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getTdscdma()Lvendor/qti/hardware/radio/qtiradio/CellInfoTdscdma;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 243
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QtiCellInfoRatSpecificInfo.wcdma("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getWcdma()Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 242
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QtiCellInfoRatSpecificInfo.gsm("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getGsm()Lvendor/qti/hardware/radio/qtiradio/CellInfoGsm;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 145
    iget v0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->_tag:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getCdma()Lvendor/qti/hardware/radio/qtiradio/CellInfoCdma;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getNr()Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoNr;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getLte()Lvendor/qti/hardware/radio/qtiradio/CellInfoLte;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getTdscdma()Lvendor/qti/hardware/radio/qtiradio/CellInfoTdscdma;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 151
    :cond_4
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getWcdma()Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 148
    :cond_5
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getGsm()Lvendor/qti/hardware/radio/qtiradio/CellInfoGsm;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :goto_0
    return-void
.end method

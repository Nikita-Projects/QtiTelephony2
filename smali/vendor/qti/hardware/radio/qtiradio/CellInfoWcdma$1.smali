.class Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma$1;
.super Ljava/lang/Object;
.source "CellInfoWcdma.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;
    .locals 0

    .line 15
    new-instance p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;

    invoke-direct {p0}, Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma$1;->newArray(I)[Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;
    .locals 0

    .line 21
    new-array p0, p1, [Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;

    return-object p0
.end method
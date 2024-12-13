.class public abstract Lvendor/qti/hardware/data/dynamicddsaidlservice/IToken$Stub;
.super Landroid/os/Binder;
.source "IToken.java"

# interfaces
.implements Lvendor/qti/hardware/data/dynamicddsaidlservice/IToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/data/dynamicddsaidlservice/IToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 40
    sget-object v0, Lvendor/qti/hardware/data/dynamicddsaidlservice/IToken;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    sget-object v0, Lvendor/qti/hardware/data/dynamicddsaidlservice/IToken;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    .line 65
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_0
    const v0, 0xffffff

    if-ne p1, v0, :cond_1

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-interface {p0}, Lvendor/qti/hardware/data/dynamicddsaidlservice/IToken;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_1
    const v0, 0xfffffe

    if-ne p1, v0, :cond_2

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-interface {p0}, Lvendor/qti/hardware/data/dynamicddsaidlservice/IToken;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 82
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method

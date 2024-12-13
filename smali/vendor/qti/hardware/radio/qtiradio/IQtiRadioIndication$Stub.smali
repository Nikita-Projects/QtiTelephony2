.class public abstract Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication$Stub;
.super Landroid/os/Binder;
.source "IQtiRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 90
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 91
    sget-object v0, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->DESCRIPTOR:Ljava/lang/String;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    sget-object v0, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 116
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 119
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-interface {p0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v0, 0xfffffe

    if-ne p1, v0, :cond_3

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-interface {p0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 275
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 266
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onDisableProfileReq(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onEnableProfileReq(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 248
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onGetAllEsimProfilesReq(I)V

    goto/16 :goto_0

    .line 240
    :pswitch_3
    sget-object p1, Lvendor/qti/hardware/radio/qtiradio/NrIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/NrIcon;

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onNrIconChange(Lvendor/qti/hardware/radio/qtiradio/NrIcon;)V

    goto/16 :goto_0

    .line 232
    :pswitch_4
    sget-object p1, Lvendor/qti/hardware/radio/qtiradio/CiwlanConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/CiwlanConfig;

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onCiwlanConfigChange(Lvendor/qti/hardware/radio/qtiradio/CiwlanConfig;)V

    goto/16 :goto_0

    .line 224
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onCiwlanAvailable(Z)V

    goto/16 :goto_0

    .line 216
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onSimPersoUnlockStatusChange(I)V

    goto/16 :goto_0

    .line 208
    :pswitch_7
    sget-object p1, Lvendor/qti/hardware/radio/qtiradio/QtiNetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/QtiNetworkScanResult;

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->networkScanResult(Lvendor/qti/hardware/radio/qtiradio/QtiNetworkScanResult;)V

    goto :goto_0

    .line 198
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onMcfgRefresh(II)V

    goto :goto_0

    .line 190
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onEpdgOverCellularDataSupported(Z)V

    goto :goto_0

    .line 182
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-interface {p0, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onDataDeactivateDelayTime(J)V

    goto :goto_0

    .line 174
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onDdsSwitchRecommendation(I)V

    goto :goto_0

    .line 166
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onDdsSwitchCriteriaChange(Z)V

    goto :goto_0

    .line 160
    :pswitch_d
    invoke-interface {p0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onDdsSwitchCapabilityChange()V

    goto :goto_0

    .line 153
    :pswitch_e
    sget-object p1, Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onImeiChange(Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;)V

    goto :goto_0

    .line 145
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onNrConfigChange(I)V

    goto :goto_0

    .line 137
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-interface {p0, p1}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioIndication;->onNrIconTypeChange(I)V

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

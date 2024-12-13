.class public abstract Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse$Stub;
.super Landroid/os/Binder;
.source "IQtiRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 108
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 109
    sget-object v0, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->DESCRIPTOR:Ljava/lang/String;

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

    .line 132
    sget-object v0, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 134
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 137
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-interface {p0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v0, 0xfffffe

    if-ne p1, v0, :cond_3

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-interface {p0}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 408
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 399
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->notifyDisableProfileStatusResponse(II)V

    goto/16 :goto_0

    .line 389
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->notifyEnableProfileStatusResponse(II)V

    goto/16 :goto_0

    .line 379
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->sendAllEsimProfilesResponse(II)V

    goto/16 :goto_0

    .line 367
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 371
    sget-object p4, Lvendor/qti/hardware/radio/qtiradio/NrIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/qtiradio/NrIcon;

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->onNrIconResponse(IILvendor/qti/hardware/radio/qtiradio/NrIcon;)V

    goto/16 :goto_0

    .line 357
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->setCiwlanModeUserPreferenceResponse(II)V

    goto/16 :goto_0

    .line 347
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->setCellularRoamingPreferenceResponse(II)V

    goto/16 :goto_0

    .line 337
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->stopNetworkScanResponse(II)V

    goto/16 :goto_0

    .line 327
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->startNetworkScanResponse(II)V

    goto/16 :goto_0

    .line 317
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->setNetworkSelectionModeManualResponse(II)V

    goto/16 :goto_0

    .line 307
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->setNetworkSelectionModeAutomaticResponse(II)V

    goto/16 :goto_0

    .line 295
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 299
    sget-object p4, Lvendor/qti/hardware/radio/qtiradio/NetworkSelectionMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/qtiradio/NetworkSelectionMode;

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->getNetworkSelectionModeResponse(IILvendor/qti/hardware/radio/qtiradio/NetworkSelectionMode;)V

    goto/16 :goto_0

    .line 285
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->setNrUltraWidebandIconConfigResponse(II)V

    goto/16 :goto_0

    .line 275
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-interface {p0, p1, p3}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->sendUserPreferenceForDataDuringVoiceCallResponse(II)V

    goto/16 :goto_0

    .line 263
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->getDdsSwitchCapabilityResponse(IIZ)V

    goto/16 :goto_0

    .line 251
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 255
    sget-object p4, Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lvendor/qti/hardware/radio/qtiradio/ImeiInfo;

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->getImeiResponse(IILvendor/qti/hardware/radio/qtiradio/ImeiInfo;)V

    goto/16 :goto_0

    .line 239
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->getFacilityLockForAppResponse(III)V

    goto/16 :goto_0

    .line 227
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 231
    sget-object p4, Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->getCallForwardStatusResponse(II[Lvendor/qti/hardware/radio/qtiradio/CallForwardInfo;)V

    goto :goto_0

    .line 215
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->getQtiRadioCapabilityResponse(III)V

    goto :goto_0

    .line 203
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->onNrConfigResponse(III)V

    goto :goto_0

    .line 191
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->setNrConfigResponse(III)V

    goto :goto_0

    .line 179
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->onEndcStatusResponse(III)V

    goto :goto_0

    .line 167
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->onEnableEndcResponse(III)V

    goto :goto_0

    .line 155
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-interface {p0, p1, p3, p4}, Lvendor/qti/hardware/radio/qtiradio/IQtiRadioResponse;->onNrIconTypeResponse(III)V

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

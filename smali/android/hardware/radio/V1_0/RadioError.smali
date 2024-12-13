.class public final Landroid/hardware/radio/V1_0/RadioError;
.super Ljava/lang/Object;
.source "RadioError.java"


# direct methods
.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 91
    const-string p0, "NONE"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 94
    const-string p0, "RADIO_NOT_AVAILABLE"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 97
    const-string p0, "GENERIC_FAILURE"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 100
    const-string p0, "PASSWORD_INCORRECT"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 103
    const-string p0, "SIM_PIN2"

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 106
    const-string p0, "SIM_PUK2"

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 109
    const-string p0, "REQUEST_NOT_SUPPORTED"

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 112
    const-string p0, "CANCELLED"

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 115
    const-string p0, "OP_NOT_ALLOWED_DURING_VOICE_CALL"

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 118
    const-string p0, "OP_NOT_ALLOWED_BEFORE_REG_TO_NW"

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 121
    const-string p0, "SMS_SEND_FAIL_RETRY"

    return-object p0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 124
    const-string p0, "SIM_ABSENT"

    return-object p0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 127
    const-string p0, "SUBSCRIPTION_NOT_AVAILABLE"

    return-object p0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 130
    const-string p0, "MODE_NOT_SUPPORTED"

    return-object p0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 133
    const-string p0, "FDN_CHECK_FAILURE"

    return-object p0

    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 136
    const-string p0, "ILLEGAL_SIM_OR_ME"

    return-object p0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 139
    const-string p0, "MISSING_RESOURCE"

    return-object p0

    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 142
    const-string p0, "NO_SUCH_ELEMENT"

    return-object p0

    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 145
    const-string p0, "DIAL_MODIFIED_TO_USSD"

    return-object p0

    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 148
    const-string p0, "DIAL_MODIFIED_TO_SS"

    return-object p0

    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    .line 151
    const-string p0, "DIAL_MODIFIED_TO_DIAL"

    return-object p0

    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    .line 154
    const-string p0, "USSD_MODIFIED_TO_DIAL"

    return-object p0

    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    .line 157
    const-string p0, "USSD_MODIFIED_TO_SS"

    return-object p0

    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    .line 160
    const-string p0, "USSD_MODIFIED_TO_USSD"

    return-object p0

    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    .line 163
    const-string p0, "SS_MODIFIED_TO_DIAL"

    return-object p0

    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    .line 166
    const-string p0, "SS_MODIFIED_TO_USSD"

    return-object p0

    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    .line 169
    const-string p0, "SUBSCRIPTION_NOT_SUPPORTED"

    return-object p0

    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    .line 172
    const-string p0, "SS_MODIFIED_TO_SS"

    return-object p0

    :cond_1b
    const/16 v0, 0x24

    if-ne p0, v0, :cond_1c

    .line 175
    const-string p0, "LCE_NOT_SUPPORTED"

    return-object p0

    :cond_1c
    const/16 v0, 0x25

    if-ne p0, v0, :cond_1d

    .line 178
    const-string p0, "NO_MEMORY"

    return-object p0

    :cond_1d
    const/16 v0, 0x26

    if-ne p0, v0, :cond_1e

    .line 181
    const-string p0, "INTERNAL_ERR"

    return-object p0

    :cond_1e
    const/16 v0, 0x27

    if-ne p0, v0, :cond_1f

    .line 184
    const-string p0, "SYSTEM_ERR"

    return-object p0

    :cond_1f
    const/16 v0, 0x28

    if-ne p0, v0, :cond_20

    .line 187
    const-string p0, "MODEM_ERR"

    return-object p0

    :cond_20
    const/16 v0, 0x29

    if-ne p0, v0, :cond_21

    .line 190
    const-string p0, "INVALID_STATE"

    return-object p0

    :cond_21
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_22

    .line 193
    const-string p0, "NO_RESOURCES"

    return-object p0

    :cond_22
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_23

    .line 196
    const-string p0, "SIM_ERR"

    return-object p0

    :cond_23
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_24

    .line 199
    const-string p0, "INVALID_ARGUMENTS"

    return-object p0

    :cond_24
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_25

    .line 202
    const-string p0, "INVALID_SIM_STATE"

    return-object p0

    :cond_25
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_26

    .line 205
    const-string p0, "INVALID_MODEM_STATE"

    return-object p0

    :cond_26
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_27

    .line 208
    const-string p0, "INVALID_CALL_ID"

    return-object p0

    :cond_27
    const/16 v0, 0x30

    if-ne p0, v0, :cond_28

    .line 211
    const-string p0, "NO_SMS_TO_ACK"

    return-object p0

    :cond_28
    const/16 v0, 0x31

    if-ne p0, v0, :cond_29

    .line 214
    const-string p0, "NETWORK_ERR"

    return-object p0

    :cond_29
    const/16 v0, 0x32

    if-ne p0, v0, :cond_2a

    .line 217
    const-string p0, "REQUEST_RATE_LIMITED"

    return-object p0

    :cond_2a
    const/16 v0, 0x33

    if-ne p0, v0, :cond_2b

    .line 220
    const-string p0, "SIM_BUSY"

    return-object p0

    :cond_2b
    const/16 v0, 0x34

    if-ne p0, v0, :cond_2c

    .line 223
    const-string p0, "SIM_FULL"

    return-object p0

    :cond_2c
    const/16 v0, 0x35

    if-ne p0, v0, :cond_2d

    .line 226
    const-string p0, "NETWORK_REJECT"

    return-object p0

    :cond_2d
    const/16 v0, 0x36

    if-ne p0, v0, :cond_2e

    .line 229
    const-string p0, "OPERATION_NOT_ALLOWED"

    return-object p0

    :cond_2e
    const/16 v0, 0x37

    if-ne p0, v0, :cond_2f

    .line 232
    const-string p0, "EMPTY_RECORD"

    return-object p0

    :cond_2f
    const/16 v0, 0x38

    if-ne p0, v0, :cond_30

    .line 235
    const-string p0, "INVALID_SMS_FORMAT"

    return-object p0

    :cond_30
    const/16 v0, 0x39

    if-ne p0, v0, :cond_31

    .line 238
    const-string p0, "ENCODING_ERR"

    return-object p0

    :cond_31
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_32

    .line 241
    const-string p0, "INVALID_SMSC_ADDRESS"

    return-object p0

    :cond_32
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_33

    .line 244
    const-string p0, "NO_SUCH_ENTRY"

    return-object p0

    :cond_33
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_34

    .line 247
    const-string p0, "NETWORK_NOT_READY"

    return-object p0

    :cond_34
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_35

    .line 250
    const-string p0, "NOT_PROVISIONED"

    return-object p0

    :cond_35
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_36

    .line 253
    const-string p0, "NO_SUBSCRIPTION"

    return-object p0

    :cond_36
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_37

    .line 256
    const-string p0, "NO_NETWORK_FOUND"

    return-object p0

    :cond_37
    const/16 v0, 0x40

    if-ne p0, v0, :cond_38

    .line 259
    const-string p0, "DEVICE_IN_USE"

    return-object p0

    :cond_38
    const/16 v0, 0x41

    if-ne p0, v0, :cond_39

    .line 262
    const-string p0, "ABORTED"

    return-object p0

    :cond_39
    const/16 v0, 0x42

    if-ne p0, v0, :cond_3a

    .line 265
    const-string p0, "INVALID_RESPONSE"

    return-object p0

    :cond_3a
    const/16 v0, 0x1f5

    if-ne p0, v0, :cond_3b

    .line 268
    const-string p0, "OEM_ERROR_1"

    return-object p0

    :cond_3b
    const/16 v0, 0x1f6

    if-ne p0, v0, :cond_3c

    .line 271
    const-string p0, "OEM_ERROR_2"

    return-object p0

    :cond_3c
    const/16 v0, 0x1f7

    if-ne p0, v0, :cond_3d

    .line 274
    const-string p0, "OEM_ERROR_3"

    return-object p0

    :cond_3d
    const/16 v0, 0x1f8

    if-ne p0, v0, :cond_3e

    .line 277
    const-string p0, "OEM_ERROR_4"

    return-object p0

    :cond_3e
    const/16 v0, 0x1f9

    if-ne p0, v0, :cond_3f

    .line 280
    const-string p0, "OEM_ERROR_5"

    return-object p0

    :cond_3f
    const/16 v0, 0x1fa

    if-ne p0, v0, :cond_40

    .line 283
    const-string p0, "OEM_ERROR_6"

    return-object p0

    :cond_40
    const/16 v0, 0x1fb

    if-ne p0, v0, :cond_41

    .line 286
    const-string p0, "OEM_ERROR_7"

    return-object p0

    :cond_41
    const/16 v0, 0x1fc

    if-ne p0, v0, :cond_42

    .line 289
    const-string p0, "OEM_ERROR_8"

    return-object p0

    :cond_42
    const/16 v0, 0x1fd

    if-ne p0, v0, :cond_43

    .line 292
    const-string p0, "OEM_ERROR_9"

    return-object p0

    :cond_43
    const/16 v0, 0x1fe

    if-ne p0, v0, :cond_44

    .line 295
    const-string p0, "OEM_ERROR_10"

    return-object p0

    :cond_44
    const/16 v0, 0x1ff

    if-ne p0, v0, :cond_45

    .line 298
    const-string p0, "OEM_ERROR_11"

    return-object p0

    :cond_45
    const/16 v0, 0x200

    if-ne p0, v0, :cond_46

    .line 301
    const-string p0, "OEM_ERROR_12"

    return-object p0

    :cond_46
    const/16 v0, 0x201

    if-ne p0, v0, :cond_47

    .line 304
    const-string p0, "OEM_ERROR_13"

    return-object p0

    :cond_47
    const/16 v0, 0x202

    if-ne p0, v0, :cond_48

    .line 307
    const-string p0, "OEM_ERROR_14"

    return-object p0

    :cond_48
    const/16 v0, 0x203

    if-ne p0, v0, :cond_49

    .line 310
    const-string p0, "OEM_ERROR_15"

    return-object p0

    :cond_49
    const/16 v0, 0x204

    if-ne p0, v0, :cond_4a

    .line 313
    const-string p0, "OEM_ERROR_16"

    return-object p0

    :cond_4a
    const/16 v0, 0x205

    if-ne p0, v0, :cond_4b

    .line 316
    const-string p0, "OEM_ERROR_17"

    return-object p0

    :cond_4b
    const/16 v0, 0x206

    if-ne p0, v0, :cond_4c

    .line 319
    const-string p0, "OEM_ERROR_18"

    return-object p0

    :cond_4c
    const/16 v0, 0x207

    if-ne p0, v0, :cond_4d

    .line 322
    const-string p0, "OEM_ERROR_19"

    return-object p0

    :cond_4d
    const/16 v0, 0x208

    if-ne p0, v0, :cond_4e

    .line 325
    const-string p0, "OEM_ERROR_20"

    return-object p0

    :cond_4e
    const/16 v0, 0x209

    if-ne p0, v0, :cond_4f

    .line 328
    const-string p0, "OEM_ERROR_21"

    return-object p0

    :cond_4f
    const/16 v0, 0x20a

    if-ne p0, v0, :cond_50

    .line 331
    const-string p0, "OEM_ERROR_22"

    return-object p0

    :cond_50
    const/16 v0, 0x20b

    if-ne p0, v0, :cond_51

    .line 334
    const-string p0, "OEM_ERROR_23"

    return-object p0

    :cond_51
    const/16 v0, 0x20c

    if-ne p0, v0, :cond_52

    .line 337
    const-string p0, "OEM_ERROR_24"

    return-object p0

    :cond_52
    const/16 v0, 0x20d

    if-ne p0, v0, :cond_53

    .line 340
    const-string p0, "OEM_ERROR_25"

    return-object p0

    .line 342
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

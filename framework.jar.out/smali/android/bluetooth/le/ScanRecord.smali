.class public final Landroid/bluetooth/le/ScanRecord;
.super Ljava/lang/Object;
.source "ScanRecord.java"


# static fields
.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA:I = 0x16

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ScanRecord"


# instance fields
.field private final mAdvertiseFlags:I

.field private final mBytes:[B

.field private final mDeviceName:Ljava/lang/String;

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mTxPowerLevel:I


# direct methods
.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    .locals 0
    .param p4, "advertiseFlags"    # I
    .param p5, "txPowerLevel"    # I
    .param p6, "localName"    # Ljava/lang/String;
    .param p7, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p2, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p3, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    .line 156
    iput-object p2, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 157
    iput-object p3, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 158
    iput-object p6, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    .line 159
    iput p4, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    .line 160
    iput p5, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    .line 161
    iput-object p7, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    .line 154
    return-void
.end method

.method private static extractBytes([BII)[B
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 291
    new-array v0, p2, [B

    .line 292
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 293
    return-object v0
.end method

.method public static parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;
    .locals 30
    .param p0, "scanRecord"    # [B

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    const/4 v3, 0x0

    return-object v3

    .line 180
    :cond_0
    const/16 v18, 0x0

    .line 181
    .local v18, "currentPos":I
    const/4 v7, -0x1

    .line 182
    .local v7, "advertiseFlag":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    const/4 v9, 0x0

    .line 184
    .local v9, "localName":Ljava/lang/String;
    const/high16 v8, -0x80000000

    .line 186
    .local v8, "txPowerLevel":I
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 187
    .local v5, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .local v6, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    move/from16 v19, v18

    .line 190
    .end local v9    # "localName":Ljava/lang/String;
    .end local v18    # "currentPos":I
    .local v19, "currentPos":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v19

    if-ge v0, v3, :cond_3

    .line 192
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "currentPos":I
    .restart local v18    # "currentPos":I
    :try_start_1
    aget-byte v3, p0, v19

    and-int/lit16 v0, v3, 0xff

    move/from16 v23, v0

    .line 193
    .local v23, "length":I
    if-nez v23, :cond_2

    .line 255
    .end local v23    # "length":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    const/4 v4, 0x0

    .line 258
    .end local v4    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_1
    new-instance v3, Landroid/bluetooth/le/ScanRecord;

    move-object/from16 v10, p0

    invoke-direct/range {v3 .. v10}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 197
    .restart local v4    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v23    # "length":I
    :cond_2
    add-int/lit8 v20, v23, -0x1

    .line 199
    .local v20, "dataLength":I
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "currentPos":I
    .restart local v19    # "currentPos":I
    :try_start_2
    aget-byte v3, p0, v18

    and-int/lit16 v0, v3, 0xff

    move/from16 v22, v0

    .line 200
    .local v22, "fieldType":I
    sparse-switch v22, :sswitch_data_0

    .line 252
    :goto_2
    add-int v18, v19, v20

    .end local v19    # "currentPos":I
    .restart local v18    # "currentPos":I
    move/from16 v19, v18

    .end local v18    # "currentPos":I
    .restart local v19    # "currentPos":I
    goto :goto_0

    .line 202
    :sswitch_0
    aget-byte v3, p0, v19

    and-int/lit16 v7, v3, 0xff

    .line 203
    goto :goto_2

    .line 207
    :sswitch_1
    const/4 v3, 0x2

    .line 206
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v3, v4}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 260
    .end local v20    # "dataLength":I
    .end local v22    # "fieldType":I
    .end local v23    # "length":I
    :catch_0
    move-exception v21

    .local v21, "e":Ljava/lang/Exception;
    move/from16 v18, v19

    .line 261
    .end local v4    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v19    # "currentPos":I
    .restart local v18    # "currentPos":I
    :goto_3
    const-string/jumbo v3, "ScanRecord"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to parse scan record: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v10, Landroid/bluetooth/le/ScanRecord;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/high16 v15, -0x80000000

    const/16 v16, 0x0

    move-object/from16 v17, p0

    invoke-direct/range {v10 .. v17}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V

    return-object v10

    .line 212
    .end local v18    # "currentPos":I
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v4    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v19    # "currentPos":I
    .restart local v20    # "dataLength":I
    .restart local v22    # "fieldType":I
    .restart local v23    # "length":I
    :sswitch_2
    const/4 v3, 0x4

    .line 211
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v3, v4}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_2

    .line 217
    :sswitch_3
    const/16 v3, 0x10

    .line 216
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v3, v4}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_2

    .line 221
    :sswitch_4
    new-instance v9, Ljava/lang/String;

    .line 222
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v3

    .line 221
    invoke-direct {v9, v3}, Ljava/lang/String;-><init>([B)V

    .line 223
    .local v9, "localName":Ljava/lang/String;
    goto :goto_2

    .line 225
    .end local v9    # "localName":Ljava/lang/String;
    :sswitch_5
    aget-byte v8, p0, v19

    .line 226
    goto :goto_2

    .line 230
    :sswitch_6
    const/16 v29, 0x2

    .line 231
    .local v29, "serviceUuidLength":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v28

    .line 233
    .local v28, "serviceDataUuidBytes":[B
    invoke-static/range {v28 .. v28}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v27

    .line 236
    .local v27, "serviceDataUuid":Landroid/os/ParcelUuid;
    add-int/lit8 v3, v19, 0x2

    add-int/lit8 v10, v20, -0x2

    .line 235
    move-object/from16 v0, p0

    invoke-static {v0, v3, v10}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v26

    .line 237
    .local v26, "serviceDataArray":[B
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 242
    .end local v26    # "serviceDataArray":[B
    .end local v27    # "serviceDataUuid":Landroid/os/ParcelUuid;
    .end local v28    # "serviceDataUuidBytes":[B
    .end local v29    # "serviceUuidLength":I
    :sswitch_7
    add-int/lit8 v3, v19, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 243
    aget-byte v10, p0, v19

    and-int/lit16 v10, v10, 0xff

    .line 242
    add-int v25, v3, v10

    .line 244
    .local v25, "manufacturerId":I
    add-int/lit8 v3, v19, 0x2

    .line 245
    add-int/lit8 v10, v20, -0x2

    .line 244
    move-object/from16 v0, p0

    invoke-static {v0, v3, v10}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v24

    .line 246
    .local v24, "manufacturerDataBytes":[B
    move/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 260
    .end local v4    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .end local v19    # "currentPos":I
    .end local v20    # "dataLength":I
    .end local v22    # "fieldType":I
    .end local v23    # "length":I
    .end local v24    # "manufacturerDataBytes":[B
    .end local v25    # "manufacturerId":I
    .restart local v18    # "currentPos":I
    :catch_1
    move-exception v21

    .restart local v21    # "e":Ljava/lang/Exception;
    goto/16 :goto_3

    .end local v18    # "currentPos":I
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v4    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .restart local v19    # "currentPos":I
    :cond_3
    move/from16 v18, v19

    .end local v19    # "currentPos":I
    .restart local v18    # "currentPos":I
    goto/16 :goto_1

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0x16 -> :sswitch_6
        0xff -> :sswitch_7
    .end sparse-switch
.end method

.method private static parseServiceUuid([BIIILjava/util/List;)I
    .locals 2
    .param p0, "scanRecord"    # [B
    .param p1, "currentPos"    # I
    .param p2, "dataLength"    # I
    .param p3, "uuidLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 279
    .local p4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :goto_0
    if-lez p2, :cond_0

    .line 280
    invoke-static {p0, p1, p3}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 282
    .local v0, "uuidBytes":[B
    invoke-static {v0}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    sub-int/2addr p2, p3

    .line 284
    add-int/2addr p1, p3

    goto :goto_0

    .line 286
    .end local v0    # "uuidBytes":[B
    :cond_0
    return p1
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .locals 1
    .param p1, "manufacturerId"    # I

    .prologue
    .line 102
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .locals 1
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;

    .prologue
    const/4 v0, 0x0

    .line 118
    if-nez p1, :cond_0

    .line 119
    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ScanRecord [mAdvertiseFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 271
    const-string/jumbo v1, ", mManufacturerSpecificData="

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 271
    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    const-string/jumbo v1, ", mServiceData="

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    const-string/jumbo v1, ", mTxPowerLevel="

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    const-string/jumbo v1, ", mDeviceName="

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    const-string/jumbo v1, "]"

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

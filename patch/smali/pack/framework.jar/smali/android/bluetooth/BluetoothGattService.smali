.class public Landroid/bluetooth/BluetoothGattService;
.super Ljava/lang/Object;
.source "BluetoothGattService.java"


# static fields
.field public static final SERVICE_TYPE_PRIMARY:I = 0x0

.field public static final SERVICE_TYPE_SECONDARY:I = 0x1


# instance fields
.field protected mCharacteristics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field protected mDevice:Landroid/bluetooth/BluetoothDevice;

.field protected mHandles:I

.field protected mIncludedServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field protected mInstanceId:I

.field protected mServiceType:I

.field protected mUuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "serviceType"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    .line 108
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 109
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    .line 110
    iput p3, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    .line 111
    iput p4, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;I)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "serviceType"    # I

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v1, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 95
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    .line 96
    iput v1, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    .line 97
    iput p2, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    .line 100
    return-void
.end method


# virtual methods
.method public addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 1
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setService(Landroid/bluetooth/BluetoothGattService;)V

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method addIncludedService(Landroid/bluetooth/BluetoothGattService;)V
    .locals 1
    .param p1, "includedService"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 193
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public addService(Landroid/bluetooth/BluetoothGattService;)Z
    .locals 1
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 260
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 261
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCharacteristic(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I

    .prologue
    .line 154
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 155
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 159
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCharacteristics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mCharacteristics:Ljava/util/List;

    return-object v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getHandles()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    return v0
.end method

.method public getIncludedServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mIncludedServices:Ljava/util/List;

    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Landroid/bluetooth/BluetoothGattService;->mServiceType:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public setHandles(I)V
    .locals 0
    .param p1, "handles"    # I

    .prologue
    .line 185
    iput p1, p0, Landroid/bluetooth/BluetoothGattService;->mHandles:I

    .line 186
    return-void
.end method

.method public setInstanceId(I)V
    .locals 0
    .param p1, "instanceId"    # I

    .prologue
    .line 168
    iput p1, p0, Landroid/bluetooth/BluetoothGattService;->mInstanceId:I

    .line 169
    return-void
.end method

.class final Lcom/tencent/qrom/support/v4/app/FragmentManagerState$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/support/v4/app/FragmentManagerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tencent/qrom/support/v4/app/FragmentManagerState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/qrom/support/v4/app/FragmentManagerState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 376
    new-instance v0, Lcom/tencent/qrom/support/v4/app/FragmentManagerState;

    invoke-direct {v0, p1}, Lcom/tencent/qrom/support/v4/app/FragmentManagerState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/support/v4/app/FragmentManagerState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/qrom/support/v4/app/FragmentManagerState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/qrom/support/v4/app/FragmentManagerState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 380
    new-array v0, p1, [Lcom/tencent/qrom/support/v4/app/FragmentManagerState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/support/v4/app/FragmentManagerState$1;->newArray(I)[Lcom/tencent/qrom/support/v4/app/FragmentManagerState;

    move-result-object v0

    return-object v0
.end method
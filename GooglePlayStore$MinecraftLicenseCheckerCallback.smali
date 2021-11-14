.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$MinecraftLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "GooglePlayStore.java"

# interfaces
.implements Lcom/googleplay/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinecraftLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;


# direct methods
.method private constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$MinecraftLicenseCheckerCallback;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$1;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$MinecraftLicenseCheckerCallback;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;)V

    return-void
.end method


# virtual methods
.method public allow(I)V
    .registers 5

    const/16 v0, 0x123

    if-ne p1, v0, :cond_c

    .line 58
    new-instance p1, Ljava/lang/String;

    const-string v0, "RETRY"

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    :cond_c
    const/16 v0, 0x100

    if-ne p1, v0, :cond_18

    .line 61
    new-instance p1, Ljava/lang/String;

    const-string v0, "LICENSED"

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    .line 64
    :cond_18
    new-instance p1, Ljava/lang/String;

    const-string v0, "UNKNOWN REASON"

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1f
    const/4 v0, 0x1

    .line 67
    invoke-static {v0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->access$002(Z)Z

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "allowed reason: %s"

    .line 68
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MinecraftLicenseCheckerCallback"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {v0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->access$102(Z)Z

    return-void
.end method

.method public applicationError(I)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "error: %d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MinecraftLicenseCheckerCallback"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dontAllow(I)V
    .registers 4

    const/16 v0, 0x231

    if-ne p1, v0, :cond_c

    .line 86
    new-instance p1, Ljava/lang/String;

    const-string v0, "NOT LICENSED"

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    :cond_c
    const/16 v0, 0x123

    if-ne p1, v0, :cond_18

    .line 89
    new-instance p1, Ljava/lang/String;

    const-string v0, "RETRY"

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    .line 92
    :cond_18
    new-instance p1, Ljava/lang/String;

    const-string v0, "UNKNOWN REASON"

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1f
    const/4 v0, 0x1

    .line 95
    invoke-static {v0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->access$002(Z)Z

    new-array v1, v0, [Ljava/lang/Object;

    const/4 p0, 0x0

    aput-object p1, v1, p0

    const-string p1, "denied reason: %s"

    .line 96
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MinecraftLicenseCheckerCallback"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {v0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->access$102(Z)Z

    return-void
.end method

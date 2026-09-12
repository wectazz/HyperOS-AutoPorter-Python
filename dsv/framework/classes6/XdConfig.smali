.class public Landroid/os/XdConfig;
.super Landroid/os/Build;
.source "XdConfig.java"


# static fields
.field public static IS_OBITO_BUILD:Z

.field public static IS_OBITRON_BUILD:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/XdConfig;->IS_OBITO_BUILD:Z

    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/XdConfig;->IS_OBITRON_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Landroid/os/Build;-><init>()V

    return-void
.end method

.method public static RETURN_FALSE()Z
    .registers 1

    sget-boolean v0, Landroid/os/XdConfig;->IS_OBITRON_BUILD:Z

    return v0
.end method

.method public static RETURN_TRUE()Z
    .registers 1

    sget-boolean v0, Landroid/os/XdConfig;->IS_OBITO_BUILD:Z

    return v0
.end method

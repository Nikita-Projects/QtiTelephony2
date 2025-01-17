.class public Lcom/qti/phone/ExtTelephonyService;
.super Landroid/app/Service;
.source "ExtTelephonyService.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mBinder:Lcom/qti/extphone/IExtPhone$Stub;

.field private mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExtTelephonyServiceImpl(Lcom/qti/phone/ExtTelephonyService;)Lcom/qti/phone/ExtTelephonyServiceImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$menforceModifyPhoneState(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/ExtTelephonyService;->enforceModifyPhoneState(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceReadPrivilegedPermission(Lcom/qti/phone/ExtTelephonyService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/ExtTelephonyService;->enforceReadPrivilegedPermission(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 90
    new-instance v0, Lcom/qti/phone/ExtTelephonyService$1;

    invoke-direct {v0, p0}, Lcom/qti/phone/ExtTelephonyService$1;-><init>(Lcom/qti/phone/ExtTelephonyService;)V

    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyService;->mBinder:Lcom/qti/extphone/IExtPhone$Stub;

    return-void
.end method

.method private enforceModifyPhoneState(Ljava/lang/String;)V
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enforceModifyPhoneState for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceReadPrivilegedPermission(Ljava/lang/String;)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enforceReadPrivilegedPermission for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTelephonyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qti/phone/ExtTelephonyServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Service bound with "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExtTelephonyService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p0, p0, Lcom/qti/phone/ExtTelephonyService;->mBinder:Lcom/qti/extphone/IExtPhone$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 46
    const-string v0, "ExtTelephonyService"

    const-string v1, "ExtTelephonyService created.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sput-object p0, Lcom/qti/phone/ExtTelephonyService;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-direct {v0, p0}, Lcom/qti/phone/ExtTelephonyServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyService;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 59
    const-string v0, "ExtTelephonyService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/qti/phone/ExtTelephonyService;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    invoke-virtual {v0}, Lcom/qti/phone/ExtTelephonyServiceImpl;->cleanUp()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/qti/phone/ExtTelephonyService;->mExtTelephonyServiceImpl:Lcom/qti/phone/ExtTelephonyServiceImpl;

    .line 62
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 53
    const-string v0, "ExtTelephonyService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

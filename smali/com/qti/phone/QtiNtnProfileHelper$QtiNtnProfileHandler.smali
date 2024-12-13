.class final Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileHandler;
.super Landroid/os/Handler;
.source "QtiNtnProfileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiNtnProfileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QtiNtnProfileHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiNtnProfileHelper;


# direct methods
.method constructor <init>(Lcom/qti/phone/QtiNtnProfileHelper;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileHandler;->this$0:Lcom/qti/phone/QtiNtnProfileHelper;

    .line 278
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiNtnProfileHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 315
    const-string p0, "Unknown event"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 286
    :cond_0
    iget-object p0, p0, Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileHandler;->this$0:Lcom/qti/phone/QtiNtnProfileHelper;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/qti/phone/QtiNtnProfileHelper;->-$$Nest$mhandleGetAllEsimProfiles(Lcom/qti/phone/QtiNtnProfileHelper;II)V

    goto :goto_2

    .line 309
    :cond_1
    iget-object p0, p0, Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileHandler;->this$0:Lcom/qti/phone/QtiNtnProfileHelper;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 310
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    .line 309
    :goto_0
    invoke-static {p0, v0, v1, v2}, Lcom/qti/phone/QtiNtnProfileHelper;->-$$Nest$mnotifyDisableProfileStatus(Lcom/qti/phone/QtiNtnProfileHelper;IIZ)V

    goto :goto_2

    .line 303
    :cond_3
    iget-object p0, p0, Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileHandler;->this$0:Lcom/qti/phone/QtiNtnProfileHelper;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 304
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v4

    .line 303
    :goto_1
    invoke-static {p0, v0, v1, v2}, Lcom/qti/phone/QtiNtnProfileHelper;->-$$Nest$mnotifyEnableProfileStatus(Lcom/qti/phone/QtiNtnProfileHelper;IIZ)V

    goto :goto_2

    .line 297
    :cond_5
    iget-object p0, p0, Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileHandler;->this$0:Lcom/qti/phone/QtiNtnProfileHelper;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiNtnProfileHelper;->-$$Nest$mhandleEnableProfile(Lcom/qti/phone/QtiNtnProfileHelper;IILjava/lang/String;)V

    goto :goto_2

    .line 291
    :cond_6
    iget-object p0, p0, Lcom/qti/phone/QtiNtnProfileHelper$QtiNtnProfileHandler;->this$0:Lcom/qti/phone/QtiNtnProfileHelper;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/qti/phone/QtiNtnProfileHelper;->-$$Nest$mhandleDisableProfile(Lcom/qti/phone/QtiNtnProfileHelper;IILjava/lang/String;)V

    :goto_2
    return-void
.end method

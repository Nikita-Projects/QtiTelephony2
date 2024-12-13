.class final Lcom/qti/phone/QtiCellularRoamingPreferenceController$QtiCellularRoamingCallback;
.super Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;
.source "QtiCellularRoamingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiCellularRoamingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QtiCellularRoamingCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiCellularRoamingPreferenceController;


# direct methods
.method private constructor <init>(Lcom/qti/phone/QtiCellularRoamingPreferenceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController$QtiCellularRoamingCallback;->this$0:Lcom/qti/phone/QtiCellularRoamingPreferenceController;

    invoke-direct {p0}, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qti/phone/QtiCellularRoamingPreferenceController;Lcom/qti/phone/QtiCellularRoamingPreferenceController$QtiCellularRoamingCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiCellularRoamingPreferenceController$QtiCellularRoamingCallback;-><init>(Lcom/qti/phone/QtiCellularRoamingPreferenceController;)V

    return-void
.end method


# virtual methods
.method public setCellularRoamingPreferenceResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 2

    .line 130
    iget-object p0, p0, Lcom/qti/phone/QtiCellularRoamingPreferenceController$QtiCellularRoamingCallback;->this$0:Lcom/qti/phone/QtiCellularRoamingPreferenceController;

    new-instance v0, Lcom/qti/phone/QtiRadioProxy$Result;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/qti/phone/QtiRadioProxy$Result;-><init>(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V

    const/16 p2, 0x2f

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p1, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

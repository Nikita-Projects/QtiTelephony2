.class final Lcom/qti/phone/QtiCiwlanModePreferenceController$QtiCiwlanModePrefCallback;
.super Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;
.source "QtiCiwlanModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/phone/QtiCiwlanModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QtiCiwlanModePrefCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/phone/QtiCiwlanModePreferenceController;


# direct methods
.method private constructor <init>(Lcom/qti/phone/QtiCiwlanModePreferenceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/qti/phone/QtiCiwlanModePreferenceController$QtiCiwlanModePrefCallback;->this$0:Lcom/qti/phone/QtiCiwlanModePreferenceController;

    invoke-direct {p0}, Lcom/qti/phone/QtiRadioProxy$IQtiRadioInternalCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qti/phone/QtiCiwlanModePreferenceController;Lcom/qti/phone/QtiCiwlanModePreferenceController$QtiCiwlanModePrefCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/phone/QtiCiwlanModePreferenceController$QtiCiwlanModePrefCallback;-><init>(Lcom/qti/phone/QtiCiwlanModePreferenceController;)V

    return-void
.end method

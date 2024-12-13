.class public final synthetic Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$$ExternalSyntheticLambda0;->f$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    iput p2, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$$ExternalSyntheticLambda0;->f$0:Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;

    iget p0, p0, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;->$r8$lambda$CQVg0GgRIYDfRWl6IakyTEqdWsk(Lcom/qti/phone/esimosupdate/EsimOsUpdateAgent;ILjava/lang/Integer;)V

    return-void
.end method

.class Lcom/xiaomi/internal/telephony_ext/MiRadioProxy$Result;
.super Ljava/lang/Object;
.source "MiRadioProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/internal/telephony_ext/MiRadioProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation


# instance fields
.field mData:Ljava/lang/Object;

.field mStatus:Lcom/qti/extphone/Status;

.field mToken:Lcom/qti/extphone/Token;


# direct methods
.method public constructor <init>(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Ljava/lang/Object;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/xiaomi/internal/telephony_ext/MiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    .line 156
    iput-object p2, p0, Lcom/xiaomi/internal/telephony_ext/MiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    .line 157
    iput-object p3, p0, Lcom/xiaomi/internal/telephony_ext/MiRadioProxy$Result;->mData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result{mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/internal/telephony_ext/MiRadioProxy$Result;->mToken:Lcom/qti/extphone/Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/internal/telephony_ext/MiRadioProxy$Result;->mStatus:Lcom/qti/extphone/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/internal/telephony_ext/MiRadioProxy$Result;->mData:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

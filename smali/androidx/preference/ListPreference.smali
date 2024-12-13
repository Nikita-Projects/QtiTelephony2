.class public Landroidx/preference/ListPreference;
.super Landroidx/preference/DialogPreference;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/ListPreference$SimpleSummaryProvider;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 85
    sget v0, Landroidx/preference/R$attr;->dialogPreferenceStyle:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    sget-object v0, Landroidx/preference/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    sget v1, Landroidx/preference/R$styleable;->ListPreference_entries:I

    sget v2, Landroidx/preference/R$styleable;->ListPreference_android_entries:I

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 59
    sget v1, Landroidx/preference/R$styleable;->ListPreference_entryValues:I

    sget v2, Landroidx/preference/R$styleable;->ListPreference_android_entryValues:I

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 62
    sget v1, Landroidx/preference/R$styleable;->ListPreference_useSimpleSummaryProvider:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {}, Landroidx/preference/ListPreference$SimpleSummaryProvider;->getInstance()Landroidx/preference/ListPreference$SimpleSummaryProvider;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 67
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    sget-object v0, Landroidx/preference/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    sget p2, Landroidx/preference/R$styleable;->Preference_summary:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_summary:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getValueIndex()I
    .locals 1

    .line 250
    iget-object v0, p0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 228
    iget-object v0, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 229
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 230
    iget-object v1, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 0

    .line 120
    iget-object p0, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 1

    .line 217
    invoke-direct {p0}, Landroidx/preference/ListPreference;->getValueIndex()I

    move-result v0

    if-ltz v0, :cond_0

    .line 218
    iget-object p0, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 0

    .line 148
    iget-object p0, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 165
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/preference/Preference$SummaryProvider;->provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 169
    invoke-super {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 170
    iget-object p0, p0, Landroidx/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    .line 173
    const-string v0, ""

    :cond_2
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    .line 177
    :cond_3
    const-string v0, "ListPreference"

    const-string v1, "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 207
    iget-object p0, p0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 255
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    .line 190
    iget-object v0, p0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 191
    iget-boolean v2, p0, Landroidx/preference/ListPreference;->mValueSet:Z

    if-nez v2, :cond_1

    .line 192
    :cond_0
    iput-object p1, p0, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 193
    iput-boolean v1, p0, Landroidx/preference/ListPreference;->mValueSet:Z

    .line 194
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    return-void
.end method

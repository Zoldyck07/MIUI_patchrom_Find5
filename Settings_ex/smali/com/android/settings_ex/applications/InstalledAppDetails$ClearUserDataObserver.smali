.class Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearUserDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "succeeded"

    .prologue
    const/4 v1, 0x1

    .line 222
    iget-object v2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    #getter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$400(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 223
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 224
    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$ClearUserDataObserver;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    #getter for: Lcom/android/settings_ex/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->access$400(Lcom/android/settings_ex/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 225
    return-void

    .line 223
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
.class Lcom/mokee/volley/ExecutorDelivery$b;
.super Ljava/lang/Object;
.source "ExecutorDelivery$b.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/volley/ExecutorDelivery;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mokee/volley/ExecutorDelivery;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/volley/ExecutorDelivery$b;->this$0:Lcom/mokee/volley/ExecutorDelivery;

    iput-object p2, p0, Lcom/mokee/volley/ExecutorDelivery$b;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/ExecutorDelivery$b;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

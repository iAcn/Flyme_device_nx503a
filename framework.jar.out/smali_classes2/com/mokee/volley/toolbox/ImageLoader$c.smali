.class Lcom/mokee/volley/toolbox/ImageLoader$c;
.super Ljava/lang/Object;
.source "ImageLoader$c.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/mokee/volley/VolleyError;

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/Bitmap;

.field private final d:Lcom/mokee/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mokee/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mokee/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/mokee/volley/toolbox/ImageLoader;Lcom/mokee/volley/Request;Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/Request",
            "<*>;",
            "Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mokee/volley/toolbox/ImageLoader$c;->this$0:Lcom/mokee/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$c;->b:Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/mokee/volley/toolbox/ImageLoader$c;->d:Lcom/mokee/volley/Request;

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$0(Lcom/mokee/volley/toolbox/ImageLoader$c;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$c;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mokee/volley/toolbox/ImageLoader$c;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/volley/toolbox/ImageLoader$c;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$2(Lcom/mokee/volley/toolbox/ImageLoader$c;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$c;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public addContainer(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getError()Lcom/mokee/volley/VolleyError;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$c;->a:Lcom/mokee/volley/VolleyError;

    return-object v0
.end method

.method public removeContainerAndCancelIfNecessary(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;)Z
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$c;->d:Lcom/mokee/volley/Request;

    invoke-virtual {v0}, Lcom/mokee/volley/Request;->cancel()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setError(Lcom/mokee/volley/VolleyError;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/volley/toolbox/ImageLoader$c;->a:Lcom/mokee/volley/VolleyError;

    return-void
.end method

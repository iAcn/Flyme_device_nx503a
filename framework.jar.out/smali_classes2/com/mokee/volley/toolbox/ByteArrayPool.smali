.class public Lcom/mokee/volley/toolbox/ByteArrayPool;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# static fields
.field protected static final BUF_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mokee/volley/toolbox/ByteArrayPool$a;

    invoke-direct {v0}, Lcom/mokee/volley/toolbox/ByteArrayPool$a;-><init>()V

    sput-object v0, Lcom/mokee/volley/toolbox/ByteArrayPool;->BUF_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->b:I

    iput p1, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->a:I

    return-void
.end method

.method private declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/mokee/volley/toolbox/ImageLoader;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->b:I

    array-length v0, v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->b:I

    :cond_1
    iget v0, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->b:I

    iget v1, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getBuf(I)[B
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/mokee/volley/toolbox/ImageLoader;->h:Z

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    :cond_0
    move v1, v0

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v2, v0

    if-lt v2, p1, :cond_1

    iget v2, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->b:I

    array-length v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->b:I

    iget-object v2, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-array v0, p1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized returnBuf([B)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    iget v1, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->c:Ljava/util/List;

    sget-object v1, Lcom/mokee/volley/toolbox/ByteArrayPool;->BUF_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_2

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_2
    iget-object v1, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->c:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mokee/volley/toolbox/ByteArrayPool;->b:I

    invoke-direct {p0}, Lcom/mokee/volley/toolbox/ByteArrayPool;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

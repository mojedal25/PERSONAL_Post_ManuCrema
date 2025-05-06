<!doctype html>
<html lang="es">

<head>
    @include('partials.head')
</head>

<body>

    <!--loading -->
    @include('partials.loading')

    <!-- Header -->
    @include('partials.header')

    <main class="main">

        <section class="banner">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8">

                        @if ($search)
                            <div class="alert alert-info">
                                Resultados para: <strong>{{ $search }}</strong>
                            </div>
                        @endif

                        @if (isset($category))
                            <div class="alert alert-info">
                                Mostrando posts en la categoría: <strong>{{ $category->name }}</strong>
                            </div>
                        @endif

                        @if (isset($tag))
                            <div class="alert alert-info">
                                Mostrando posts con el tag: <strong>{{ $tag->name }}</strong>
                            </div>
                        @endif

                        <div class="banner__content ">
                            <small class="banner__meta">
                                <a href="index.html" class="banner__link">inicio</a>
                                <i class="bi bi-caret-right-fill banner__icon"></i>Blogs
                            </small>
                            <h3 class="banner__title">Blogs</h3>
                            <p class="banner__subtitle"> Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Incidunt quae explicabo, ducimus necessitatibus eum aut enim modi
                                saepe perspiciatis fugit
                            </p>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <section class="blog-masonry">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-9 mt-30  side-content">

                        <div class="theiaStickySidebar">
                            <div class="row masonry-items">
                                @foreach ($allPosts as $post)
                                    <!-- Post -->
                                    <div class="col-lg-6 col-md-6 masonry-item">
                                        <div class="post-card post-card--default">
                                            <div class="post-card__image">
                                                <a href="{{ route('posts.show', ['id' => $post->id, 'slug' => $post->slug]) }}">
                                                    <img src="{{ asset('storage/' . $post->featured_image) }}" alt="{{ $post->title }}">
                                                </a>
                                            </div>
                                            <div class="post-card__content">

                                                @foreach ($post->categories as $category)
                                                    <a href="{{ route('posts.category', $category->slug) }}" class="category">{{ $category->name }}</a>
                                                @endforeach

                                                <h5 class="post-card__title">
                                                    <a href="{{ route('posts.show', ['id' => $post->id, 'slug' => $post->slug]) }}" class="post-card__title-link">
                                                        {{ $post->title }}
                                                    </a>
                                                </h5>
                                                <p class="post-card__exerpt">{{ Str::limit($post->summary, 100) }}</p>
                                                <ul class="post-card__meta list-inline">
                                                    <li class="post-card__meta-item">
                                                        <a href="#" class="post-card__meta-link">
                                                            <img src="{{ asset('assets/img/author/admin.png') }}" alt="{{ $post->user->name }}" class="post-card__meta-img">
                                                        </a>
                                                    </li>
                                                    <li class="post-card__meta-item">
                                                        <a href="#" class="post-card__meta-link">{{ $post->user->name }}</a>
                                                    </li>
                                                    <li class="post-card__meta-item">
                                                        <span class="dot"></span> {{ $post->published_at->translatedFormat('d F  Y') }}
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>

                            <!-- Paginación -->
                            <div class="row">
                                <div class="col-lg-12">
                                    {{ $allPosts->appends(request()->query())->links('pagination::bootstrap-4') }}
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-xl-3 max-width side-sidebar">
                        <div class="theiaStickySidebar">

                            <!--widget-Latest-Posts-->
                            <div class="widget">
                                <h5 class="widget__title">Latest Posts</h5>
                                <ul class="widget__latest-posts">
                                    @foreach ($latestPosts as $index => $post)
                                        <!-- Post {{ $index + 1 }} -->
                                        <li class="widget__latest-posts__item">
                                            <div class="widget__latest-posts-image">
                                                <a href="{{ route('posts.show', ['id' => $post->id, 'slug' => $post->slug]) }}" class="widget__latest-posts-link">
                                                    <img src="{{ asset('storage/' . $post->featured_image) }}" alt="{{ $post->title }}" class="widget__latest-posts-img">
                                                </a>
                                            </div>
                                            <div class="widget__latest-posts-count">{{ $index + 1 }}</div>
                                            <div class="widget__latest-posts__content">
                                                <p class="widget__latest-posts-title">
                                                    <a href="{{ route('posts.show', ['id' => $post->id, 'slug' => $post->slug]) }}" class="widget__latest-posts-link">
                                                        {{ $post->title }}
                                                    </a>
                                                </p>
                                                <small class="widget__latest-posts-date">
                                                    <i class="bi bi-clock-fill widget__latest-posts-icon"></i>
                                                    {{ $post->published_at->translatedFormat('d \d\e F \d\e Y') }}
                                                </small>
                                            </div>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>

                            <!--widget-categories-->
                            <div class="widget">
                                <h5 class="widget__title">Categories</h5>
                                <ul class="widget__categories">
                                    @foreach ($categories as $category)
                                        <li class="widget__categories-item">
                                            <a href="{{ route('posts.category', $category->slug) }}" class="category widget__categories-link">{{ $category->name }}</a>
                                            <span class="ml-auto widget__categories-number">{{ $category->post->count() }} Posts</span>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>

                            <!--widget-tags-->
                            <div class="widget">
                                <h5 class="widget__title">Tags</h5>
                                <ul class="list-inline widget__tags">
                                    @foreach ($tags as $tag)
                                        <li class="widget__tags-item">
                                            <a href="{{ route('posts.tag', $tag->slug) }}" class="widget__tags-link">{{ $tag->name }}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>

                            <!--widget-ads-->
                            <div class="widget">
                                <h5  class="widget__title">ads</h5>
                                <div class="widget__ads">
                                    <a href="#" class="widget__ads-link">
                                        <img src="{{ asset('assets/img/ads/ads3.jpg') }}" alt="" class="widget__ads-img">
                                    </a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--newslettre-->
        @include('partials.newslettre')
    </main>

    <!--footer-->
    @include('partials.footer')

    <!--Search-form-->
    @include('partials.buscar')

    <!--plugins -->
    @include('partials.js')

</body>
</html>

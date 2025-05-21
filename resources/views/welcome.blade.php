<!doctype html>
<html lang="es">

<head>
  @include('partials.head')
</head>

<body>
    <!--loading -->
        @include('partials.loading')
    <!--/-->

    <!-- Header -->
    @include('partials.header')
    <!--/-->

    <main class="main">
        <!--slider-two-->
        <div class="slider slider--two">
            <div class="swiper slider__top">
                <div class="swiper-wrapper">
                    @foreach ($latestPosts as $post)
                        <!-- Slider Item -->
                        <div class="slider__item swiper-slide" style="background-image: url({{ asset('storage/' . $post->featured_image) }});">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-xl-7 col-lg-9 col-md-12">
                                        <div class="slider__item-content">
                                            <div class="categories">
                                                @foreach ($post->categories as $category)
                                                    <a href="{{ route('posts.category', $category->slug) }}" class="category">{{ $category->name }}</a>
                                                @endforeach
                                            </div>
                                            <h1 class="slider__title">
                                                <a href="{{ route('posts.show', ['id' => $post->id, 'slug' => $post->slug]) }}" class="slider__title-link">{{ $post->title }}</a>
                                            </h1>
                                            <p class="slider__exerpt">{{ $post->summary }}</p>
                                            <ul class="slider__meta list-inline">
                                                <li class="slider__meta-item">
                                                    <a href="#" class="slider__meta-link">
                                                        <img src="{{ asset('assets/img/author/admin.png') }}" alt="" class="slider__meta-img">
                                                    </a>
                                                </li>
                                                <li class="slider__meta-item">
                                                    <a href="#" class="slider__meta-link">{{ $post->user->name }}</a>
                                                </li>
                                                <li class="slider__meta-item"><span class="dot"></span>  {{ $post->published_at->translatedFormat('d F Y') }}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>

            <div thumbsSlider="" class="swiper slider__bottom container-fluid">
                <div class="swiper-wrapper">
                    @foreach ($latestPosts as $post)
                        <!-- Thumbnail Item -->
                        <div class="swiper-slide">
                            <div class="post-slider">
                                <img src="{{ asset('storage/' . $post->featured_image) }}" alt="" class="post-slider__img">
                                <div class="post-slider__content">
                                    <p class="post-slider__title">
                                        <span>{{ $post->title }}</span>
                                    </p>
                                    <ul class="post-slider__meta list-inline">
                                        <li class="post-slider__meta-link">
                                            <i class="bi bi-clock-fill"></i> {{ $post->published_at->translatedFormat('d  F  Y') }}
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>


        <!--blog-Home-2-->
        <section class="mt-90">
            <div class="container-fluid">
                <div class="row">
                    @foreach ($allPosts as $post)
                        <!-- Post -->
                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="post-card post-card--default">
                                <div class="post-card__image">
                                    <a href="{{ route('posts.show', ['id' => $post->id, 'slug' => $post->slug]) }}">
                                        <img src="{{ asset('storage/' . $post->featured_image) }}" alt="{{ $post->title }}">
                                    </a>
                                </div>
                                <div class="post-card__content">
                                    <!-- Categorías -->
                                    <div class="categories">
                                        @foreach ($post->categories as $category)
                                            <a href="{{ route('posts.category', $category->slug) }}" class="category">{{ $category->name }}</a>
                                        @endforeach
                                    </div>
                                    <h5 class="post-card__title">
                                        <a href="{{ route('posts.show', ['id' => $post->id, 'slug' => $post->slug]) }}" class="post-card__title-link">{{ $post->title }}</a>
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
                                            <span class="dot"></span> {{ $post->published_at->translatedFormat('d F Y') }}
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
                        {{ $allPosts->links('pagination::bootstrap-4') }}
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

    @include('partials.js')

</body>

</html>

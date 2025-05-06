   <!--Search-form-->
   <div class="search__box">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 m-auto col-md-8 col-sm-11">
                <div class="search__content">
                    <button type="button" class="search__box-btn-close">
                        <i class="bi bi-x-lg"></i>
                    </button>
                    <form method="GET" class="search__form" action="{{ route('blog.index') }}">
                        <input type="search" name="search" value="{{ request('search') }}" class="search__form-input"
                        placeholder="Buscar en
                            @if(request()->routeIs('posts.category'))
                                {{ $category->name ?? 'el blog' }}
                            @elseif(request()->routeIs('posts.tag'))
                                {{ $tag->name ?? 'el blog' }}
                            @else
                                el blog
                            @endif">
                        <button type="submit" class="search__form-btn-search">Buscar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<header class="header fixed-top navbar-expand-xl">
    <div class="container-fluid">
        <div class="header__main">
            <!-- logo -->
            <div class="logo">
                <a class="logo__link logo--dark" href="index.html">
                    <img src="{{ asset('assets/img/logo/logo-dark.png') }}" alt="" class="logo__img">
                </a>
                <a class="logo__link logo--light" href="index.html">
                    <img src="{{ asset('assets/img/logo/logo-white.png') }}" alt="" class="logo__img">
                </a>
            </div><!--/-->

            <div class="header__navbar">
                <nav class="navbar">
                    <!--navbar-collapse-->
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ">
                            <!--Homes -->
                            <li class="nav-item">
                                <a class="nav-link" href="{{ url('/') }}"> Inicio </a>
                            </li>

                            <!--Posts features -->


                            <!--Blogs-->
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('blog.index') }}"> Blogs </a>
                            </li>


                            <!--contact -->
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('contact.index') }}"> Contacto </a>
                            </li>

                            @if (Auth::check())
                               <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="javascript:void(0)" id="navbarDropdown3" role="button" data-bs-toggle="dropdown" aria-expanded="false"> {{ auth()->user()->name }} </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="{{ route('posts.list') }}">Mis Publicaciones</a></li>
                                        <li><a class="dropdown-item" href="{{ route('profile.edit') }}">Perfil</a></li>
                                        <li>
                                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                                @csrf
                                            </form>
                                            <a class="dropdown-item" href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                                Cerrar Sesión
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                            @else
                            <!--Acceder-->
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}"> Acceder </a>
                            </li>

                            @endif

                        </ul>
                    </div>
                    <!--/-->
                </nav>
            </div>

            <!-- header actions -->
            <div class=" header__action-items">
                <!--header-social-->
                <ul class="list-inline social-media social-media--layout-one">
                    <li class="social-media__item">
                        <a href="#" class="social-media__link" >
                            <i class="bi bi-facebook"></i>
                        </a>
                    </li>

                    <li class="social-media__item">
                        <a href="#" class="social-media__link">
                            <i class="bi bi-instagram"></i>
                        </a>
                        </li>
                    <li class="social-media__item">
                        <a href="#" class="social-media__link"><i class="bi bi-twitter-x"></i></a>
                    </li>

                </ul>

                <!--theme-switch-->
                <div class="theme-switch">
                    <label class="theme-switch__label" for="checkbox">
                        <input type="checkbox" id="checkbox" class="theme-switch__checkbox">
                        <span class="theme-switch__slider round ">
                            <i class="bi bi-sun icon-light theme-switch__icon theme-switch__icon--light"></i>
                            <i class="bi bi-moon icon-dark theme-switch__icon theme-switch__icon--dark"></i>
                        </span>
                    </label>
                </div>

                <!--search-icon-->
                <div class="search-icon">
                    <a href="#search" class="search-icon__link">
                        <i class="bi bi-search search-icon__icon"></i>
                    </a>
                </div>

                <!--navbar-toggler-->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler__icon"></span>
                </button>
            </div>
        </div>
    </div>
</header>

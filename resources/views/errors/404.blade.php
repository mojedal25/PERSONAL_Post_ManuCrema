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

        <section class="page404">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 m-auto">
                        <div class="page404__content">

                            <div class="page404__image">
                                <img src="{{ asset('assets/img/pic/error.png') }}" alt="Error 404" class="page404__img">
                            </div>
                            <div class="page404__info">
                                <h2 class="page404__title">¡Ups! Esta página no se puede encontrar</h2>
                                <p class="page404__desc">La página que estás buscando no existe. Es posible que haya sido eliminada o que nunca haya existido.</p>
                                <a href="{{ url('/') }}" class="btn-custom">Volver al Inicio</a>
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

    @include('partials.js')

</body>

</html>


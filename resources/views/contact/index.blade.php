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

        <!--about-us-->
        <section class="m-top mb-10">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-9 m-auto">
                        <div class="about-us">
                            <!-- Imagen de "Acerca de" -->
                            <div class="about-us__image">
                                <img src="{{ asset('assets/img/pic/about-us.jpg') }}" alt="Acerca de AnderCode" class="about-us__img">
                            </div>
                            <!-- Descripción de AnderCode -->
                            <div class="about-us__description">
                                <p class="about-us__description-text">
                                    Bienvenido a AnderCode, un espacio dedicado a la enseñanza y creación de soluciones tecnológicas innovadoras. Nos especializamos en desarrollo web, aplicaciones móviles y formación en tecnologías modernas.
                                </p>
                                <p class="about-us__description-text">
                                    Nuestro objetivo es democratizar el conocimiento y capacitar a la próxima generación de desarrolladores con herramientas prácticas y útiles para el mundo laboral actual. En AnderCode, creemos que el aprendizaje puede ser divertido, accesible y significativo.
                                </p>
                                <p class="about-us__description-text">
                                    Desde la creación de cursos personalizados hasta el diseño de proyectos reales, estamos comprometidos en ayudarte a alcanzar tus metas tecnológicas. Acompáñanos y forma parte de una comunidad apasionada por la innovación y el desarrollo.
                                </p>
                                <!-- Cita Inspiradora -->
                                <div class="about-us__qoute">
                                    <i class="bi bi-quote about-us__qoute-icon"></i>
                                    <h3 class="about-us__qoute-item">
                                        "La tecnología es una herramienta para cambiar el mundo, pero también para cambiar vidas. Creemos en su potencial para democratizar oportunidades."
                                    </h3>
                                    <small class="about-us__qoute-author">AnderCode Team</small>
                                </div>
                                <p class="about-us__description-text">
                                    Con sede en Lima, Perú, estamos dedicados a ofrecer contenido de calidad en español, adaptado a las necesidades de nuestros estudiantes y clientes. Nuestro enfoque es práctico y orientado a resultados, para que siempre estés un paso adelante en el mundo de la tecnología.
                                </p>
                                <p class="about-us__description-text">
                                    Gracias por visitarnos y por confiar en AnderCode como tu aliado en el aprendizaje y la innovación tecnológica.
                                </p>
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
    <div class="search__box">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 m-auto col-md-8 col-sm-11">
                    <div class="search__content ">
                        <button type="button" class="search__box-btn-close">
                            <i class="bi bi-x-lg"></i>
                        </button>
                        <form class="search__form" action="search-page.html">
                            <input type="search" class="search__form-input" value="" placeholder="What are you looking for?">
                            <button type="submit" class="search__form-btn-search">search</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @include('partials.js')

</body>

</html>

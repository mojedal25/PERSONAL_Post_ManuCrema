@extends('layouts.base')

@section('title', 'ManuCrema | Blog')

@section('content')

    <section class="banner">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8">
                    <div class="banner__content ">
                        <h3 class="banner__title">Bienvenido, {{ auth()->user()->name }}</h3>
                        <p class="banner__subtitle"> {{ auth()->user()->description }}
                        </p>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                        <br/>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--newslettre-->
    @include('partials.newslettre')
@endsection

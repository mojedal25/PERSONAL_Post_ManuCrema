@extends('layouts.base')

@section('title', 'ManuCrema | Blog')

@section('content')
    <section class="m-top mb-60">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 m-auto">
                    <div class="widget">
                        <h5 class="widget__title">Editar Perfil</h5>

                            @if(session('status'))
                                <div class="alert alert-success">
                                    {{ session('status') }}
                                </div>
                            @endif

                            <form action="{{ route('profile.update') }}" class="widget__form" method="POST">
                                @csrf
                                @method('PATCH')

                                <div class="form-group">
                                    <input type="text" class="form-control widget__form-input" placeholder="Nombre Completo*" name="name" value="{{ old('name', auth()->user()->name) }}" required autofocus>
                                </div>

                                <div class="form-group">
                                    <input type="email" class="form-control widget__form-input" placeholder="Correo electrónico*" name="email" value="{{ old('email', auth()->user()->email) }}" required readonly>
                                </div>

                                <div class="form-group">
                                    <input type="password" class="form-control widget__form-input" placeholder="Nueva Contraseña (opcional)" name="password">
                                </div>

                                <div class="form-group">
                                    <textarea class="form-control widget__form-input" placeholder="Descripción" name="description">{{ old('description', auth()->user()->description) }}</textarea>
                                </div>

                                <div class="form-group">
                                    <input type="url" class="form-control widget__form-input" placeholder="URL de Facebook" name="urlfacebook" value="{{ old('urlfacebook', auth()->user()->urlfacebook) }}">
                                </div>

                                <div class="form-group">
                                    <input type="url" class="form-control widget__form-input" placeholder="URL de Instagram" name="urlinstagram" value="{{ old('urlinstagram', auth()->user()->urlinstagram) }}">
                                </div>

                                <div class="form-group">
                                    <input type="url" class="form-control widget__form-input" placeholder="URL de X" name="urlx" value="{{ old('urlx', auth()->user()->urlx) }}">
                                </div>

                                <div class="widget__form-btn">
                                    <button type="submit" class="btn-custom">Actualizar Perfil</button>
                                </div>



                                @error('name')
                                    <p class="text-danger">{{ $message }}</p>
                                @enderror

                                @error('email')
                                    <p class="text-danger">{{ $message }}</p>
                                @enderror

                                @error('password')
                                    <p class="text-danger">{{ $message }}</p>
                                @enderror
                            </form>

                    </div>
                </div>

            </div>

        </div>
    </section>

    @include('partials.newslettre')
@endsection

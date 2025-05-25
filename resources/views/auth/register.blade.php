@extends('layouts.base')

@section('title', 'ManuCrema | Blog')

@section('content')

    <!--register-->
        <section class="m-top  mb-60">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 m-auto">
                        <div class="widget">
                            <h5 class="widget__title">Registro</h5>
                            <form class="widget__form contact_form" method="POST" action="{{ route('register') }}">
                            @csrf {{-- Token CSRF para seguridad --}}

                            <div class="form-group">
                                <input type="text" class="form-control widget__form-input" placeholder="Nombre de usuario*" name="name" value="{{ old('name') }}" required>
                                @error('name')
                                    <p class="text-danger">{{ $message }}</p>
                                @enderror
                            </div>

                            <div class="form-group">
                                <input type="email" class="form-control widget__form-input" placeholder="Correo electrónico*" name="email" value="{{ old('email') }}" required>
                                @error('email')
                                    <p class="text-danger">{{ $message }}</p>
                                @enderror
                            </div>

                            <div class="form-group">
                                <input type="password" class="form-control widget__form-input" placeholder="Contraseña*" name="password" required>
                                @error('password')
                                    <p class="text-danger">{{ $message }}</p>
                                @enderror
                            </div>

                            <div class="form-group">
                                <input type="password" class="form-control widget__form-input" placeholder="Confirmar contraseña*" name="password_confirmation" required>
                            </div>

                            <div class="widget__form-controls form-group">
                                <div class="widget__form-controls-checkbox">
                                    <input type="checkbox" class="widget__form-controls-input" id="terms" required>
                                    <label class="widget__form-controls-label" for="terms">Acepto los <a href="#" class="widget__form-link">términos y condiciones</a></label>
                                </div>
                            </div>

                            <div class="widget__form-btn">
                                <button type="submit" class="btn-custom">Registrarse ahora</button>
                            </div>

                            <p class="widget__form-text">¿Ya tienes una cuenta?
                                <a href="{{ route('login') }}" class="widget__form-link">Iniciar sesión</a>
                            </p>
                        </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

@endsection

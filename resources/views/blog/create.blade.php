@extends('layouts.base')

@section('title', 'ManuCrema | Blog')

@section('content')

    <section class="banner">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="banner__content">
                        <h3>Nuevo Blog</h3>
                        <form action="{{ route('posts.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf

                            <div class="form-group">
                                <label for="title">Título:</label>
                                <input type="text" id="title" name="title" class="form-control" value="{{ old('title') }}" required>
                                @error('title') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="summary">Resumen:</label>
                                <textarea id="summary" name="summary" class="form-control" required>{{ old('summary') }}</textarea>
                                @error('summary') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="content">Contenido:</label>
                                <textarea id="content" name="content" class="form-control" required>{{ old('content') }}</textarea>
                                @error('content') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="category_id">Categoría:</label>
                                <select id="category_id" name="category_id" class="form-control" required>
                                    <option value="">Seleccione una categoría</option>
                                    @foreach($categories as $category)
                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                    @endforeach
                                </select>
                                @error('category_id') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label>Etiquetas:</label><br>
                                @foreach($tags as $tag)
                                    <label>
                                        <input type="checkbox" name="tags[]" value="{{ $tag->id }}"> {{ $tag->name }}
                                    </label>
                                @endforeach
                            </div>

                            <div class="form-group">
                                <label for="featured_image">Imagen destacada:</label>
                                <input type="file" id="featured_image" name="featured_image" class="form-control">
                                @error('featured_image') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="status">Estado:</label>
                                <select id="status" name="status" class="form-control" required>
                                    <option value="draft">Borrador</option>
                                    <option value="published">Publicado</option>
                                </select>
                            </div>

                            <br/>

                            <button type="submit" class="btn btn-primary">Guardar Post</button>
                            <a href="{{ route('posts.list') }}" class="btn btn-secondary">Cancelar</a>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--newslettre-->
    @include('partials.newslettre')

@endsection

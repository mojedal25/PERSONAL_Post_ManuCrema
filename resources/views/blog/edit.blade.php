@extends('layouts.base')

@section('title', 'ManuCrema | Blog')

@section('content')

    <section class="banner">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="banner__content">

                        <h3>Editar Blog</h3>

                        <form action="{{ route('posts.update', $post->id) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')

                            <div class="form-group">
                                <label for="title">Título:</label>
                                <input type="text" id="title" name="title" class="form-control" value="{{ old('title', $post->title) }}" required>
                                @error('title') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="summary">Resumen:</label>
                                <textarea id="summary" name="summary" class="form-control" required>{{ old('summary', $post->summary) }}</textarea>
                                @error('summary') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="content">Contenido:</label>
                                <textarea id="content" name="content" class="form-control" required>{{ old('content', $post->content) }}</textarea>
                                @error('content') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="category_id">Categoría:</label>
                                <select id="category_id" name="category_id" class="form-control" required>
                                    @foreach($categories as $category)
                                        <option value="{{ $category->id }}" {{ $post->categories->contains($category->id) ? 'selected' : '' }}>
                                            {{ $category->name }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('category_id') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label>Etiquetas:</label><br>
                                @foreach($tags as $tag)
                                    <label>
                                        <input type="checkbox" name="tags[]" value="{{ $tag->id }}"
                                            {{ $post->tags->contains($tag->id) ? 'checked' : '' }}>
                                        {{ $tag->name }}
                                    </label>
                                @endforeach
                            </div>

                            <div class="form-group">
                                <label for="featured_image">Imagen destacada:</label>
                                <input type="file" id="featured_image" name="featured_image" class="form-control">
                                @if($post->featured_image)
                                    <img src="{{ asset('storage/' . $post->featured_image) }}" class="mt-2" width="150">
                                @endif
                                @error('featured_image') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="form-group">
                                <label for="status">Estado:</label>
                                <select id="status" name="status" class="form-control" required>
                                    <option value="draft" {{ $post->status == 'draft' ? 'selected' : '' }}>Borrador</option>
                                    <option value="published" {{ $post->status == 'published' ? 'selected' : '' }}>Publicado</option>
                                </select>
                            </div>

                            <br/>

                            <button type="submit" class="btn btn-primary">Actualizar Blog</button>
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

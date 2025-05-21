<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;
use App\Models\Tag;

class PostController extends Controller
{
    public function index(){
        // Obtener los últimos 4 posts ordenados por fecha de publicación
        $latestPosts = Post::with(['user', 'categories'])->latest('published_at')->take(4)->get();

        // Obtener todos los posts paginados (9 por página)
        $allPosts = Post::with(['user', 'categories'])->latest('published_at')->paginate(9);

        // Pasar los posts a la vista
        return view('welcome', compact('latestPosts', 'allPosts'));
    }

    public function show($id, $slug){
        // Buscar el post por ID
        $post = Post::with(['user', 'categories'])->findOrFail($id);

        $latestPosts = Post::latest('published_at')->take(4)->get();

        $categories = Category::with('post')->get();

        // Obtener el post anterior
        $previousPost = Post::where('id', '<', $post->id)
                            ->orderBy('id', 'desc')
                            ->first();

        // Obtener el siguiente post
        $nextPost = Post::where('id', '>', $post->id)
                        ->orderBy('id', 'asc')
                        ->first();

        // Verificar que el slug en la URL coincida con el slug del post
        if ($post->slug !== $slug) {
            abort(404); // Mostrar error 404 si no coincide
        }

        // Retornar la vista con los datos del post
        return view('blog.view', compact('post','latestPosts','categories','previousPost','nextPost'));
    }

    public function blog(Request $request, $slug = null){
        $search = $request->input('search');
        $category = null;
        $tag = null;

        // Construir la consulta base
        $query = Post::with(['user', 'categories'])->latest('published_at');

        // Filtrar por categoría si se proporciona un slug
        if ($request->routeIs('posts.category') && $slug) {
            $category = Category::where('slug', $slug)->firstOrFail();
            $query->whereHas('categories', function ($q) use ($category) {
                $q->where('categories.id', $category->id); // Evitar ambigüedad
            });
        }

        // Filtrar por tag si se proporciona un slug
        if ($request->routeIs('posts.tag') && $slug) {
            $tag = Tag::where('slug', $slug)->firstOrFail();
            $query->whereHas('tags', function ($q) use ($tag) {
                $q->where('tags.id', $tag->id); // Evitar ambigüedad
            });
        }

        // Aplicar búsqueda si hay un término de búsqueda
        if ($search) {
            $query->where(function ($q) use ($search) {
                $q->where('title', 'LIKE', '%' . $search . '%')
                ->orWhere('content', 'LIKE', '%' . $search . '%');
            });
        }

        // Obtener los posts con paginación
        $allPosts = $query->paginate(6);

        // Obtener categorías, tags y últimos posts
        $categories = Category::with('post')->get();
        $tags = Tag::all();
        $latestPosts = Post::latest('published_at')->take(4)->get();

        // Retornar la vista
        return view('blog.index', compact('allPosts', 'categories', 'latestPosts', 'tags', 'category', 'tag', 'search'));
    }


}

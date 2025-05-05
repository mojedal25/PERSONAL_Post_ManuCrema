<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;
use App\Models\Tag;

class PostController extends Controller
{
    public function index(){
        //Obtener los últimos 4 posts ordenador por fecha de publicación
        $latesPosts = Post::with(['user', 'categories'])->latest('published_at')->take(4)->get();

        //Obtener todos los posts paginados (9 por página)
        $allPosts = Post::with(['user', 'categories'])->latest('published_at')->paginate(9);

        //Pasar los post a la vista
        return view('welcome', compact('latesPosts', 'allPosts'));
    }

    public function show($id, $slug){
        //Buscar el post por ID
        $post = Post::with(['user','categories'])->findOrFail($id);

        $latesPosts = Post::latest('published_at')->take(4)->get();

        $categories = Category::with('post')->get();

        // Obtener el post anterior
        $previousPost = Post::where('id', '<', $post->id)
                            ->orderBy('id', 'desc')
                            ->first();

        // Obtener el siguiente post
        $nextPost = Post::where('id', '>', $post->id)
                        ->orderBy('id', 'asc')
                        ->first();

        //Verificar que el slug en la URL coincida con el slug del post
        if($post->slug !== $slug){
            abort(404); //Mostrar error 404 si no coincide
        }

        //Retomar la vista con los datos del post
        return view('blog.view', compact('post','latesPosts','categories','previousPost','nextPost'));
    }

    public function blog(){
        // Obtener los posts con paginacion (9 por página)
        $allPosts = Post::with(['user', 'categories'])->latest('published_at')->paginate(6);

        $categories = Category::with('post')->get();

        $tags = Tag::all();

        $latesPosts = Post::latest('published_at')->take(4)->get();

        //Retornar la Vista con los datos
        return view('blog.index', compact('allPosts','categories','latesPosts','tags'));
    }
}

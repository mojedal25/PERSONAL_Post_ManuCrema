<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;
use App\Models\Tag;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

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

    public function list(){
        // Obtener los posts del usuario autenticado
        $posts = Post::where('user_id', Auth::id())->latest()->paginate(10);

        return view('blog.list', compact('posts'));
    }

    public function create(){
        // Obtener todas las categorías y tags disponibles para la selección
        $categories = Category::all();
        $tags = Tag::all();

        return view('blog.create', compact('categories', 'tags'));
    }

    public function store(Request $request){
        // Validar los datos del formulario
        $request->validate([
            'title' => 'required|string|max:255',
            'summary' => 'required|string|max:500',
            'content' => 'required|string',
            'category_id' => 'required|exists:categories,id',
            'tags' => 'array',
            'tags.*' => 'exists:tags,id',
            'featured_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'status' => 'required|in:draft,published',
        ]);

        // Procesar la imagen si se ha subido
        $imagePath = null;
        if ($request->hasFile('featured_image')) {
            // Guardar la imagen en la carpeta public/blog y obtener la ruta relativa
            $imagePath = $request->file('featured_image')->store('blog', 'public');
        }

        // Crear el nuevo post
        $post = Post::create([
            'user_id' => Auth::id(),
            'title' => $request->title,
            'slug' => Str::slug($request->title),
            'summary' => $request->summary,
            'content' => $request->content,
            'featured_image' => $imagePath,
            'status' => $request->status,
            'published_at' => $request->status === 'published' ? now() : null,
        ]);

        // Asociar el post con la categoría seleccionada
        $post->categories()->attach($request->category_id);

        // Asociar los tags seleccionados
        if ($request->has('tags')) {
            $post->tags()->attach($request->tags);
        }

        // Redireccionar con mensaje de éxito
        return redirect()->route('posts.list')->with('success', '¡Post creado exitosamente!');
    }

    public function edit($id){
        // Buscar el post por su ID y asegurar que pertenece al usuario autenticado
        $post = Post::where('id', $id)->where('user_id', Auth::id())->firstOrFail();

        // Obtener todas las categorías y etiquetas para la selección
        $categories = Category::all();
        $tags = Tag::all();

        return view('blog.edit', compact('post', 'categories', 'tags'));
    }

    public function update(Request $request, $id){
        // Validar los datos del formulario
        $request->validate([
            'title' => 'required|string|max:255',
            'summary' => 'required|string|max:500',
            'content' => 'required|string',
            'category_id' => 'required|exists:categories,id',
            'tags' => 'array',
            'tags.*' => 'exists:tags,id',
            'featured_image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'status' => 'required|in:draft,published',
        ]);

        // Encontrar el post a editar y verificar la propiedad del usuario autenticado
        $post = Post::where('id', $id)->where('user_id', Auth::id())->firstOrFail();

        // Procesar la imagen si se ha subido una nueva
        if ($request->hasFile('featured_image')) {
            $imagePath = $request->file('featured_image')->store('blog', 'public');
            $post->featured_image = $imagePath;
        }

        // Actualizar los campos del post
        $post->update([
            'title' => $request->title,
            'slug' => \Str::slug($request->title),
            'summary' => $request->summary,
            'content' => $request->content,
            'status' => $request->status,
            'published_at' => $request->status === 'published' ? now() : null,
        ]);

        // Actualizar la categoría
        $post->categories()->sync([$request->category_id]);

        // Actualizar las etiquetas seleccionadas
        if ($request->has('tags')) {
            $post->tags()->sync($request->tags);
        } else {
            $post->tags()->detach();
        }

        // Redireccionar con mensaje de éxito
        return redirect()->route('posts.list')->with('success', '¡Post actualizado exitosamente!');
    }

    public function destroy($id){
        // Encontrar el post y verificar que pertenezca al usuario autenticado
        $post = Post::where('id', $id)->where('user_id', Auth::id())->firstOrFail();

        // Eliminar la imagen si existe
        if ($post->featured_image) {
            \Storage::delete('public/' . $post->featured_image);
        }

        // Eliminar el post de la base de datos
        $post->delete();

        return redirect()->route('posts.list')->with('success', '¡Post eliminado exitosamente!');
    }
}

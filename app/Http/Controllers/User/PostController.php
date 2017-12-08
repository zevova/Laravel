<?php
namespace App\Http\Controllers\User;

use Illuminate\Routing\Controller as BaseController;
use App\Post;

class PostController extends BaseController
{
    public function index() {
        //$posts = Post::all()->toArray();
        $posts = Post::with('user')->get();
        return view('User.post.index', compact('posts'));
    }

    public function show($id)
    {
        $post = Post::find($id);
        return view('User.post.show', compact('post'));
    }

}

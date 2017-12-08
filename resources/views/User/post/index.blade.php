@extends('User.layouts.app')

@section('content')
    @foreach($posts as $post)
        <div class="row">
            <div class="col-md-12">
                <a href="/user/post/{{$post['id']}}"><h2>{{$post['title']}}</h2></a>
                <div class="row">
                    <div class="col-md-4">
                        <img src="/storage/{{$post['image']}}"style="width: 100%;"/>
                    </div>
                    <div class="col-md-8">
                        <?= $post->user->name ?>
                        <?= $post->body ?>
                        <?= ($post->created_at)->format('d-m-Y'); ?>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
@endsection

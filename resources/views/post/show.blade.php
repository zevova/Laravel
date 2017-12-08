@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">

                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <a href="/post/{{$post->id}}"><h2>{{$post->title}}</h2></a>
                            <div class="row">
                                <div class="col-md-4">
                                    <img src="/storage/{{$post->image}}"style="width: 100%;"/>
                                </div>
                                <div class="col-md-8">
                                    <?= $post->user->name ?>
                                    <?= $post->body ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

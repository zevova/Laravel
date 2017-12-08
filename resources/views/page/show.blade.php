@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">

                <div class="panel-heading">{{$page->title}}</div>

                <div class="panel-body">
                    <div class="row">
                        @if($page->image !== null)
                            <div class="col-md-3"><img src="/storage/{{$page->image}}"style="width: 100%;"/></div>
                            <div class="col-md-9"><?= $page->body ?></div>
                        @else
                            <div class="col-md-12"><?= $page->body ?></div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

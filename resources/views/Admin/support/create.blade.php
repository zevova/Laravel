@extends('voyager::master')

@section('page_title', __('Support | add'))

@section('page_header')
    <h1 class="page-title"><i class="icon voyager-umbrella"></i> {{ __('Support') }}</h1>
    @include('voyager::multilingual.language-selector')
@stop

@section('content')
    <div class="page-content container-fluid">
        <form class="form-add" role="form" action="" method="POST" enctype="multipart/form-data">
            {{ csrf_field() }}
            <div class="row">
                <div class="col-md-8">
                    <!-- ### TITLE ### -->
                    <div class="panel">
                        <div class="panel-body">
                            <div class="form-group @if ($errors->first('title')) has-error @endif">
                                <label for="name">{{ __('voyager.post.title') }}</label>
                                <input type="text" class="form-control" id="title" name="title" placeholder="title" value="">
                                @if ($errors->first('title')) <p class="bg-danger">{{ $errors->first('title') }}</p> @endif
                            </div>

                            <div class="form-group @if ($errors->first('text')) has-error @endif">
                                <label for="name">{{ __('voyager.post.content') }}</label>
                                <textarea class="form-control richTextBox" id="text" name="text" style="border:0px;"></textarea>
                                @if ($errors->first('text')) <p class="bg-danger">{{ $errors->first('text') }}</p> @endif
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel panel-bordered panel-warning">
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="name">{{ __('voyager.post.status') }}</label>
                                <select class="form-control" name="status">
                                    <option value="0">{{ __('voyager.post.status_pending') }}</option>
                                    <option value="1" >{{ __('voyager.post.status_published') }}</option>
                                    <option value="2">{{ __('voyager.post.status_draft') }}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="name">{{ __('voyager.generic.image') }}</label>
                                <input type="file" name="image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <button type="submit" class="btn btn-primary pull-right">
                <i class="icon wb-plus-circle"></i> {{ __('voyager.post.new') }}
            </button>
        </form>

    </div>
@stop

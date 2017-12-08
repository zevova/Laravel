@extends('voyager::master')

@section('page_title', __('voyager.generic.menu_builder'))

@section('page_header')
    <div>
        <h1 class="page-title pull-left"><i class="icon voyager-umbrella"></i>{{ __('Support') }}</h1>
        <h1 class="page-title pull-right">
            <a href="{{ action('Admin\SupportController@create') }}" class="btn btn-success pull-right"><i class="voyager-plus"></i> {{ __('voyager.generic.add_new') }}</a>
        </h1>
    </div>
@stop

@section('content')
<div class="page-content container-fluid">
    @include('voyager::alerts')
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-bordered">
                <div class="panel-body">
                    <table id="dataTable" class="table table-hover">
                        <thead>
                        <tr>
                            <th>Title</td>
                            <th>image</th>
                            <th>Status</th>
                            <th>Date</th>
                            <th class="actions">{{ __('voyager.generic.actions') }}</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($blocks as $block)
                            <tr>
                                <td>{{ $block->title }}</td>
                                <td>@if(isset($block->image)) <img src="{{ Voyager::image($block->image) }}" style="width:100px" /> @endif</td>
                                <td>@switch($block->status)
                                    @case(0) <span class="label label-warning">Pending</span> @break
                                    @case(1) <span class="label label-success">Published</span> @break
                                    @case(2) <span class="label label-warning">Draft</span> @break
                                @endswitch</td>
                                <td>{{ ($block->created_at)->format('d.m.Y') }}</td>
                                <td class="no-sort no-click" id="bread-actions">
                                    <a href="javascript:;" title="Delete" class="btn btn-sm btn-danger pull-right delete" data-id="{{$block->id}}" id="delete-{{$block->id}}">
                                        <i class="voyager-trash"></i> <span class="hidden-xs hidden-sm">Delete</span>
                                    </a>
                                    <a href="{{ action('Admin\SupportController@edit', $block->id) }}" title="Edit" class="btn btn-sm btn-primary pull-right edit">
                                        <i class="voyager-edit"></i> <span class="hidden-xs hidden-sm">Edit</span>
                                    </a>
                                    <a href="{{ action('Admin\SupportController@show', $block->id) }}" title="View" class="btn btn-sm btn-warning pull-right">
                                        <i class="voyager-eye"></i> <span class="hidden-xs hidden-sm">View</span>
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal modal-danger fade" tabindex="-1" id="delete_modal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="{{ __('voyager.generic.close') }}">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">
                    <i class="voyager-trash"></i> {{ __('voyager.generic.delete_question') }}?
                </h4>
            </div>
            <div class="modal-footer">
                <form action="{{ action('Admin\SupportController@destroy', null) }}" id="delete_form" method="POST">
                    {{ method_field("DELETE") }}
                    {{ csrf_field() }}
                    <input type="submit" class="btn btn-danger pull-right delete-confirm" value="{{ __('voyager.generic.delete_this_confirm') }}">
                </form>
                <button type="button" class="btn btn-default pull-right" data-dismiss="modal">{{ __('voyager.generic.cancel') }}</button>
            </div>
        </div>
    </div>
</div>
@stop

@section('javascript')
    <!-- DataTables -->
    <script>
        $(document).ready(function () {
            $('#dataTable').DataTable({
                "order": [],
                "language": {!! json_encode(__('voyager.datatable'), true) !!}
                @if(config('dashboard.data_tables.responsive')), responsive: true @endif
            });
        });

        var deleteFormAction;
        $('td').on('click', '.delete', function (e) {
            var form = $('#delete_form')[0];

            if (!deleteFormAction) { // Save form action initial value
                deleteFormAction = form.action;
            }

            form.action = deleteFormAction.match(/\/[0-9]+$/)
                ? deleteFormAction.replace(/([0-9]+$)/, $(this).data('id'))
                : deleteFormAction + '/' + $(this).data('id');
            console.log(form.action);

            $('#delete_modal').modal('show');
        });
    </script>
@stop



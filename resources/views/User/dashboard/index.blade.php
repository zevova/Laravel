@extends('User.layouts.app')

@section('css')

/* clear fix */
.grid:after {
content: '';
display: block;
clear: both;
}

/* ---- .grid-item ---- */

.grid-item {
float: left;
width: 400px;
height: 400px;
background: #C09;
border: 2px solid hsla(0, 0%, 0%, 0.5);
}

.grid-item--width2 { width: 200px; }
.grid-item--height2 { height: 200px; }

.grid-item:hover {
border-color: hsla(0, 0%, 100%, 0.5);
cursor: move;
}

.grid-item.is-dragging,
.grid-item.is-positioning-post-drag {
background: #C90;
z-index: 2;
}

.packery-drop-placeholder {
outline: 3px dashed hsla(0, 0%, 0%, 0.5);
outline-offset: -6px;
-webkit-transition: -webkit-transform 0.2s;
transition: transform 0.2s;
}

@endsection

@section('content')
<div class="grid">
    <div class="grid-item col-md-6" id="1">...</div>
    <div class="grid-item col-md-6" id="2">...</div>
    <div class="grid-item col-md-6" id="3">...</div>
    <div class="grid-item col-md-6" id="4">...</div>
    <div class="grid-item col-md-6" id="5">...</div>
    <div class="grid-item col-md-6" id="6">...</div>
    <div class="grid-item col-md-6" id="7">...</div>
</div>
@endsection

@section('jquery')
var $grid = $('.grid').packery({
    itemSelector: '.grid-item',
    columnWidth: 200,
    gutter: 10,
});
$grid.find('.grid-item').each( function( i, gridItem ) {
    var draggie = new Draggabilly( gridItem );
    $grid.packery( 'bindDraggabillyEvents', draggie );
});
$grid.on('dragItemPositioned', function(event, items) {
    var elements = [];
    $($grid.packery('getItemElements')).each(function(i, item) {
        console.log({item.id});
    });
});
@endsection
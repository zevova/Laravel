@if(!isset($innerLoop))
<ul class="page-sidebar-menu  page-header-fixed page-sidebar-menu-hover-submenu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
@else
<ul class="sub-menu">
@endif

@foreach ($items as $item)
    @php
    $listItemClass = [];
    $styles = null;
    $hasChildren = false;
    $caret = '';

    if(isset($options->icon) && $options->icon == true){
        $icon = '<i class="' . $item->icon_class . '"></i>';
    }

    // Current page
    if (url($item->link()) == url()->current()){
        $listItemClass = 'nav-item active open';
    } else{
        $listItemClass = 'nav-item';
    }

    if(!$item->children->isEmpty()) {
        $link =  'javascript:;';
        $caret = '<span class="arrow open"></span>';
    } else{
        $link =  url($item->link());
    }

    @endphp

    <li class="{{ $listItemClass }}">
        <a href="{{ $link }}" class="nav-link nav-toggle">
            {!! $icon !!}
            <span class="title">{{ $item->title }}</span>
            <span class="selected"></span>
            {!! $caret !!}
        </a>
        @if(!$item->children->isEmpty())
            @include('User.layouts.elements.menu', ['items' => $item->children, 'options' => $options, 'innerLoop' => true])
        @endif
    </li>
@endforeach

</ul>
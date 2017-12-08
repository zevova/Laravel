<ul class="page-breadcrumb">
    @if(count(Request::segments()) == 1)
        <li class="active"><i class="fa fa-home"></i> {{ __('voyager.generic.dashboard') }}</li>
    @else
        <li class="active">
            <a href="{{ url('user')}}"><i class="fa fa-home"></i> {{ __('voyager.generic.dashboard') }}</a>
        </li>
    @endif
    <?php $breadcrumb_url = url(''); ?>
    @for($i = 1; $i <= count(Request::segments()); $i++)
        <?php $breadcrumb_url .= '/' . Request::segment($i); ?>
        @if(Request::segment($i) != 'user' && !is_numeric(Request::segment($i)) && !in_array(Request::segment($i), LaravelLocalization::getSupportedLanguagesKeys()))
            @if($i < count(Request::segments()) & $i > 0)
                <li class="active"><i class="fa fa-angle-right"></i><a href="{{ $breadcrumb_url }}">{{ ucwords(str_replace('-', ' ', str_replace('_', ' ', Request::segment($i)))) }}</a></li>
            @else
                <li><i class="fa fa-angle-right"></i>{{ ucwords(str_replace('-', ' ', str_replace('_', ' ', Request::segment($i)))) }}</li>
            @endif
        @endif
    @endfor
</ul>
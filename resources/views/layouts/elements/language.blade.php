<!-- Language -->
<li class="dropdown">
    <?php $lang = LaravelLocalization::getCurrentLocaleAttr(); ?>
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><img src="/img/flags/24/<?= strtolower($lang['flag'])?>.png"/> {{ strtoupper($lang['alias']) }} <span class="caret"></span></a>
    <ul class="dropdown-menu" role="menu">
        @foreach(LaravelLocalization::getSupportedLocales() as $localeCode  => $properties)
            <li><a rel="alternate" hreflang="{{ $localeCode }}" href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}">
                    @if ($properties['flag']) <img src="/img/flags/24/<?= strtolower($properties['flag'])?>.png"/> @endif {{  $properties['native'] }}
            </a></li>
        @endforeach
    </ul>
</li>
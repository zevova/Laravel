<!-- BEGIN LANGUAGE BAR -->
<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
<li class="dropdown dropdown-language">
    <?php $lang = LaravelLocalization::getCurrentLocaleAttr(); ?>
        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
        <img alt="" src="/img/flags/24/<?= strtolower($lang['flag'])?>.png"/>
        <span class="langname">{{ strtoupper($lang['alias']) }}</span>
        <i class="fa fa-angle-down"></i>
    </a>
    <ul class="dropdown-menu">
        @foreach(LaravelLocalization::getSupportedLocales() as $localeCode  => $properties)
            <li><a href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}">
                    @if ($properties['flag']) <img src="/img/flags/24/<?= strtolower($properties['flag'])?>.png"/> @endif {{  $properties['native'] }}
            </a></li>
        @endforeach
    </ul>
</li>
<!-- END LANGUAGE BAR -->

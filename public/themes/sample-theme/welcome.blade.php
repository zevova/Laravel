@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="content">
            <div class="title m-b-md">
                Laravel
                <?php var_dump(LaravelLocalization::getCurrentLocaleAttr()) ?>
                <?php var_dump(LaravelLocalization::getDefaultLocale()) ?>
                <?php var_dump(LaravelLocalization::getCurrentLocale()) ?>
                <?php var_dump(LaravelLocalization::getCurrentLocaleName()) ?>
                <?php var_dump(LaravelLocalization::getCurrentLocaleDirection()) ?>
                <?php var_dump(LaravelLocalization::getCurrentLocaleScript()) ?>
                <?php var_dump(LaravelLocalization::getCurrentLocaleRegional()) ?>
                <?php var_dump(LaravelLocalization::getSupportedLocales()) ?>
            </div>

        </div>
    </div>
@endsection
<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <style>
        .mt-cookie-consent-bar {
            position: fixed;
            bottom: 0;
            z-index: 10101;
            padding: 10px 25px;
            width: 100%;
            background: rgba(0,0,0,.9);
            color: #fff;
            left: 0;
            right: 0;
        }
        .mt-cookie-consent-bar .mt-cookie-consent-bar-holder {
            display: table;
            width: 100%;
        }
        .mt-cookie-consent-bar .mt-cookie-consent-bar-holder .mt-cookie-consent-bar-content {
            display: table-cell;
            text-align: left;
            vertical-align: middle;
        }
        .mt-cookie-consent-bar .mt-cookie-consent-bar-holder .mt-cookie-consent-bar-action {
            display: table-cell;
            text-align: right;
            vertical-align: middle;
        }
    </style>
</head>
<body>
    <div id="app">
        @include('layouts.elements.menu')

        @if (session('status'))
            <div class="alert alert-success">
                {{ session('status') }}
            </div>
        @endif

        @yield('content')
    </div>
    @include('layouts.elements.cookiebar')
    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>
    <script>
        jQuery(document).ready(function() {
            $('.mt-cookie-consent-bar').cookieBar({ closeButton : '.mt-cookie-consent-bar-action' });
        });
    </script>
    {!! Voyager::setting('site.google_analytics_code') !!}
</body>
</html>
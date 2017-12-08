<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="{{ app()->getLocale() }}">
    <!--<![endif]-->

    <!-- BEGIN HEAD -->
    <head>
        <meta charset="utf-8" />
        <title>{{ config('app.name', 'Laravel') }} | @yield('title')</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #2 for statistics, charts, recent events and reports" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
        <link href="/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <link href="/plugins/bootstrap-toastr/build/toastr.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
        <link href="/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css" />
        <link href="/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="/css/user/components-rounded.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="/css/user/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="/css/user/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="/css/user/themes/blue.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="/css/user/custom.css" rel="stylesheet" type="text/css" />
        <!-- END THEME LAYOUT STYLES -->
        @yield('cssfile')
        <link rel="shortcut icon" href="/img/favicon/favicon.ico" />
        <style>
            #voyager-loader{
                background:#F9F9F9;
                position:fixed;
                width:100%;
                height:100%;
                left:0px;
                top:0px;
                z-index:99;
            }

            #voyager-loader img{
                width:100px;
                height:100px;
                position:absolute;
                top:50%;
                left:50%;
                margin-left:-150px;
                margin-right:-50px;
                -webkit-animation:spin 1s linear infinite;
                -moz-animation:spin 1s linear infinite;
                animation:spin 1s linear infinite;
            }
        @yield('css')
        </style>
    </head>
    <!-- END HEAD -->

    <body class="page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid">

        <div id="voyager-loader">
            <?php $admin_loader_img = Voyager::setting('admin.loader', ''); ?>
            @if($admin_loader_img == '')
                <img src="{{ url('css/img/loader.gif') }}" alt="Voyager Loader">
            @else
                <img src="{{ Voyager::image($admin_loader_img) }}" alt="Voyager Loader">
            @endif
        </div>

        <!-- BEGIN HEADER -->
        <div class="page-header navbar navbar-fixed-top">
            <!-- BEGIN HEADER INNER -->
            @include('User.layouts.elements.header')
            <!-- END HEADER INNER -->
        </div>
        <!-- END HEADER -->
        <!-- BEGIN HEADER & CONTENT DIVIDER -->
        <div class="clearfix"> </div>
        <!-- END HEADER & CONTENT DIVIDER -->
        <!-- BEGIN CONTAINER -->
        <div class="page-container">
            <!-- BEGIN SIDEBAR -->
            <div class="page-sidebar-wrapper">
                <!-- END SIDEBAR -->
                <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                <div class="page-sidebar navbar-collapse collapse">
                    <!-- BEGIN SIDEBAR MENU -->
                    @include('User.layouts.elements.sidebar_menu')
                    <!-- END SIDEBAR MENU -->
                </div>
                <!-- END SIDEBAR -->
            </div>
            <script>
                (function(){
                    var appContainer = document.querySelector('.page-container'),
                        sidebar = appContainer.querySelector('.page-sidebar'),
                        loader = document.getElementById('voyager-loader');
                    if (window.localStorage) {
                        loader.style.left = sidebar.clientWidth + 'px';
                    }
                })();
            </script>
            <!-- END SIDEBAR -->
            <!-- BEGIN CONTENT -->
            @include('User.layouts.elements.content')
            <!-- END CONTENT -->
            <!-- BEGIN QUICK SIDEBAR -->
            @include('User.layouts.elements.quick_sidebar')
            <!-- END QUICK SIDEBAR -->
        </div>
        <!-- END CONTAINER -->
        <!-- BEGIN FOOTER -->
        @include('User.layouts.elements.footer')
        <!-- END FOOTER -->

        <!-- BEGIN QUICK NAV -->
        @include('User.layouts.elements.quick_nav')
        <!-- END QUICK NAV -->

        <!--[if lt IE 9]>
        <script src="/plugins/respond.min.js"></script>
        <script src="/plugins/excanvas.min.js"></script>
        <script src="/plugins/ie8.fix.min.js"></script>
        <![endif]-->
        <!-- BEGIN CORE PLUGINS -->
        <script src="/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="/plugins/jquery-cookiebar/jquery.cookieBar.min.js" type="text/javascript"></script>
        <script src="/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <script src="/plugins/bootstrap-toastr/build/toastr.min.js" type="text/javascript"></script>

        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="/plugins/moment.min.js" type="text/javascript"></script>
        <script src="/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
        <script src="/plugins/morris/morris.min.js" type="text/javascript"></script>
        <script src="/plugins/morris/raphael-min.js" type="text/javascript"></script>
        <script src="/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
        <script src="/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
        <script src="/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
        <script src="/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
        <script src="/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
        <script src="/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
        <script src="/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
        <script src="/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="/js/user/app.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="/js/user/dashboard.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="/js/user/layout.js" type="text/javascript"></script>
        <script src="/js/user/demo.js" type="text/javascript"></script>
        <script src="/js/user/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="/js/user/quick-nav.min.js" type="text/javascript"></script>
        <script src="/plugins/jquery-packery/packery.pkgd.min.js"></script>
        <script src="/plugins/jquery-packery/draggabilly.pkgd.js"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
        @yield('jsfile')
        <script>
        @yield('javascript')
        $( document ).ready(function() {
            @yield('jquery')
        });
        </script>
    </body>

</html>
<?php

Route::group([
    'prefix' => LaravelLocalization::setLocale(),
    'middleware' => [
        'localeSessionRedirect',
        'localizationRedirect',
        'localeViewPath'
    ],
    'name' => 'language'
], function() {

    Route::get('/', function () {
        return view('theme::welcome');
    });

    foreach (App\Page::where('status', 'ACTIVE')->get() as $page) {
        Route::get($page->slug, ['uses' => 'PageController@show', 'slug' => $page->slug]);
    }

    Route::group(['prefix' => 'post'], function () {
        Route::get('/', 'PostController@index');
        Route::get('/{id}', ['uses' => 'PostController@show']);
    });

    Route::resource('/product', 'ProductController');

    //Admin
    Route::group(['prefix' => 'admin'], function () {
        Voyager::routes();

        Route::group(['prefix' => 'logicblock'], function () {
            Route::get('/', 'Admin\SupportController@index');
            Route::get('create', 'Admin\SupportController@create');
            Route::post('create', 'Admin\SupportController@store');
            Route::get('edit/{id}', 'Admin\SupportController@edit');
            Route::post('edit/{id}', 'Admin\SupportController@update');
            Route::get('/{id}', 'Admin\SupportController@show');
            Route::delete('destroy/{id}', 'Admin\SupportController@destroy');
        });
    });

    //User
    Route::group(['prefix' => 'user'], function () {
        Route::get('/', 'User\DashboardController@index');
        Auth::routes();

        Route::get('support', 'User\SupportController@index');
        Route::resource('/post', 'User\PostController');

    });
});
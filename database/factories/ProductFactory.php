<?php
use Faker\Generator as Faker;

$factory->define(App\Product::class, function (Faker $faker) {
    return [
        'title' => $faker->sentence,
        'text' => $faker->paragraph,
        'status' => rand(0, 3),
        'user_id' => function () {
            return factory(\App\User::class);
        }
    ];
});
<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class VoyagerThemes extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
		Schema::create('voyager_themes', function (Blueprint $table) {
			$table->increments('id');
			$table->string('name');
			$table->string('folder')->unique();
			$table->boolean('active')->default(false);
			$table->string('version')->default('');
			$table->timestamps();
		});
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('voyager_themes');
    }
}

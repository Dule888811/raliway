<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRaliwayLinesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('raliway_lines', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('train');
            $table->time('time');
            $table->unsignedSmallInteger('distance');
            $table->string('city_name');
            $table->foreign('city_name')->references('name')->on('cities');
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
        Schema::dropIfExists('raliway_lines');
    }
}

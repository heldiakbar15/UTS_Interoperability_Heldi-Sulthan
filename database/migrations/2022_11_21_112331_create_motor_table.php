<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMotorTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('motor', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nama_motor', 100);
            $table->string('harga', 100);
            $table->text('deskripsi', 65535);
            $table->string('gambar', 100);
            $table->integer('brand_id')->index('brand_id_foregin');
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
        Schema::dropIfExists('motor');
    }
}

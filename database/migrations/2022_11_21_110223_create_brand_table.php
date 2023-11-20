<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBrandTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('brand', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nama_brand', 100);
            $table->string('industri', 100);
            $table->string('didirikan', 100);
            $table->string('pendiri', 100);
            $table->string('kantor_pusat', 100);
            $table->string('produk', 100);
            $table->text('sejarah', 65535);
            $table->string('gambar', 100);
            $table->string('web', 100);

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
        Schema::dropIfExists('brand');
    }
}

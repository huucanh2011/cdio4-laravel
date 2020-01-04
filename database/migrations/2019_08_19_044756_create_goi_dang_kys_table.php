<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGoiDangKysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('goi_dang_kys', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('ten_goi');
            $table->smallInteger('so_luong_phim');
            $table->tinyInteger('thang');
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
        Schema::dropIfExists('goi_dang_kys');
    }
}

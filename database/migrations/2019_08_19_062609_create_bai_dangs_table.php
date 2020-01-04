<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBaiDangsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bai_dangs', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('tieu_de');
            $table->longText('noi_dung');
            $table->string('anh_poster');
            $table->tinyInteger('trang_thai')->default(0);
            $table->bigInteger('luot_xem')->default(0);
            $table->bigInteger('loaibd_id')->unsigned();
            $table->foreign('loaibd_id')->references('id')->on('loai_bai_dangs')->onDelete('cascade');
            $table->bigInteger('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
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
        Schema::dropIfExists('bai_dangs');
    }
}

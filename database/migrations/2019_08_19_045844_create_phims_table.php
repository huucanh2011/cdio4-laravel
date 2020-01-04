<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePhimsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('phims', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('ten_chinh');
            $table->string('ten_phu')->nullable();
            $table->smallInteger('thoi_luong');
            $table->string('dao_dien');
            $table->string('dien_vien');
            $table->string('imdb_id')->nullable();
            $table->date('ngay_khoi_chieu');
            $table->text('noi_dung');
            $table->string('anh_poster');
            $table->string('anh_cover');
            $table->string('trailer_yt_id');
            $table->tinyInteger('trang_thai')->default(0);
            $table->bigInteger('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->bigInteger('dotuoi_id')->unsigned();
            $table->foreign('dotuoi_id')->references('id')->on('do_tuois')->onDelete('cascade');
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
        Schema::dropIfExists('phims');
    }
}

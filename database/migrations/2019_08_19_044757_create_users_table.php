<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('email')->unique();
            $table->string('password');
            $table->string('ten_hien_thi');
            $table->string('hinh_dai_dien')->nullable();
            $table->tinyInteger('trang_thai')->default(0);
            $table->bigInteger('goidangky_id')->unsigned()->nullable();
            $table->foreign('goidangky_id')->references('id')->on('goi_dang_kys')->onDelete('cascade');
            $table->dateTime('ngay_duyet_dang_ky')->nullable();
            $table->bigInteger('quyen_id')->unsigned();
            $table->foreign('quyen_id')->references('id')->on('quyens')->onDelete('cascade');
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}

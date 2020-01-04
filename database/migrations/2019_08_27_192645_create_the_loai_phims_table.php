<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTheLoaiPhimsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('the_loai_phims', function (Blueprint $table) {
            $table->bigIncrements('id');            
            $table->bigInteger('theloai_id')->unsigned();
            $table->foreign('theloai_id')->references('id')->on('the_loais')->onDelete('cascade');
            $table->bigInteger('phim_id')->unsigned();
            $table->foreign('phim_id')->references('id')->on('phims')->onDelete('cascade');
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
        Schema::dropIfExists('the_loai_phims');
    }
}

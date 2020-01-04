<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TheLoai extends Model
{
    protected $guarded=[];
    
    public function theLoaiPhim(){
    	return $this->hasMany('App\TheLoaiPhim','theloai_id','id');
    }
}

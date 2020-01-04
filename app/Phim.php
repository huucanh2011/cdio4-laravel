<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Phim extends Model
{
    protected $guarded=[];
    
    public function danhGia(){
    	return $this->hasMany('App\DanhGia','phim_id','id');
    }
    public function doTuoi()
    {
        return $this->belongsTo('App\DoTuoi','dotuoi_id','id');
    }
    public function theLoaiPhim(){
    	return $this->hasMany('App\TheLoaiPhim','phim_id','id');
    }
    public function user(){
    	return $this->belongsTo('App\User','user_id','id');
    }
    //Tạo url SEO
    public function path()
    {
        return url("/movie/{$this->id}-" . Str::slug($this->ten_chinh));
    }
}

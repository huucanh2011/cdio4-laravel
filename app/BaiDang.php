<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class BaiDang extends Model
{
    protected $guarded=[];
    
    public function loaiBaiDang(){
    	return $this->belongsTo('App\LoaiBaiDang','loaibd_id','id');
    }
    public function user(){
    	return $this->belongsTo('App\User','user_id','id');
    }
    public function binhLuan(){
    	return $this->hasMany('App\BinhLuan','baidang_id','id');
    }
    public function thich(){
    	return $this->hasMany('App\Thich','baidang_id','id');
    }
    //Tạo url SEO
    public function url()
    {
        return url("/post/{$this->id}-" . Str::slug($this->tieu_de));
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BinhLuan extends Model
{
    protected $guarded=[];
    
    public function baiDang(){
    	return $this->belongsTo('App\BaiDang','baidang_id','id');
    }
    public function user(){
    	return $this->belongsTo('App\User','user_id','id');
    }
}

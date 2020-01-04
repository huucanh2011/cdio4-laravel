<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LoaiBaiDang extends Model
{
    protected $guarded=[];
    
    public function baiDang(){
    	return $this->hasMany('App\BaiDang','loaibd_id','id');
    }
}

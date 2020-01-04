<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GoiDangKy extends Model
{
    protected $table = 'goi_dang_kys';

    protected $guarded=[];
    
    public function user(){
    	return $this->hasMany('App\User','goidangky_id','id');
    }
}

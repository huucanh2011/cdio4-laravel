<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DoTuoi extends Model
{
    protected $guarded=[];
    
    public function phim(){
    	return $this->hasMany('App\Phim','dotuoi_id','id');
    }
}

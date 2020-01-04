<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Thich extends Model
{
    protected $table = 'thichs';
    protected $guarded=[];

    public function user()
    {
        return $this->belongsTo('App\User','user_id','id');
    }
    public function baiDang()
    {
        return $this->belongsTo('App\BaiDang','baidang_id','id');
    }
}

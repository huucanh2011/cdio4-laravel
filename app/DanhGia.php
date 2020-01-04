<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DanhGia extends Model
{
    protected $guarded=[];

    public function user()
    {
        return $this->belongsTo('App\User','user_id','id');
    }
    public function phim()
    {
        return $this->belongsTo('App\Phim','phim_id','id');
    }
}

<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;
    protected $guarded = [];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    // Hàm này send pass reset chưa làm
    // public function sendPasswordResetNotification($token)
    // {
    //     $this->notify(new ResetPasswordRequest($token));
    // }
    public function quyen()
    {
        return $this->belongsTo('App\Quyen','quyen_id','id');
    }
    public function goiDangKy()
    {
        return $this->belongsTo('App\GoiDangKy','goidangky_id','id');
    }
    public function baiDang(){
    	return $this->hasMany('App\BaiDang','user_id','id');
    }
    public function danhGia(){
    	return $this->hasMany('App\DanhGia','user_id','id');
    }
    public function binhLuan(){
    	return $this->hasMany('App\BinhLuan','user_id','id');
    }
    public function phim(){
    	return $this->hasMany('App\Phim','user_id','id');
    }
    public function thich(){
    	return $this->hasMany('App\Thich','user_id','id');
    }
}

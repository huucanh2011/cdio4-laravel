<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\LoaiBaiDang;
use App\Phim;
use App\DanhGia;
use App\BaiDang;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class ChiTietBaiDangController extends Controller
{
    public function __construct()
    {
        $loaiBaiDangs = LoaiBaiDang::all();

        view()->share(compact('loaiBaiDangs'));
    }

    public function show($baiDang, $slug)
    {
        $sessionKey = 'post_' . $baiDang;
        $sessionView = Session::get($sessionKey);
        $baiDang = BaiDang::findOrFail($baiDang);
        if (!$sessionView) { //nếu chưa có session
            Session::put($sessionKey, 1); //set giá trị cho session
            $baiDang->increment('luot_xem');
        }
        return view('pages.baidang', compact('baiDang'));
    }
}

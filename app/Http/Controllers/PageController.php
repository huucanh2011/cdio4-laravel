<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\LoaiBaiDang;
use App\Phim;
use App\DanhGia;
use App\BaiDang;
use App\TheLoai;
use Illuminate\Support\Facades\Auth;
use DB;

class PageController extends Controller
{
    public function __construct()
    {
        $loaiBaiDangs = LoaiBaiDang::all();
        $theLoais = TheLoai::all();

        view()->share(compact('loaiBaiDangs'));
        view()->share(compact('theLoais'));
    }

    public function getHome()
    {
        $phims = Phim::with('doTuoi', 'user')->where('trang_thai',1)->get();
        $tinTucs = BaiDang::with('loaiBaiDang', 'user')->where('loaibd_id', 1)
                            ->where('trang_thai', 0)
                            ->orderby('created_at', 'desc')
                            ->take(6)->get();
        $baiViets = BaiDang::with('loaiBaiDang', 'user')->where('loaibd_id','!=', 1)
                            ->where('trang_thai', 0)
                            ->orderby('created_at', 'desc')
                            ->take(6)->get();

        return view('pages.home',compact('phims', 'tinTucs','baiViets'));
    }

    public function getAllPhim()
    {
        $allPhim = Phim::with('doTuoi', 'user')->orderby('id', 'desc')->paginate(12);
        return view('pages.allphim', compact('allPhim'));
    }

    public function getCommunity()
    {
        $baiDangs = BaiDang::with('loaiBaiDang', 'user')->where('trang_thai', 0)->get();
        $baiNoiBats = BaiDang::with('loaiBaiDang', 'user')
                        ->where('trang_thai', 0)
                        ->orderby('created_at', 'desc')
                        ->take(6)->get();
        return view('pages.community', compact('baiDangs', 'baiNoiBats'));
    }

    public function getProfile()
    {
        $user = Auth::user();
        $baiDangs = BaiDang::with('loaiBaiDang', 'user')->where('user_id', $user->id)->orderby('created_at', 'desc')->get();
        $danhGias = DanhGia::with('phim', 'user')->where('user_id', $user->id)->orderby('created_at', 'desc')->get();
        return view('pages.profile', compact('user', 'baiDangs', 'danhGias'));
    }

    public function indexAdmin()
    {
        return view('admin.dashboard');
    }

    public function indexFilmStudio()
    {
        return view('hangphim.dashboard');
    }

    public function search(Request $request)
    {
        $keyword = $request->keyword;
        $phims = Phim::where('ten_chinh', 'like', '%'.$keyword.'%')
                ->orwhere('ten_phu', 'like', '%'.$keyword.'%')
                ->get();
        $baiDangs = BaiDang::where('tieu_de', 'like', '%'.$keyword.'%')->get();

        return view('pages.search', compact('phims', 'baiDangs'));
    }
}

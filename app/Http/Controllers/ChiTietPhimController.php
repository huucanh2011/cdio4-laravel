<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Phim;
use App\LoaiBaiDang;
use App\DanhGia;

class ChiTietPhimController extends Controller
{
    public function __construct()
    {
        $loaiBaiDangs = LoaiBaiDang::all();

        view()->share(compact('loaiBaiDangs'));
    }

    public function show($phim, $slug)
    {
        $phim = Phim::findOrFail($phim);
        $danhGias = DanhGia::with('user')->orderby('created_at', 'desc')->get();
        return view('pages.chitietphim', compact('phim', 'danhGias'));
    }
}

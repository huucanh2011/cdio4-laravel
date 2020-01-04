<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DanhGia;
use App\Phim;
use Illuminate\Support\Facades\Auth;

class DanhGiaController extends Controller
{
    function __construct()
    {
        $danhGias = DanhGia::with('user', 'phim')->get();

        view()->share(compact('danhGias'));
    }

    public function indexAdmin()
    {
        return view('admin.danhgia.index');
    }

    public function indexHangPhim()
    {
        return view('hangphim.danhgia.index');
    }

    public function destroy($id)
    {
        $danhGia = DanhGia::findOrFail($id);
        $danhGia->delete();
        return back()->with(['thongbao'=>'Xoá thành công','type'=>'success']);
    }
}

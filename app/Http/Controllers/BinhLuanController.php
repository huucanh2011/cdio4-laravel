<?php

namespace App\Http\Controllers;

use App\BinhLuan;
use Illuminate\Http\Request;

class BinhLuanController extends Controller
{
    function __construct()
    {
        $binhLuans = BinhLuan::with('baiDang', 'user')->get();

        view()->share(compact('binhLuans'));
    }
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.binhluan.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\BinhLuan  $binhLuan
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $binhLuan = BinhLuan::findOrFail($id);
        $binhLuan->delete();
        return back()->with(['thongbao'=>'Xoá thành công!','type'=>'success']);
    }
}

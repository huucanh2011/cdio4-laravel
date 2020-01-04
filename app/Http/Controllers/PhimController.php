<?php

namespace App\Http\Controllers;

use App\Phim;
use App\DoTuoi;
use App\TheLoai;
use App\TheLoaiPhim;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Validator;
use DD;

class PhimController extends Controller
{
    function __construct()
    {
        $phims = Phim::all();
        $doTuois = DoTuoi::all();
        $theLoais = TheLoai::all();

        view()->share(compact('phims'));
        view()->share(compact('doTuois'));
        view()->share(compact('theLoais'));
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('hangphim.phim.index');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),
            [
                'ten_chinh' => 'max:255',
                'ten_phu' => 'max:255',
                'dao_dien' => 'max:255',
                'dien_vien' => 'max:255',
                'imdb_id' => 'max:255',
                'trailer_yt_id' => 'max:255',
                'noi_dung' => 'min:100',
                'anh_poster' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
                'anh_cover' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',              
            ],
            [
                'ten_chinh.max'=>'Tên chính có tối đa :max ký tự',
                'ten_phu.max'=>'Tên phụ có tối đa :max ký tự',
                'dao_dien.max'=>'Đạo diễn có tối đa :max ký tự',
                'dien_vien.max'=>'Diễn viên có tối đa :max ký tự',
                'imdb_id.max'=>'Id IMDB có tối đa :max ký tự',
                'trailer_yt_id.max'=>'Link trailer có tối đa :max ký tự',
                'noi_dung.min'=>'Nội dung có tối thiểu :min ký tự',
                'anh_poster.required'=>'Bạn chưa chọn ảnh poster',
                'anh_poster.image'=>'File bạn chọn không phải ảnh',
                'anh_poster.mimes'=>'Đuôi file của bạn phải thuộc các đuôi: jpeg, png, jpg, gif, svg',
                'anh_poster.max'=>'Dung lượng file tối đa :max byte',
                'anh_cover.required'=>'Bạn chưa chọn ảnh cover',
                'anh_cover.image'=>'File bạn chọn không phải ảnh',
                'anh_cover.mimes'=>'Đuôi file của bạn phải thuộc các đuôi: jpeg, png, jpg, gif, svg',
                'anh_cover.max'=>'Dung lượng file tối đa :max byte',
            ]
        );
        if ($validator->fails()) {
            return back()
            ->withErrors($validator)
            ->withInput()->with(['error_themphim'=>'Lỗi thêm phim', 'type'=> 'danger']);
        }

        $anh_poster = $anh_cover = '';

        if($request->hasFile('anh_poster') && $request->hasFile('anh_cover'))
        {
            $file1 = $request->file('anh_poster');
            $name1 = $file1->getClientOriginalName();
            $anh_poster= time().'_'.str_random(5).'-'.$name1;
            $file2 = $request->file('anh_cover');
            $name2 = $file2->getClientOriginalName();
            $anh_cover= time().'_'.str_random(5).'-'.$name2;
            $file1->move(public_path('upload/phim'), $anh_poster);
            $file2->move(public_path('upload/phim'), $anh_cover);
        }

        $user_id = Auth::user()->id;

        $phim = new Phim;

        $phim->ten_chinh = $request->ten_chinh;
        $phim->ten_phu = $request->ten_phu;
        $phim->thoi_luong = $request->thoi_luong;
        $phim->dao_dien = $request->dao_dien;
        $phim->dien_vien = $request->dien_vien;
        $phim->imdb_id = $request->imdb_id;
        $phim->trailer_yt_id = $request->trailer_yt_id;
        $phim->ngay_khoi_chieu = $request->ngay_khoi_chieu;
        $phim->trang_thai = $request->trang_thai;
        $phim->dotuoi_id = $request->dotuoi_id;
        $phim->noi_dung = $request->noi_dung;
        $phim->user_id = $user_id;
        $phim->anh_poster = $anh_poster;
        $phim->anh_cover = $anh_cover;
        $phim->save();
        
        $phim_id = $phim->id;

        foreach ($request->theLoai as $theloai_id) {
            $theLoaiPhim = new TheLoaiPhim;
            $theLoaiPhim->theloai_id = $theloai_id;
            $theLoaiPhim->phim_id = $phim_id;
            $theLoaiPhim->save();
        }

        return back()->with(['thongbao'=>'Thêm thành công','type'=>'success']);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Phim  $phim
     * @return \Illuminate\Http\Response
     */
    public function show(Phim $phim)
    {
        return view('hangphim.phim.show', compact('phim'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Phim  $phim
     * @return \Illuminate\Http\Response
     */
    public function edit(Phim $phim)
    {
        return response()->json($phim, 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Phim  $phim
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Phim $phim)
    {
        $validator = Validator::make($request->all(),
            [
                'ten_chinh1' => 'max:255',
                'ten_phu1' => 'max:255',
                'dao_dien1' => 'max:255',
                'dien_vien1' => 'max:255',
                'imdb_id1' => 'max:255',
                'trailer_yt_id1' => 'max:255',
                'noi_dung1' => 'min:100'             
            ],
            [
                'ten_chinh1.max'=>'Tên chính có tối đa :max ký tự',
                'ten_phu1.max'=>'Tên phụ có tối đa :max ký tự',
                'dao_dien1.max'=>'Đạo diễn có tối đa :max ký tự',
                'dien_vien1.max'=>'Diễn viên có tối đa :max ký tự',
                'imdb_id1.max'=>'Id IMDB có tối đa :max ký tự',
                'trailer_yt_id1.max'=>'Link trailer có tối đa :max ký tự',
                'noi_dung.min1'=>'Nội dung có tối thiểu :min ký tự'
            ]
        );
        if ($validator->fails()) {
            return back()
            ->withErrors($validator)
            ->withInput()->with(['error_capnhatphim'=>'Lỗi cập nhật phim', 'type'=> 'danger']);
        }

        // $anh_poster = $anh_cover = '';

        // if($request->hasFile('anh_poster1') && $request->hasFile('anh_cover1'))
        // {
        //     $file1 = $request->file('anh_poster1');
        //     $name1 = $file1->getClientOriginalName();
        //     $anh_poster= time().'_'.str_random(5).'-'.$name1;
        //     $file2 = $request->file('anh_cover1');
        //     $name2 = $file2->getClientOriginalName();
        //     $anh_cover= time().'_'.str_random(5).'-'.$name2;
        //     $file1->move(public_path('upload/phim'), $anh_poster);
        //     $file2->move(public_path('upload/phim'), $anh_cover);
        // }

        $user_id = Auth::user()->id;

        $phim->ten_chinh = $request->ten_chinh1;
        $phim->ten_phu = $request->ten_phu1;
        $phim->thoi_luong = $request->thoi_luong1;
        $phim->dao_dien = $request->dao_dien1;
        $phim->dien_vien = $request->dien_vien1;
        $phim->imdb_id = $request->imdb_id1;
        $phim->trailer_yt_id = $request->trailer_yt_id1;
        $phim->ngay_khoi_chieu = $request->ngay_khoi_chieu1;
        $phim->trang_thai = $request->trang_thai1;
        $phim->dotuoi_id = $request->dotuoi_id1;
        $phim->noi_dung = $request->noi_dung1;
        $phim->user_id = $user_id;
        $phim->save();
        
        $phim_id = $phim->id;

        if($request->theLoai1)
        {
            TheLoaiPhim::where('phim_id', $phim_id)->delete();
     
            foreach ($request->theLoai1 as $theloai_id) {
                $theLoaiPhim = new TheLoaiPhim;
                $theLoaiPhim->theloai_id = $theloai_id;
                $theLoaiPhim->phim_id = $phim_id;
                $theLoaiPhim->save();
            }
        }

        return back()->with(['thongbao'=>'Cập nhật thành công','type'=>'success']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Phim  $phim
     * @return \Illuminate\Http\Response
     */
    public function destroy($phimId)
    {
        $phim = Phim::findOrFail($phimId);
        $phim->delete();

        return back()->with(['thongbao' => 'Xoá thành công', 'type' => 'success']);
    }
}

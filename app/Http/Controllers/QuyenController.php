<?php

namespace App\Http\Controllers;

use App\Quyen;
use Illuminate\Http\Request;
use Validator;
use Exception;

class QuyenController extends Controller
{
    function __construct()
    {
        $quyens = Quyen::all();

        view()->share(compact('quyens'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.quyen.index');
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
                'ten_quyen' => 'min:3|max:255'
            ],
            [
                'ten_quyen.min'=>'Tên quyền phải có ít nhất :min kí tự',
                'ten_quyen.max'=>'Tên quyền phải có nhiều nhất :max kí tự'
            ]
        );
        if ($validator->fails()) {
            return back()
            ->withErrors($validator)
            ->withInput()->with(['error_themquyen'=>'Loi them quyen']);
        }

        Quyen::create($request->only('ten_quyen'));

        return back()->with(['thong-bao'=>'Thêm thành công','type'=>'success']);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Quyen  $quyen
     * @return \Illuminate\Http\Response
     */
    public function edit(Quyen $quyen)
    {
        return response()->json($quyen, 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Quyen  $quyen
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Quyen $quyen)
    {
        $validator = Validator::make($request->all(),
            [
                'ten_quyen' => 'min:3|max:255'
            ],
            [
                'ten_quyen.min'=>'Tên quyền phải có ít nhất :min kí tự',
                'ten_quyen.max'=>'Tên quyền phải có nhiều nhất :max kí tự'
            ]
        );
        if ($validator->fails()) {
            return back()
            ->withErrors($validator)
            ->withInput()->with(['error_capnhatquyen'=>'Loi cap nhat quyen']);
        }

        $quyen->update(['ten_quyen' => $request->ten_quyen]);

        return back()->with(['thong-bao'=>'Cập nhật thành công!','type'=>'success']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Quyen  $quyen
     * @return \Illuminate\Http\Response
     */
    public function destroy(Quyen $quyen)
    {
        try {
            $quyen->delete();
        } catch (Exception $e) {
            return $e->getMessage();
        }

        return back()->with(['thong-bao' => 'Xoá thành công!', 'type' => 'success']);
    }
}

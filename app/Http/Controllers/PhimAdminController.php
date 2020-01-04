<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Phim;

class PhimAdminController extends Controller
{
    function __construct()
    {
        $phims = Phim::with('user')->orderby('ngay_khoi_chieu', 'desc')->get();
        view()->share(compact('phims'));
    }

    public function index()
    {
        return view('admin.phim.index');
    }

    public function show($id)
    {
        $phim = Phim::findOrFail($id);
        return view('admin.phim.show', compact('phim'));
    }
}

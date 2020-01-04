<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\MessageBag;
use App\User;

class QuanLyHopTacController extends Controller
{
    function __construct()
    {
        $users = User::where('quyen_id', 2)->where('trang_thai', 2)->get();

        view()->share(compact('users'));
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.hoptac.index');
    }
}

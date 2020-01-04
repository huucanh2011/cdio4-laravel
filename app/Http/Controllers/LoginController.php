<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use Validator;
use App\Rules\Captcha;

class LoginController extends Controller
{
    //hàm login
    public function authenticate(Request $request)
    {
        $validator = Validator::make($request->all(),
            [
                'password' => 'min:6',
                'g-recaptcha-response' => new Captcha(),
            ],
            [
                'password.min' => 'Mật khẩu ít nhất :min ký tự'
            ]
        );
        if ($validator->fails()) {
            return back()
                ->withErrors($validator)
                ->withInput()->with(['error_login'=>'Loi dang nhap']);
        }
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password]))
        {
            if(auth()->user()->trang_thai==1){
                auth()->logout();
                abort(402);
            }
            if(auth()->user()->trang_thai==2){
                auth()->logout();
                abort(403);
            }
            return redirect()->intended();
        }
        else
            return back()
            ->with(['thong-bao'=>'Email hoặc mật khẩu không chính xác!','type'=>'danger','error_login'=>'Loi dang nhap']);
    }
    //hàm logout
    public function logout(){
        Auth::logout();
        return redirect()->intended();
    }
}

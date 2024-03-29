<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class HangPhimLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth::check()==0)
        {
            return redirect('home');
        }
        if(auth()->user()->quyen_id != 2)
        {
            return redirect('home');
        }
        return $next($request);
    }
}

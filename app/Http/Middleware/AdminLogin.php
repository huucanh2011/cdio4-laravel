<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class AdminLogin
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
        if(auth()->user()->quyen_id>1)
        {
            return redirect('home');
        }
        return $next($request);
    }
}

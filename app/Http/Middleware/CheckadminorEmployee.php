<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
class CheckadminorEmployee
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
        if (Auth::guard('admin')->check()){

            if(Auth::guard('admin')->user()->group_id == 1){

                return $next($request);

            }else{

                return redirect()->route('admin.category.list');
            }
        }else{

            return redirect()->route('admin.login');
        }
    }
}

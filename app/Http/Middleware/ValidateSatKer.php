<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Foundation\Application;
use Illuminate\Http\Request;
use Illuminate\Routing\Redirector;
use Illuminate\Support\Facades\Session;
use App\ Roles;

class ValidateSatKer
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
        if(Session::get('loginSatKer')==TRUE) { // sudah login
                    
            return $next($request);
            
        }else { // belum login
            
            // redirect ke halaman login
            return redirect(URL('/'))->with('error','Please Log In');

        }
    }
}

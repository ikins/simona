<?php
// app/Http/Middleware/Language.php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Foundation\Application;
use Illuminate\Http\Request;
use Response;



class ValidateKey
{
	
	/*=== Handle ===*/
    public function handle($request, Closure $next)
    {
		$header = apache_request_headers();
		
		// cek api key
        if(@$header['Api-Key']!=env('API_KEY'))
		{
			
			// response
			$response['status'] = "error";
			$response['description'] = "Unauthorized Access";
			// return json response
			return Response::json($response);
		
		} else {
			return $next($request);
		}
    }
		
}
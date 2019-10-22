<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;
use Session;
use App\User;


class HomeController extends Controller
{
    private $ctrl 	= 'home';
    private $error = 'error';
    private $title 	= 'Beranda';
    
    /**
    * Index
    *
    */
	public function index(Request $request) 
	{

    // set data view
    $data[ 'content_view' ] = "frontend.$this->ctrl.index";
    $data[ 'page_title' ]   = $this->title;
    $data[ 'ctrl' ]         = $this->ctrl;
    $data[ 'title' ]        = $this->title;

    // load view
    return view($data[ 'content_view' ], $data);

	}

    public function signin(Request $request) 
    {
        // get param
        $password = $request->password;
        $username = $request->username;

        // validate param
        if($password=='' || $username=='')
        {   
            return redirect('/')->with('error', 'Password & Username Harus Diisi');
            exit();
        }

        //validate
        $user = User::where(['username'=>$username,'password'=>md5($password)])->first();

        if(count($user)==NULL)
        {
            return redirect('/')->with('error', 'User Belum Terdaftar');
            exit();
        }else if(count($user)==1 and $user->user_type==1){

            Session::put('loginKemhan',TRUE); 
            Session::put('status_user','Kemhan Admin');
            Session::put('username', $username);
        
            return redirect('/cms/kemhan/dashboard')->with('success','Signin Berhasil');
        }else if(count($user)==1 and $user->user_type==2){

            Session::put('loginUO',TRUE); 
            Session::put('status_user','Unit Organisasi');
            Session::put('username', $username);
        
            return redirect('/cms/uo/dashboard')->with('success','Signin Berhasil');
        }else if(count($user)==1 and $user->user_type==3){

            Session::put('loginKotama',TRUE); 
            Session::put('status_user','Kotama');
            Session::put('username', $username);
        
            return redirect('/cms/kotama/dashboard')->with('success','Signin Berhasil');
        }else if(count($user)==1 and $user->user_type==4){

            Session::put('loginSatker',TRUE); 
            Session::put('status_user','Satuan Kerja');
            Session::put('username', $username);
        
            return redirect('/cms/satker/dashboard')->with('success','Signin Berhasil');
        } 

    }

}

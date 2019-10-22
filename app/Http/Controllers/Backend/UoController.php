<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;
use Session;

class UoController extends Controller
{

	private $ctrl 	= 'home';
    private $error 	= 'error';
    private $title 	= 'Dashboard';

    /**
    * Index
    *
    */
	public function index(Request $request) 
	{

    // set data view
    $data[ 'content_view' ] = "backend.$this->ctrl.index";
    $data[ 'page_title' ]   = $this->title;
    $data[ 'ctrl' ]         = $this->ctrl;
    $data[ 'title' ]        = $this->title;

    // load view
    return view($data[ 'content_view' ], $data);

	}

	/**
    * Signout
    *
    */
	public function signout(Request $request) 
	{
		// destroy session
		Session::flush();

		// redirect to signin form
		return redirect('/');

	}

}
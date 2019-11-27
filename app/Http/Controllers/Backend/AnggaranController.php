<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;
use Session;

class AnggaranController extends Controller
{

	private $ctrl 	= 'anggaran';
    private $error 	= 'error';
    private $title 	= 'Dashboard';

    /**
    * Main Anggaran
    *
    */
	public function anggaran(Request $request) 
	{

    // set data view
    $data[ 'content_view' ] = "backend.$this->ctrl.index";
    $data[ 'page_title' ]   = $this->title;
    $data[ 'ctrl' ]         = $this->ctrl;
    $data[ 'title' ]        = $this->title;

    // load view
    return view($data[ 'content_view' ], $data);

	}

}
<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Bagian extends Model
{
    protected $table = 'kode_bagian';
    protected $primaryKey = 'bag_id';
    public $timestamps = true;


    /*=== Get List ===*/
    public function get_list()
    {
        $rs = DB::table("$this->table as a")
            ->select('a.kotama_parent_id','a.satker_parent_id', 'a.wil_id', 'a.bag_kode', 'a.bag_nama', 'a.bag_alamat')
            ->get();
            
        if(count($rs)!=NULL)
            return $rs;
        else
            return "";
    }
    

    /*=== Get Detail ===*/
    public function get_detail($ID)
    {
        $rs = DB::table("$this->table as a")
            ->select('a.kotama_parent_id','a.satker_parent_id', 'a.wil_id', 'a.bag_kode', 'a.bag_nama', 'a.bag_alamat')
            ->where($this->primaryKey,$ID)
            ->first();

        if(count($rs)!=NULL)
            return $rs;
        else
            return "";
    }


}
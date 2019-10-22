<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Anggaran extends Model
{
    protected $table = 'anggaran';
    protected $primaryKey = 'ID';
    public $timestamps = true;


    /*=== Get List ===*/
    public function get_list()
    {
        $rs = DB::table("$this->table as a")
            ->select('a.kode','a.parent', 'a.uraian')
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
        ->select('a.kode','a.parent', 'a.uraian')
        ->where($this->primaryKey,$ID)
        ->first();

        if(count($rs)!=NULL)
            return $rs;
        else
            return "";
    }


}
<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Intern extends Model
{
    protected $table = 'kode_intern';
    protected $primaryKey = 'intern_id';
    public $timestamps = true;


    /*=== Get List ===*/
    public function get_list()
    {
        $rs = DB::table("$this->table as a")
            ->select('a.parent_jns_dana_id','a.intern_kode', 'a.intern_uraian')
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
            ->select('a.parent_jns_dana_id','a.intern_kode', 'a.intern_uraian')
            ->where($this->primaryKey,$ID)
            ->first();

        if(count($rs)!=NULL)
            return $rs;
        else
            return "";
    }


}
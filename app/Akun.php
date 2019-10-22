<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Akun extends Model
{
    protected $table = 'kode_akun';
    protected $primaryKey = 'akun_id';
    public $timestamps = true;


    /*=== Get List ===*/
    public function get_list()
    {
        $rs = DB::table("$this->table as a")
            ->select('a.parent_level2','a.parent_level3', 'a.parent_level4', 'a.parent_level5', 'a.akun_kode', 'a.akun_uraian')
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
            ->select('a.parent_level2','a.parent_level3', 'a.parent_level4', 'a.parent_level5', 'a.akun_kode', 'a.akun_uraian')
            ->where($this->primaryKey,$ID)
            ->first();

        if(count($rs)!=NULL)
            return $rs;
        else
            return "";
    }


}
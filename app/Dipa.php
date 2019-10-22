<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Dipa extends Model
{
    protected $table = 'detil_dipa';
    protected $primaryKey = 'dipa_id';
    public $timestamps = true;


    /*=== Get List ===*/
    public function get_list()
    {
        $rs = DB::table("$this->table as a")
            ->select('a.intern_id','a.mdipa_id', 'a.pos_id', 'a.akun_id', 'a.dipa_nominal', 'a.dipa_total_realisasi', 'a.dipa_blokir', 'a.dipa_catatan', 'a.dipa_id_before', 'a.dipa_user_id', 'a.dipa_update_time')
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
            ->select('a.intern_id','a.mdipa_id', 'a.pos_id', 'a.akun_id', 'a.dipa_nominal', 'a.dipa_total_realisasi', 'a.dipa_blokir', 'a.dipa_catatan', 'a.dipa_id_before', 'a.dipa_user_id', 'a.dipa_update_time')
            ->where($this->primaryKey,$ID)
            ->first();

        if(count($rs)!=NULL)
            return $rs;
        else
            return "";
    }


}
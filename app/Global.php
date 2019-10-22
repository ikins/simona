<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;

class Global extends Model
{
    protected $table = 'global';
    protected $primaryKey = 'global_id';
    public $timestamps = true;


    /*=== Get List ===*/
    public function get_list()
    {
        $rs = DB::table("$this->table as a")
            ->select('a.global_name', 'a.global_value', 'a.global_user_id', 'a.global_update_time')
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
            ->select('a.global_name', 'a.global_value', 'a.global_user_id', 'a.global_update_time')
            ->where($this->primaryKey,$ID)
            ->first();

        if(count($rs)!=NULL)
            return $rs;
        else
            return "";
    }


}
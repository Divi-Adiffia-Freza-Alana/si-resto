<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Satwa_in extends Model
{
    use HasFactory;

    
    protected $table = 'satwa_in';

    protected $fillable = ['id','id_satwa','asal_usul','nama_instansi','tgl_masuk']; 

    public function getIncrementing(){
        return false;
    }
    public function getKeyType(){
         return 'string';
    } 
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Satwa_kandang extends Model
{
    use HasFactory;
    
    protected $table = 'satwa_kandang';

    protected $fillable = ['id','id_kandang','id_satwa']; 

  
    public function getIncrementing(){
        return false;
    }
    public function getKeyType(){
         return 'string';
    }
}

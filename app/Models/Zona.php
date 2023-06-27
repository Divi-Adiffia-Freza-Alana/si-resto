<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Zona extends Model
{
    use HasFactory,SoftDeletes;

    protected $table = 'zona';

    protected $fillable = ['id','nama','keterangan']; 

  
    public function getIncrementing(){
        return false;
    }
    public function getKeyType(){
         return 'string';
    }
}

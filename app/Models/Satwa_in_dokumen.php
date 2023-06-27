<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Satwa_in_dokumen extends Model
{
    use HasFactory;
    protected $table = 'satwa_foto';
    
    protected $fillable = ['id','id_satwa','nama','jenis','url'];

    public function getIncrementing(){
        return false;
    }
    public function getKeyType(){
        return 'string';
    }

}

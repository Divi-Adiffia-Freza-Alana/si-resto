<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mutasi extends Model
{
    use HasFactory;

    protected $table = 'mutasi';
    
    protected $fillable = ['id','id_satwa','instansi','tgl','keterangan','deskripsi'];

    public function getIncrementing(){
        return false;
    }
    public function getKeyType(){
        return 'string';
    }
}

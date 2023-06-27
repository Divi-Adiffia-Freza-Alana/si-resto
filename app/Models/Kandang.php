<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kandang extends Model
{
    use HasFactory;

    protected $table = 'kandang';
    
    protected $fillable = ['id','id_keeper','id_zona','kode_kandang','jenis_kandang','deskripsi','foto'];

    public function getIncrementing(){
        return false;
    }
    public function getKeyType(){
        return 'string';
    }


    public function keeperKandang(){
        return $this->belongsTo(Keeper::Class, 'id_keeper', 'id');
    }

    public function zona(){
        return $this->belongsTo(Zona::Class, 'id_zona', 'id');
    }

}

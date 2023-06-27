<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Keeper extends Model
{
    use HasFactory,SoftDeletes;

    protected $table = 'keeper';
    
    protected $fillable = ['id','nama','alamat','tgl_lahir','jk','telp','is_pic'];

    public function getIncrementing(){
        return false;
    }
    public function getKeyType(){
        return 'string';
    }

    public function keeperfoto()
    {
        return $this->hasMany(Keeper_foto::Class, 'id_keeper', 'id');
    }
}

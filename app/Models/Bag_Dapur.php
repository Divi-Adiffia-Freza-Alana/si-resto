<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Bag_Dapur extends Model
{
    use HasFactory,SoftDeletes;

    protected $table = 'bag_dapur';
    
    protected $fillable = ['id','id_user','nama','no_ktp','tgl_lahir','no_hp','jk','email','alamat','foto','foto_url'];

    public function getIncrementing(){
        return false;
    }
    public function getKeyType(){
        return 'string';
        
    }

    public function user()
    {
        return $this->hasMany(Users::Class, 'id', 'id_user');
    }

    /*public function keeperfoto()
    {
        return $this->hasMany(Keeper_foto::Class, 'id_keeper', 'id');
    }*/
}

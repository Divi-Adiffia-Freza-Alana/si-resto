<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Transaksi extends Model
{
    use HasFactory;

    protected $table = 'transaksi';
    
    protected $fillable = ['id','id_pembeli','id_kurir','tgl_transaksi','total'];

    public function getIncrementing(){
        return false;
    }
    public function getKeyType(){
        return 'string';
    }

    /*public function keeperfoto()
    {
        return $this->hasMany(Keeper_foto::Class, 'id_keeper', 'id');
    }*/

    public function menu()
    {
        return $this->belongsToMany(Menu::class,'transaksi_detail','id_menu','id_transaksi');
    }

    public function kurir()
    {
        return $this->hasMany(Kurir::Class, 'id', 'id_kurir');
    }

    public function pembeli()
    {
        {
            return $this->hasMany(Users::Class, 'id', 'id_pembeli');
    }

}
}

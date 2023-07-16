<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Transaksi extends Model
{
    use HasFactory,SoftDeletes;

    protected $table = 'transaksi';  
    
    protected $fillable = ['id','id_konsumen','id_bag_dapur','tgl_transaksi','total','status','no_meja', 'status_bayar'];

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

    public function bagdapur()
    {
        return $this->hasMany(Bag_Dapur::Class, 'id', 'id_bag_dapur');
    }

    public function konsumen()
    {
        {
            return $this->hasOne(Users::Class, 'id', 'id_konsumen');
    }

}
}

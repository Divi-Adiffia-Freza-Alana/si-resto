<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BahanBaku extends Model
{
    use HasFactory,SoftDeletes;

    protected $table = 'bahan_baku';
    
    protected $fillable = ['id','nama','stok','satuan'];

    public function getIncrementing(){
        return false;
    }
    public function getKeyType(){
        return 'string';
    }

    public function keeperfoto()
    {
        return $this->hasMany(Transaksi_BahanBaku::Class, 'id_bahanbaku', 'id');
    }
}

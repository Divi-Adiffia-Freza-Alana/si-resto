<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    use HasFactory;

    protected $table = 'menus';
    
    protected $fillable = ['id','nama','harga','jenis'];

    public function getIncrementing(){
        return false;
    }
    public function getKeyType(){
        return 'string';
    }

    // public function keeperfoto()
    // {
    //     return $this->hasMany(Keeper_foto::Class, 'id_keeper', 'id');
    // }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Keeper_foto extends Model
{
    use HasFactory;
    protected $table = 'keeper_foto';
    
    protected $fillable = ['id','id_keeper','nama','url'];

    public function getIncrementing(){
        return false;
    }
    public function getKeyType(){
        return 'string';
    }

    public function keeper(){
        return $this->belongsTo(Keeper::Class, 'id_keeper', 'id');
    }
}

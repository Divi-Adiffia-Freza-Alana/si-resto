<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mastersatwa extends Model
{
    use HasFactory;

    protected $table = 'mastersatwa';
    
    protected $fillable = ['id','namasatwa','kingdom','filum','kelas','ordo','famili','subfamili','genus','spesies','ancaman',
                            'penyebaran','makanan','habitat','trenpopulasi','funfact'];

    public function getIncrementing(){
        return false;
    }
    public function getKeyType(){
        return 'string';
    }
}

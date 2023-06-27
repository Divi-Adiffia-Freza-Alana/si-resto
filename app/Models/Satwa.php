<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Satwa extends Model
{
    use HasFactory;

    protected $table = 'satwa';

    protected $fillable = ['id','id_mastersatwa','nama','filial','jk','induk_jantan','induk_betina','status_breeding',
                           'tgl_lahir','ciri']; 

    public function getIncrementing(){
        return false;
    }
    public function getKeyType(){
         return 'string';
    }

    public function satwa_in(){
        return $this->hasOne(Satwa_in::Class, 'id_satwa', 'id');
    }

    public function satwa_mutasi(){
        return $this->hasOne(Satwa_out::Class, 'id_satwa');
    }
    public function satwa_mati(){
        return $this->hasOne(Satwa_mati::Class, 'id_satwa');
    }
    


    public function mastersatwa(){
        return $this->belongsTo(Mastersatwa::Class, 'id_mastersatwa', 'id');
    }

    public function kandang()
    {
        return $this->belongsToMany(Kandang::class,'satwa_kandang','id_satwa','id_kandang');
    }
    public function satwafoto()
    {
        return $this->hasMany(Satwa_foto::Class, 'id_satwa', 'id');
    }
    public function satwadokumen()
    {
        return $this->hasMany(Satwa_in_dokumen::Class, 'id_satwa', 'id');
    }
}

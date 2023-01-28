<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RaliwayLine extends Model
{
    protected $fillable = [
        'train','city_id','time','distance'
    ];
    public function City(){
        return $this->hasMany('App\Models\City');
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RaliwayLine extends Model
{
    protected $fillable = [
        'train','city_id','time','distance'
    ];
    public function Cities(){
        return $this->hasMany('App\City');
    }
}

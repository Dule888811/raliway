<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $fillable = [
        'name'
    ];
    public function RalywayLine()
    {
        return $this->belongsTo('App\Models\RaliwayLine', 'city_id');
    }
}

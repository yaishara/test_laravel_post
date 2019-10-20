<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class School extends Model
{
    protected $fillable = ['status'];
    public function photos(){
    	return $this->hasMany(SchoolPhoto::class);
    }
}

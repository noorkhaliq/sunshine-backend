<?php

namespace App\Models;

use App\Http\Controllers\ProductsController;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pages extends Model
{
    use HasFactory;

    protected $table = 'pages';
    protected $guarded = ['id'];



//    public function blogs()
//    {
//        return $this->hasMany(About::class,'category_id','id');
//    }
//
//    public function page()
//    {
//        return $this->hasMany(Products::class,'category_id','id');
//    }
}

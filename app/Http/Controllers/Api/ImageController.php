<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ImageResources;
use App\Models\Image;
use Illuminate\Http\Request;

class ImageController extends Controller
{
    public function images()
    {
        $images = Image::all();
        return ['status' => true , 'data' => ImageResources::collection($images)];
    }
}

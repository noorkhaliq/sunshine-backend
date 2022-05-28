<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\AboutResources;
use App\Http\Resources\BlogResources;
use App\Http\Resources\HeaderResources;
use App\Http\Resources\ImageResources;
use App\Http\Resources\ProductsResources;
use App\Http\Resources\SliderResources;
use App\Http\Resources\ServicesResources;
use App\Models\About;
use App\Models\Blog;
use App\Models\Pages;
use App\Models\Image;
use App\Models\Products;
use App\Models\Services;
use App\Models\Slider;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function dashboard()
    {
        $header = Pages::all();
        $header = ['status' => true, 'data' => HeaderResources::collection($header)];
        $about = About::all();
        $about = ['status' => true, 'data' => AboutResources::collection($about)];
        $products = Products::all();
        $products = ['status' => true, 'data' => ProductsResources::collection($products)];
        $image = Image::all();
        $image = ['status' => true, 'data' => ImageResources::collection($image)];
        $blog = Blog::all();
        $blog = ['status' => true, 'data' => BlogResources::collection($blog)];


        return [
            'pages'   =>    $header,
            'about'    =>    $about,
            'products' =>    $products,
            'image'     =>    $image,
            'blog'     =>    $blog
        ];
    }
}

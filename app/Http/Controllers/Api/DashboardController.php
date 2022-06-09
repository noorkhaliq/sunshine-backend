<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\AboutResources;
use App\Http\Resources\BlogResources;
use App\Http\Resources\HeaderResources;
use App\Http\Resources\ImageResources;
use App\Http\Resources\ProductsResources;
use App\Models\Pages;
use App\Models\Products;

class DashboardController extends Controller
{
    public function index()
    {
        $pages = Pages::all();
        $pages = ['status' => true, 'data' => HeaderResources::collection($pages)];

        $products = Products::all();
        $products = ['status' => true, 'data' => ProductsResources::collection($products)];

        return [
            'pages'   =>    $pages,
            'products' =>    $products,
        ];
    }
}

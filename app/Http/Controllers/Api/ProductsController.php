<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ProductsResources;
use App\Http\Resources\PagesResources;
use App\Models\Products;
use Illuminate\Http\Request;

class ProductsController extends Controller
{
    public function index()
    {
        $products = Products::all();

        return ['status' => true, 'data' => ProductsResources::collection($products)];
    }
}




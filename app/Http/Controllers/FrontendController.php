<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use App\Models\Pages;
use App\Models\Products;
use App\Models\Settings;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class FrontendController extends Controller
{
    public function index()
    {
        return view('frontend.index', [
            'about' => Pages::where('slug', 'about-us')->first(),
            'header' => Pages::where('slug', 'header')->first(),
            'products' => Products::latest()->limit(4)->get(),
            'gallery' => Gallery::latest()->limit(6)->get()
        ]);
    }

    public function about($slug)
    {
        $page = Pages::whereSlug($slug)->firstOrFail();

        return view('frontend.about', ['about' => $page]);
    }

    public function page($slug)
    {
        $page = Pages::whereSlug($slug)->firstOrFail();

        return view('frontend.page', ['page' => $page]);
    }

    public function products()
    {
        return view('frontend.products', ['products' => Products::paginate(8)]);
    }

    public function productsDetail($slug)
    {
        $products = Products::whereSlug($slug)->firstOrFail();

        return view('frontend.products_detail',['products'=>$products]);
    }


    public function contact()
    {
        return view('frontend.contact');
    }

    public function gallery()
    {
        return view('frontend.gallery',['gallery'=>Gallery::paginate(6)]);
    }

    public function galleryDetail($slug)
    {
        $gallery = Gallery::whereSlug($slug)->firstOrFail();

        return view('frontend.gallery_detail',['gallery'=>$gallery]);
    }

    public function getAddress()
    {
        return Settings::all();
    }

    public function topFood()
    {
        return Products::latest()->limit(4)->get();
    }

    //  ........................................
    function subscribeSave(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'email' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['status'=>0, 'error'=>$validator->errors()->toArray()]);
        }

        DB::table('contactus')->insert($request->only(['email']));

        return response()->json(['status' => 1, 'message' => 'Your subscription has been submitted']);
    }

    function saveNew(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'name'=>'required|min:3',
            'phone'=>'required|min:3',
            'message'=>'required',
            'email' => 'required'
        ]);

        if(!$validator->passes()){
            return response()->json(['status'=>0, 'error'=>$validator->errors()->toArray()]);
        }

        $values = [
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'message' => $request->message,
        ];

        DB::table('contactus')->insert($values);

        return response()->json(['status'=>1, 'msg'=>'New Contact has been successfully registered']);
    }

}

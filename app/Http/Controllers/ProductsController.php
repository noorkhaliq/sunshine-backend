<?php

namespace App\Http\Controllers;

use App\Models\Products;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Yajra\DataTables\Facades\DataTables;

class ProductsController extends Controller
{
    public function index()
    {
        return view('products.index');
    }

    public function create()
    {
        return view('products.create');
    }

    public function save(Request $request)
    {
        $data =$request->only(['title','description','sub_title']);

        if ($request->hasFile('image')) {
            $data['image'] = $this->uploads(request()->file('image'));
        }

        $page = Products::create($data);
        $page->update(['slug' => Str::slug($request->title).'-'.$page->id]);

        return redirect()->route('products.index');
    }

    public function edit($id)
    {
        return view('products.edit', ['products' => Products::find($id)]);
    }

    public function update($id)
    {
        $data =request()->only(['title','description','sub_title']);

        if (request()->hasFile('image')  and request()->file('image')){
            $data['image'] = $this->uploads(request()->file('image'));
        }

        Products::where('id',$id)->update($data);

        return redirect()->route('products.index');
    }

    public function delete($id)
    {
        Products::destroy($id);
        return redirect()->route('products.index');
    }

    public function list()
    {
        return DataTables::of(Products::query())
            ->addColumn('file_image', function ($row) {
                return asset('uploads/'.$row->image);
            })
            ->addColumn('short_description', function ($q){
                return Str::words(strip_tags($q->description),5);
            })
            ->addColumn('actions', function ($q){
                return '  <a class="btn btn-primary" href="'.route('products.edit',$q->id).'">Edit</a>
                       | <a class="btn btn-danger deleteProducts" href="'.route('products.delete',$q->id).'" >Delete</a>';
            })
            ->rawColumns(['actions'])
            ->make(true);

    }
}

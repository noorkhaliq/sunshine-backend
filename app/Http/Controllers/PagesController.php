<?php

namespace App\Http\Controllers;

use App\Models\Pages;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Yajra\DataTables\Facades\DataTables;

class PagesController extends Controller
{

    public function index()
    {
        return view('pages.index');
    }


    public function create()
    {
        return view('pages.create');
    }

    public function save(Request $request)
    {
        $data = $request->only(['title','description','sub_title','type']);
        if ($request->hasFile('image')) {
            $data['image'] = $this->uploads(request()->file('image'));
        }
       $page = Pages::create($data);
        $page->update(['slug' => Str::slug($request->title).'-'.$page->id]);
        return redirect()->route('pages.index');
    }

    public function edit($id)
    {
        return view('pages.edit', ['pages'=>Pages::find($id)]);
    }

    public function update($id)
    {
        $data =request()->only(['title','description','sub_title','type']);
        if (request()->hasFile('image')  and request()->file('image')){
            $data['image'] = $this->uploads(request()->file('image'));
        }
        Pages::where('id',$id)->update($data);
        return redirect()->route('pages.index');
    }


    public function delete($id)
    {
        Pages::destroy($id);
        return redirect()->route('pages.index');
    }

    public function list()
    {

        return DataTables::of(Pages::query())
            ->addColumn('short_description',function ($q){
                return \Illuminate\Support\Str::words(strip_tags($q->description),5);
            }) ->addColumn('file_image',function ($q){
                return asset('uploads/'.$q->image);
            })
            ->addColumn('actions', function ($q) {
                return '<a class="btn btn-github" href="'.route('pages.edit',$q->id).'">Edit</a>
                         <a class="btn btn-reddit deletePages" href="'.route('pages.delete',$q->id).'">Delete</a> ';
            })
            ->rawColumns(['actions'])
            ->make(true);
    }

}




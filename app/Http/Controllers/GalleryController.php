<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Yajra\DataTables\DataTables;

class GalleryController extends Controller
{
    public function index()
    {
        return view('gallery.index');
    }

    public function edit($id)
    {
        return view('gallery.edit',['gallery' => Gallery::find($id)]);
    }


    public function update($id)
    {
        $data = request()->only(['title','description']);

        if (request()->hasFile('image')  and request()->file('image')) {
            $data['image'] = $this->uploads(request()->file('image'));
        }

        Gallery::where('id',$id)->update($data);

        return redirect()->route('gallery.index');
    }

    public function create()
    {
        return view('gallery.create');
    }

    public function save(Request $request)
    {
        $data = $request->only(['title','description']);

        if ($request->hasFile('image')) {
            $data['image'] = $this->uploads(request()->file('image'));
        }

        $page = Gallery::create($data);
        $page->update(['slug' => Str::slug($request->title).'-'.$page->id]);

        return redirect()->route('gallery.index');
    }

    public function delete($id)
    {
        Gallery::destroy($id);
        return redirect()->route('gallery.index');
    }

    public function list()
    {
        return DataTables::of(Gallery::query())
            ->addColumn('file_image', function ($row) {
                return asset('uploads/'.$row->image);
            })
            ->addColumn('short_description',function ($q){
                return \Illuminate\Support\Str::words(strip_tags($q->description),2);})
            ->addColumn('actions',function ($q){
                return '<a class="btn btn-primary" href="'.route('gallery.edit',$q->id).'">Edit</a>
                        <a class="btn btn-danger deleteGallery" href="'.route('gallery.delete',$q->id).'">Delete</a>';
            })
            ->rawColumns(['actions'])
            ->make(true);
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use App\Models\Pages;
use App\Models\Products;
use App\Models\User;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Validator;



class UserController extends Controller
{

    public function dash()
    {
        return view('dashboard', [
            'products' => Products::count(),'gallery'=>Gallery::count()]);
    }

    public function index()
    {
        return view('user.index');
    }


    public function edit($id)
    {
        return view('user.edit', ['user' => User::find($id)]);
    }

    public function update($id)
    {
        request()->validate([
            'name' => 'required',
            'email' => 'required|unique:users',
            'password' => 'required|min:6',

        ]);
        $data = request()->only(['name', 'email', 'password']);
        $data['password'] = bcrypt(request()->password);

        User::where('id', $id)->update($data);
        return redirect()->route('user.index');
    }


    public function create()
    {
        return view('user.create',['user'=>User::all()]);
    }

    public function save(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'password' => 'required|min:6',
            'email' => 'required|unique:users'
        ]);
        $data = $request->only(['name', 'email',]);
        $data['password'] = bcrypt(request()->password);
        User::create($data);
        return redirect()->route('user.index');
    }


    public function delete($id)
    {
        User::destroy($id);
        return redirect()->route('user.index');
    }

    public function list()
    {
        return DataTables::of(User::query())
            ->addColumn('actions', function ($q) {
                if ($q->id == auth()->user()->id)
                    return '<a class="btn btn-primary" href="' . route('user.edit', $q->id) . '">Edit</a>';
                else
                    return '<a class="btn btn-primary" href="' . route('user.edit', $q->id) . '">Edit</a>
                        | <a class="btn btn-danger deleteUser" href="' . route('user.delete', $q->id) . '">Delete</a>';
            })
            ->rawColumns(['actions'])
            ->make(true);
    }


}

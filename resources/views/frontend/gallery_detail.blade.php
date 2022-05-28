@extends('frontend.master')
@section('content')
    <div class="inner_about">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title">
                        <h2><a href="{{route('front.gallery')}}">Gallery</a> | {{$gallery->title}}</h2>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="gallery">
        <div class="container">
            <div class="row mt-3">
                    <div class="col-md-12 col-sm-12">
                        <div class="gallery_img  d-block float-left me-4">
                            <figure><img src="{{asset('uploads/'.$gallery->image)}}" alt="#"/></figure>
                        </div>
                        <h1>{{$gallery->title}}</h1>
                        <p class="">{{$gallery->description}}</p>
                    </div>
            </div>
        </div>
    </div>
@endsection

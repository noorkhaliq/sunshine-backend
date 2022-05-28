@extends('frontend.master')
@section('content')
    <div>
    <div class="inner_about">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title">
                        <h2>{{$about->title}}</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>


        <div class="gallery bg-light">
            <div class="container">
                <div class="row mt-3">
                    <div class="col-md-12 col-sm-12">
                        <div class="gallery_img  d-block float-left me-4">
                            <figure><img src="{{asset('uploads/'.$about->image)}}" alt="#"/></figure>
                        </div>
                        <h1>{{$about->title}}</h1>
                        <p class="">{{$about->description}}</p>
                    </div>
                </div>
            </div>
    </div>




    </div>
@endsection

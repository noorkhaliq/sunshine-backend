@extends('frontend.master')
@section('content')
    <div>
        <div id="about" class="about">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        <div class="titlepage">
                            <h2>{{$about->title}}</h2>
                            <div>
                                {!! $about->description !!}
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="about_img">
                            <figure>
                                <img src="{{asset('uploads/'.$about->image)}}" alt="#"/>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

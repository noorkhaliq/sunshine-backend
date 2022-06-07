@extends('frontend.master')
@section('content')
    <div>
        <div id="about" class="about">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        <div class="titlepage">
                            <h2>{{$about->title}}</h2>
                            <span>
                            {!! \Illuminate\Support\Str::words(strip_tags($about->description),23) !!}
                        </span>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="about_img">
                            <figure><img src="{{asset('uploads/'.$about->image)}}" alt="#"/></figure>
                            <a class="read_more" href="{{route('front.about',$about->slug)}}"> Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection

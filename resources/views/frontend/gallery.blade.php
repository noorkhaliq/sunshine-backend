@extends('frontend.master')
@section('content')
    <div class="inner_about">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title">
                        <h2>Gallery</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="gallery">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">
                        <span>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy </span>
                    </div>
                </div>
            </div>
            <div class="row mt-3">
               @foreach($gallery as $images)
                <div class="col-md-4 col-sm-6">
                    <div class="gallery_img">
                        <a href="{{route('front.gallery.detail',$images->slug)}}">
                            <figure><img src="{{asset('uploads/'.$images->image)}}" alt="#"/></figure>
                        </a>
                    </div>
                </div>
                @endforeach
            </div>
            {!! $gallery->links() !!}
        </div>

    </div>



@endsection

@extends('frontend.master')
@section('content')


    <div class="inner_about">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title">
                        <h2><a href="{{route('front.products')}}">Our Products</a> | {{$products->title}}</h2>
                    </div>
                </div>
            </div>

        </div>
    </div>


    <div class="products">
        <div class="container">
            <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div  class="our_products">
                            <div class="product">
                                <figure><img src="{{asset('uploads/'.$products->image)}}" alt="#"/></figure>
                            </div>
                            <h1>{{$products->title}}</h1>
                            <span>{{$products->sub_title}}</span>
                            <p>{!! $products->description !!}</p>
                        </div>
                    </div>

            </div>
        </div>
    </div>


@endsection



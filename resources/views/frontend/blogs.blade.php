@extends('frontend.master')
@section('content')
    <div class="inner_about">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title">
                        <h2>Our Products</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="products">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <div class="titlepage">
                    <span>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptu
                     </span>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach($products as $product)
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div  class="our_products">
                            <div class="product">
                                <a href="{{route('front.products.detail',$product->slug)}}" ><img src="{{asset('uploads/'.$product->image)}}" alt="#"/></a>
                            </div>
                            <h3>{{$product->title}}</h3>
                            <span>{{$product->sub_title}}</span>
                            <p>{{\Illuminate\Support\Str::words(strip_tags($product->description),30)}}</p>
                        </div>
                    </div>
                @endforeach
            </div>
            {!! $products->links() !!}
        </div>
    </div>


@endsection

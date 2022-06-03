@extends('frontend.master')
@section('content')
    <header class="full_bg">
    <section class="banner_main">
        <div class="container">
            <div class="banner_po">
                <div class="row">
                    <div class="col-md-7">
                        <div class="text_box">
                                <span>{{$header->description}}</span>
                                <h1><strong>{{$header->title}}</strong> <br> {{$header->sub_title}} </h1>
                                <a class="read_more" href="{{route('front.about','about-us')}}" type="button">About us</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </header>
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

    <!-- our products -->
    <div class="products">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <div class="titlepage">
                        <h2>Our Products</h2>
                        <span>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptu
                     </span>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach($products as $product)
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div  class="our_products">
                        <a href="{{route('front.products.detail',$product->slug)}}">
                        <div class="product">
                                <figure><img src="{{asset('uploads/'.$product->image)}}" alt="#"/></figure>

                        </div>
                        <h3>{{$product->title}}</h3>
                        <span>{{$product->sub_title}}</span>
                        <p>{!! \Illuminate\Support\Str::words(strip_tags($product->description),30) !!}</p>
                        </a>
                    </div>
                </div>
                    @endforeach
            </div>
        </div>
    </div>
    <!-- end our products -->

    <!-- gallery -->
    <div class="gallery">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>Gallery</h2>
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
        </div>
    </div>
    <!-- end gallery -->
    <!--  contact -->
    <div class="contact">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>Contact Us</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 map">
                    <div class="map_main">
                        <div class="responsive-map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2822.7806761080233!2d-93.29138368446431!3d44.96844997909819!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x52b32b6ee2c87c91%3A0xc20dff2748d2bd92!2sWalker+Art+Center!5e0!3m2!1sen!2sus!4v1514524647889" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
                <div class="col-md-6  form_main">
                    <form id="main_form" method="post" action="{{route('front.save')}}" class="main_form">
                        @csrf
                        <div class="row">
                            <div class="col-md-12 mb-3">
                                <input class="contactus" placeholder="Name" type="text" name="name" required="required">
                                <span class=" alert-text text-danger error-text name_error "></span><br>
                            </div>
                            <div class="col-md-12 mb-3">
                                <input class="contactus" placeholder="Phone" type="number" name="phone" required="required">
                                <span class=" alert-text text-danger error-text phone_error "></span><br>
                            </div>
                            <div class="col-md-12 mb-3">
                                <input class="contactus" placeholder="Email" type="email"  name="email" required="required">
                                <span class=" alert-text text-danger error-text email_error "></span><br>
                            </div>
                            <div class="col-md-12 mb-3">
                                <textarea class="textarea" placeholder="Message" type="text" name="message" required="required"></textarea>
                                <span class=" alert-text text-danger error-text message_error "></span><br>
                            </div>

                           <div class="col-md-12">
                               <button  type="submit" class="send_btn button btn bg-dark text-light text-center">
                                   <i id="spinner" class="loading-icon fa fa-spinner fa-spin hide " style="margin-right: 11px;"></i>
                                   <span class="btn-txt">Send</span>
                               </button>
                           </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


<!--    <script>
        $(document).ready(function() {
            $(".button").on("click", function() {
                $(".result").text("");
                $(".loading-icon").removeClass("hide");
                $(".button").attr("disabled", false);
            });
        });
        $(document).ajaxSend(function() {
            $(".loading-icon").show();

        })
        $(document).ajaxComplete(function() {
            $('.loading-icon').hide();
        });
    </script>-->
    <style>
        .button:disabled {
            opacity: 0.9;
        }
        .hide {
            display: none;
        }
        .responsive-map{
            overflow: hidden;
            padding-bottom:56.25%;
            position:relative;
            height:27rem;
        }
        .responsive-map iframe{
            left:0;
            top:0;
            height:100%;
            width:100%;
            position:absolute;
        }
    </style>



@endsection

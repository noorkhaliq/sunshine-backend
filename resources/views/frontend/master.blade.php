<!DOCTYPE html>
<html lang="en">
<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>sunshine</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="{{asset('front')}}/css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="{{asset('front')}}/css/style.css">
    <!--    responsive css-->
    <link rel="stylesheet" href="{{asset('front')}}/css/responsive.css">
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="{{asset('front')}}/css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>-->
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

</head>
<!-- body -->
<body class="main-layout">
@inject('frontControllerObject ','\App\Http\Controllers\FrontendController')
<!-- loader  -->
<!-- end loader -->
<!-- pages -->

    <!-- pages inner -->
    <div class="header w-100 ">
        <div class="container-fluid">
            <div class="row">
                <div class=" col-lg-4 col-md-3 col-sm-3 col logo_section">
                    <div class="full">
                        <div class="center-desk">
                            <div class="logo">
                                <a href="{{route('front.index')}}"><img src="{{asset('front')}}/images/logo.png" alt="#"/></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class=" col-lg-8 col-md-9 col-sm-9 mobile_screen">
                    <nav class="navigation navbar navbar-expand-lg navbar-dark ">
                        <button class=" navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample04" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                            <ul class=" navbar-nav mr-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="{{route('front.index')}}">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{route('front.about','about-us')}}">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{route('front.products')}}">our product</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{route('front.gallery')}}">gallery</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{route('front.contact')}}">Contact Us</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- end pages inner -->
    <!-- end pages -->
    <!-- banner -->


<!-- end banner -->
@yield('content')

<!-- end contact -->
<!--  footer -->
<footer>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="newslatter">
                        <h4>Subscribe Our Newsletter</h4>
                        <form id="subscribe_form" class="bottom_form" method="post" action="{{route('front.subscribe.save')}}">
                            @csrf
                            <input class="enter" placeholder="Enter your email" type="email" name="email" required="required">
                            <button type="submit" class="sub_btn">subscribe</button>
                        </form>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class=" border_top1"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <h3>menu LINKS</h3>
                    <ul class="link_menu">
                        <li><a href="{{route('front.index')}}">Home</a></li>
                        <li><a href="{{ route('front.about','about-us') }}">About</a></li>
                        <li><a href="{{route('front.products')}}">Our Product</a></li>
                        <li><a href="{{route('front.gallery')}}">Gallery</a></li>
                        <li><a href="{{route('front.contact')}}">Contact Us</a></li>
                        <li><a href="{{route('front.page.detail','terms-and-condition')}}">Terms & Condition</a></li>
                        <li><a href="{{route('front.page.detail','privacy-policy')}}">Privacy Policy</a></li>
                    </ul>
                </div>
                <div class=" col-md-3">
                    <ul class="link_menu">
                        <h3>TOP food</h3>
                        @php
                        $topFood = $frontControllerObject->topFood();
                         @endphp
                        @foreach($topFood as $food)
                        <li><a href="{{route('front.products.detail' , $food->slug)}}">{{$food->title}}</a></li>
                        @endforeach
                    </ul>
                </div>
                <div class="col-lg-3 offset-mdlg-2 col-md-4 offset-md-1">
                    <h3>Contact </h3>
                    <ul class="conta">
                        @php
                            $address = $frontControllerObject->getAddress();
                        @endphp
                        @foreach($address as $add)
                            <li><a href="{{$add->link}}"><i class="{{$add->class}}" aria-hidden="true"></i></a> {{$add->title}}</li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 offset-md-1">
                        <p>© 2019 All Rights Reserved. Design by <a href="https://html.design/"> Free Noor Templates</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- end footer-->
<script>
    $(function(){
        $("#subscribe_form").on('submit', function(e){
            e.preventDefault();

            $.ajax({
                url:$(this).attr('action'),
                method:$(this).attr('method'),
                data:new FormData(this),
                processData:false,
                dataType:'json',
                contentType:false,
                success:function(data){
                    if(data.status == 0){
                        $.each(data.error, function(prefix, val){
                            $(prefix+'_error').text(val[0]);
                        });
                    }else{
                        $('#subscribe_form')[0].reset();
                        alert(data.message);
                    }
                }
            });
        });
    });
</script>
</body>
</html>

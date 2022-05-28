@extends('frontend.master')
@section('content')
    <div>
        <div class="inner_about">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="title">
                            <h2>{{$page->title}}</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="about" class="about">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage">
                        <span>
                            {{$page->description}}
                        </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

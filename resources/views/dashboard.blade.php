@extends('welcome')
@section('content')

    <div class="navbar-menu-wrapper d-flex align-items-top mb-5">
        <ul class="navbar-nav">
            <li class="nav-item font-weight-semibold d-none d-lg-block ms-0">
                <h1 class=" rounded bg-opacity-10">Dashboard</h1>
            </li>
        </ul>
    </div>
    <div class="row">
        <div class="col-lg-4 d-flex flex-column ">
            <div class="row flex-grow">
                <div class="col-md-6 col-lg-12 grid-margin stretch-card">
                    <div class="card bg-gradient-primary card-rounded ">
                        <div class="card-body pb-0">
                            <h4 class="card-title card-title-dash text-white mb-4">Products Summary</h4>
                            <div class="row">
                                <div class="col-sm-4">
                                    <p class="status-summary-ight-white mb-1">Total Products Count</p>
                                    <h2 class="text-info mb-5">{{$products}}</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4 d-flex flex-column ">
            <div class="row flex-grow">
                <div class="col-md-6 col-lg-12 grid-margin stretch-card">
                    <div class="card bg-gradient-info card-rounded ">
                        <div class="card-body pb-0">
                            <h4 class="card-title card-title-dash text-white mb-4">Gallery Summary</h4>
                            <div class="row">
                                <div class="col-sm-4">
                                    <p class="status-summary-ight-white mb-1">Total Gallery Count</p>
                                    <h2 class="text-info">{{$gallery}}</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




@endsection

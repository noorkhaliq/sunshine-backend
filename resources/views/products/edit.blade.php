@extends('welcome')
@section('content')
    <div class="main-panel w-100">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Edit Products</h4>
                            <form  method="post" action="{{route('products.update', $products->id)}}" class="forms-sample" enctype="multipart/form-data">
                                @csrf
                                @method('put')
                                <div class="form-group">
                                    <label for="exampleInputUsername1">Title</label>
                                    <input type="text" name="title" class="form-control name" value="{{$products->title}}" placeholder="Title">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Description</label>
                                    <textarea name="description" id="summernote" class="form-control">{{ $products->description }}</textarea>
                                </div>

                                <label>Select an Image</label>
                                <input type="file" class=" form-control" name="image" id="customFile" />

                                <br>
                                <br>
                                <div class="form-group">
                                    <label for="">sub_title</label>
                                    <input type="text" name="sub_title" class="form-control" value="{{$products->sub_title}}" placeholder="sub title">
                                </div>
                                <button type="submit" class="btn btn-primary me-2">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>

@endsection

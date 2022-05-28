@extends('welcome')
@section('content')
    <div class="main-panel w-100">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Products List</h4>
                            <a href="{{route('products.create')}}" class="btn btn-primary mb-5" style="float: right" >&plus;</a>
                            <div class="table-responsive overflow-hidden" style="margin-top: 5rem;width: 100%;">
                                <table id="userDataTable" class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th>
                                            #
                                        </th>
                                        <th>
                                            title
                                        </th>
                                        <th>
                                            sub_title
                                        </th>
                                        <th>
                                            image
                                        </th>
                                        <th>
                                            description
                                        </th>
                                        <th>
                                            Action
                                        </th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>

    <script>
        var table=undefined;
        $(document).ready(function(){
            table=$('#userDataTable').DataTable({
                "ajax": "{{route('products.list')}}",
                "processing": true,
                "serverSide": true,
                "columns": [
                    { data: "id",name:'id' },
                    { data: "title",name:'title' },
                    { data: "sub_title",name:'sub_title' },
                    { data: 'file_image', name:'image', orderable: false, searchable: false, render: function(data) {
                            return `<img src="${data}" width="100" height="100">`;
                    }},
                    { data: "short_description",name:'description' },
                    { data: "actions",searchable: false, orderable:false },

                ]

            })

            $('body').on('click', '.deletePage', function(e){
                if (confirm("Are you sure?")) {
                    var data = $(this).val();
                    $.post('requests/seminars.php', {delete_sem: data}, function(data) {
                        if (data == "delete") {
                            location.reload();
                        }else{
                            alert(data);
                        };

                    });
                }

            });




        });
    </script>


@endsection

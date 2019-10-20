 @extends('layouts.backend.master')
@section('content')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.18.0/sweetalert2.min.css">
    <meta name="csrf-token" content="{{ csrf_token() }}">

 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Data Tables
        
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>

    <section class="content">
      <div class="row">
        <div class="col-xs-12">
           
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Data Table With Full Features</h3>
            </div>
            <div class="float-right">
              <div class="container">
                  <div class="col-xs-4">
                <form action="{{ action('CompanyController@index') }}" method="get" role="search">
                    {{ csrf_field() }}
                    <div class="input-group">
                        <input type="text" class="form-control" name="q"
                            placeholder="Search users"> <span class="input-group-btn">
                            <button type="submit" class="btn btn-default">
                                <span class="glyphicon glyphicon-search"></span>
                            </button>
                        </span>
                    </div>
                </form>
              </div>
            </div>
                                </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>#</th>
                  <th>Name</th>
                  <th>Status</th>
                  <th>Description</th>
                  <th>Image</th>
                  <th>Option</th>
                </tr>
                </thead>
                <tbody>
                   @foreach ($posts as $key => $pos)
                <tr>
                  <td>{{++$key}}</td>
                  <td>{{$pos->name}}</td>
                  <td>{{($pos->status == 1)?'option 1':'option 2'}}</td>
                  <td>{{$pos->description}}</td>
                   <td><img width="100px" src="{{asset('uploads/posts/'.$pos->image)}}" alt="" /></td>
                   <td><a href="{{route('post.edit',[$pos->id])}}" class="btn btn-action btn-primary">Edit</a>
                  <a href="{{route('post.destroy',$pos->id)}}" data-method="delete" class="btn btn-action btn-danger jquery-post">Delete</a></td>
                </tr>
                @endforeach
                </tbody>
              </table>
              {{ $posts->links() }}
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
 
  @endsection


  @section('additional_scripts')

    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.18.0/sweetalert2.min.js"></script>
    <script>
        $(document).on('click', 'a.jquery-post', function(e) {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            e.preventDefault(); // does not go through with the link.
            var $this = $(this);
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.value){
                    $.post({
                         type: 'DELETE',
                        url: $this.attr('href')
                    }).done(function (data) {
                        Swal.fire(
                            'Deleted!',
                            'Your file has been deleted.',
                            'success'
                        )
                        window.location.reload();
                    });
                }
            });
        });
    </script>
    @endsection
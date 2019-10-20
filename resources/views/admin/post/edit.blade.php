@extends('layouts.backend.master')
@section('content')


<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Post Edit Form 
        
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Post</a></li>
        <li class="active">Create</li>
      </ol>
    </section>
 <!-- Main content -->
    <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Example</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" action="{{ route('post.update',$post->id) }}" method="post" enctype="multipart/form-data">
              @csrf
               @method('PUT')
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Name</label>
                  <input type="text" class="form-control" value="{{$post->name}}" name='name' id="exampleInputEmail1" placeholder="Enter name">
                </div>
                  <div class="form-group">
                  <label>Select</label>
                  <select class="form-control" name="status">
                    <option>select</option>
                    <option value="1" {{ $post->status == 1 ? 'selected' : '' }}>option 1</option>
                    <option value="2" {{ $post->status == 2 ? 'selected' : '' }}>option 2</option>
                  </select>
                </div>
                <div class="form-group">
                  <label>Description</label>
                  <textarea class="form-control" name="description" value="" rows="3" placeholder="Enter ...">{{$post->description}}</textarea>
                </div>
              </div>
              @if (!empty($post->image))
              <div class="form-group col-12">
                  <img  id="upload-image" width="100px" src="{{asset('uploads/posts/'.$post->image)}}" alt="" />
              </div>
              @endif
              <div class="form-group">
                  <label for="exampleInputFile">File input</label>
                  <input type="file" id="exampleInputFile" name="image">

                  <p class="help-block">Example </p>
                </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
          </div>
          <!-- /.box -->
      </div>
  </div>
</section>
</div>

@endsection
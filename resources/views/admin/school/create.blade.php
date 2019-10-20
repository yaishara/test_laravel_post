@extends('layouts.backend.master')
@section('content')


<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        School Form 
        
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">School</a></li>
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
            <form role="form" action="{{ action('SchoolController@store') }}" method="post" enctype="multipart/form-data">
              @csrf
              <div class="box-body">
                
                  <div class="form-group">
                  <label>Select Post</label>
                  <select class="form-control" name="status">
                    <option>Select Post</option>
                    @foreach ($posts as $key => $value)
                    <option value="{{ $key }}" {{ ( $key == $selectedID) ? 'selected' : '' }}> 
                      {{($value == 1)?'option 1': (($value == 2)? 'option 2' : 'option 3')}}
                      </option>
                     @endforeach   
                  </select>
                </div>
                
              
              <div class="form-group">
                  <label for="exampleInputFile">File input</label>
                      <br>
                      Product photos (can attach more than one): <br>
                        <input multiple="multiple" name="photos[]" type="file"> 
                          
                  <p class="help-block">Example </p>
                </div>
              <!--</ /.box-body -->
            </div>
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
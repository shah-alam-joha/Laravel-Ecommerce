@extends('backend.layouts.master')

@section('content')

<div class="main-panel">
  <div class="content-wrapper">

    <div class="card">
      <div class="card-header">
        Edit Division



      </div>
      <div class="card-body">

        <form action="{{ route('admin.division.update', $division->id) }}" method="post" enctype="multipart/form-data">

          @csrf

          @include('backend.partials.messages')
          

          <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" name="name" value="{{ $division->name }}">
          </div>  

           <div class="form-group">
            <label for="priority">Priority</label>
            <input type="text" class="form-control" id="priority" name="priority" value="{{ $division->priority }}">
          </div>
        
        
        <button type="submit" class="btn btn-success">Update division</button>

      </form>

    </div>
  </div>
</div>

</div>
</div>
<!-- main-panel ends -->
@endsection()
@extends('backend.layouts.master')

@section('content')

<div class="main-panel">
  <div class="content-wrapper">

    <div class="card">
      <div class="card-header">
        Add Category



      </div>
      <div class="card-body">

        <form action="{{ route('admin.category.store') }}" method="post" enctype="multipart/form-data">

          @csrf

          @include('backend.partials.messages')
          

          <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter Category Name">

          </div>

          <div class="form-group">
            <label for="exampleInputPassword">Description</label>
            <textarea name="description" rows="8" cols="30" class="form-control"></textarea>
          </div>

          <div class="form-group">
            <label for="exampleInputPassword">Parent Category</label>
           {{--  <select class="form-control" name="parent_id">

             @foreach ( $main_categories as $category )

             <option value=" {{ $category->id }}" > {{ $category->name }}</option>

             @endforeach

           </select> --}}

           <select class="form-control" name="parent_id">

              <option value="">Please select a primary category</option>

            @foreach ( $main_categories as $category )

            <option value="{{ $category->id }}" {{ $category->id == $category->parent_id ? 'selected' : '' }} > {{ $category->name }} </option>

            @endforeach

          </select>

         </div>



         <div class="form-group">
          <label for="image">Category Image</label>

          <input type="file" class="form-control" name="image" id="image">
        </div>              



        <button type="submit" class="btn btn-primary">Add Category</button>

      </form>

    </div>
  </div>
</div>

</div>
</div>
<!-- main-panel ends -->
@endsection()
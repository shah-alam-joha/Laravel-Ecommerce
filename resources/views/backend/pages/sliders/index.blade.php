@extends('backend.layouts.master')

@section('content')

<div class="main-panel">
  <div class="content-wrapper">

    <div class="card">
      <div class="card-header">
        Manage Slider

      </div>
      <div class="card-body">

        @include('backend.partials.messages')

        <a href="#addSliderModel" data-toggle = "modal" class="btn btn-info float-right mb-2">
          <i class="fa fa-plus"></i> Add New Slider
        </a>
        <div class="clearfix"></div>

        <!--Add new slider Modal -->
        <div class="modal fade" id="addSliderModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Slider</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form action="{{ route('admin.slider.store') }}" method="post" enctype="multipart/form-data">

                  @csrf

                  <div class="form-group">
                    <label for ="title">Slider Title <small class="text-danger"> (required)</small></label>
                    <input class="form-control" type="text" name="title" id="title" placeholder="Slider Title" required>
                  </div>

                  <div class="form-group">
                    <label for ="image">Slider Image <small class="text-danger">(required)</small></label>
                    <input class="form-control" type="file" name="image" id="image" placeholder="Slider Image" required="">
                  </div>

                  <div class="form-group">
                    <label for ="button_text">Slider Button Text <small class="text-info">(optional)</small></label>
                    <input class="form-control" type="text" name="button_text" id="button_text" placeholder="Slider Button Text (if need)">
                  </div>

                  <div class="form-group">
                    <label for ="button_link">Slider Button Link <small class="text-info">(optional)</small></label>
                    <input class="form-control" type="url" name="button_link" id="button_link" placeholder="Slider Button Link (if need)">
                  </div>

                  <div class="form-group">
                    <label for ="priority">Slider Button Priority <small class="text-danger">(required)</small></label>
                    <input class="form-control" type="number" name="priority" id="priority" placeholder="Slider Button Priority">
                  </div>

                  <button type="submit" class="btn btn-danger">Add New</button>
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> 
                </form>

              </div>
            </div>
          </div>
        </div>


        <table class="table table-hover table-stiped" id="dataTable">
          <thead>
           <tr>
            <th>#</th>
            <th>Slider Title</th>
            <th>Slider Image</th>
            <th>Slider Prioriyt</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>



          @foreach ( $sliders as $slider )
          <tr>
            <td>{{ $loop->index + 1 }}</td>
            <td> {{ $slider->title }} </td>
            <td> 
              <img src="{{ asset('images/sliders/'.$slider->image) }}" width="40">
            </td>
            <td> {{ $slider->priority }} </td>
            

            <td> 
              <a href="#editModal{{ $slider->id }}" data-toggle ="modal" class="btn btn-success">Edit</a>
              <a href="#deleteModal{{ $slider->id }}" data-toggle ="modal" class="btn btn-danger">Delete</a>
              

              <!-- Button trigger modal -->
              
           {{--    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteModel{{$slider->id}}">
                Delete
              </button> --}}

              <!--Delete Modal -->
              <div class="modal fade" id="deleteModal{{ $slider->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Are you sure to delete it?</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <form action="{{ route('admin.slider.delete', $slider->id ) }}" method="post">

                        @csrf

                        <button type="submit" class="btn btn-danger">Permanent Delete</button>
                      </form>

                      
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                    </div>
                  </div>
                </div>
              </div>


              <!--Edit slider Modal -->
              <div class="modal fade" id="editModal{{ $slider->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Edit Slider</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <form action="{{ route('admin.slider.update', $slider->id) }}" method="post" enctype="multipart/form-data">

                        @csrf

                        <div class="form-group">
                          <label for ="title">Slider Title <small class="text-danger"> (required)</small></label>
                          <br>
                          <input class="form-control" type="text" name="title" id="title" placeholder="Slider Title" required value="{{ $slider->title}}">
                        </div>

                        <div class="form-group">
                          <label for ="image">Slider Image 
                            <a href="{{ asset('images/sliders/'.$slider->image) }}" target="_blank">Previous Image</a>
                            <small class="text-info">(optional)</small></label>
                            <br>
                            <input class="form-control" type="file" name="image" id="image" placeholder="Slider Image">
                          </div>

                          <div class="form-group">
                            <label for ="button_text">Slider Button Text <small class="text-info">(optional)</small></label>
                            <br>
                            <input class="form-control" type="text" name="button_text" id="button_text" placeholder="Slider Button Text (if need)" value="{{ $slider->button_text}}">
                          </div>

                          <div class="form-group">
                            <label for ="button_link">Slider Button Link <small class="text-info">(optional)</small></label>
                            <br>
                            <input class="form-control" type="url" name="button_link" id="button_link" placeholder="Slider Button Link (if need)" value="{{ $slider->button_link}}">
                          </div>

                          <div class="form-group">
                            <label for ="priority">Slider Button Priority <small class="text-info">(required)</small></label>
                            <br>
                            <input class="form-control" type="number" name="priority" id="priority" placeholder="Slider Button Priority" required value="{{ $slider->priority}}">
                          </div>

                          <button type="submit" class="btn btn-danger">Confirm Edit</button>
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> 
                        </form>

                      </div>
                    </div>
                  </div>
                </div>


              </td>

            </tr>
            @endforeach 
          </tbody>

          <tfoot>
            <tr>
              <th>#</th>
              <th>Slider Title</th>
              <th>Slider Image</th>
              <th>Slider Prioriyt</th>
              <th>Action</th>
            </tr>
          </tfoot>

        </table>

      </div>
    </div>
  </div>

</div>
</div>
<!-- main-panel ends -->
@endsection()
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 {{--  <title>Star Admin Premium Bootstrap Admin Dashboard Template</title> --}}

  <title>
@yield('title', 'Larvel Ecommerce Project')
  </title>

  <!-- plugins:css -->
  <link rel="stylesheet" href="{{ asset('assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css')}}">
  <link rel="stylesheet" href="{{ asset('assets/vendors/iconfonts/ionicons/dist/css/ionicons.css')}}">
  <link rel="stylesheet" href="{{ asset('assets/vendors/iconfonts/flag-icon-css/css/flag-icon.min.css')}}">
  <link rel="stylesheet" href="{{ asset('assets/vendors/css/vendor.bundle.base.css')}}">
  <link rel="stylesheet" href="{{ asset('assets/vendors/css/vendor.bundle.addons.css')}}">



  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="{{ asset('css/datatables.min.css') }}">
  <link rel="stylesheet" href="{{ asset('css/admin_style.css') }}">
  <!-- endinject -->
  <!-- Layout styles -->
  <link rel="stylesheet" href="{{ asset('css/admin_demo_1.css') }}">
  <!-- End Layout styles -->
  <link rel="shortcut icon" href="{{ asset('assets/images/favicon.ico')}}" />
</head>
<body>
  <div class="container-scroller">


    @include('backend.partials.nav')  
      

    <!-- partial -->
    <div class="container-fluid page-body-wrapper">


      @include('backend.partials.left_sidebar')  


      @yield('content')

   {{--  eita footer check korar jonne --}}
   {{-- @include('frontend.partials.footer') --}}

    </div>
    <!-- page-body-wrapper ends -->
  </div>


  <!-- container-scroller -->
  <!-- plugins:js -->


  <script src="{{ asset('js/jquery-3.2.1.slim.min.js') }}"></script>
  <script src="{{ asset('js/popper.min.js') }}"></script>
  <script src="{{ asset('js/bootstrap.min.js') }}"></script>
  <script src="{{ asset('js/datatables.min.js') }}"></script>

  <script>
    $(document).ready(function() {
    $('#dataTable').DataTable();
} );
  </script>


  <!-- Custom js for this page-->

  <script src="{{ asset('assets/js/demo_1/dashboard.js') }}"></script>
  <script src="{{ asset('js/chart.js') }}"> </script>
  <script src="{{ asset('js/dashboard.js') }}"> </script>

  <!-- End custom js for this page-->
  <script src="{{ asset('js/jquery.cookie.js') }}" type="text/javascript"></script>



</body>
</html>
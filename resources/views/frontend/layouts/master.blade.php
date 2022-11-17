<!DOCTYPE html>
<html>
<head>
	<title>

@yield('title', 'Larvel Ecommerce Project')
	</title>
	<meta name="csrf-token" content="{{ csrf_token() }}">

	@include('frontend.partials.styles') 

</head>
<body>
	<div class="wrapper">

		<!-- {{-- Navigation --}} -->
		@include('frontend.partials.nav')
		@include( 'frontend.partials.messages')

		<!-- here the main content present -->
		@yield('content')

		<!-- Footer section start here -->
		@include('frontend.partials.footer')



	</div>


@include('frontend.partials.scripts')
@yield('scripts')

</body>
</html>

@extends('frontend.layouts.master')

@section('content')

{{--  bootstrap carousel sliders --}}
<div class="our-slider">
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">

			@foreach ($sliders as $slider)
			<li data-target="#carouselExampleIndicators" data-slide-to="{{ $loop->index }}" class="{{ $loop->index == 0 ? 'active' : ''}}"></li>
			@endforeach

		</ol>

		<div class="carousel-inner">

			@foreach ($sliders as $slider)
			<div class="carousel-item {{ $loop->index == 0 ? 'active' : ''}}">
				<img class="d-block w-100" src="{{ asset('images/sliders/'.$slider->image) }}" alt="{{ $slider->title}}" style="height: 550px;">
				<div class="carousel-caption d-none d-md-block">
					<h5>{{ $slider->title}} </h5>
					<p>
						@if ($slider->button_text)
						<a href="{{$slider->button_link}}" class="btn btn-warning" target="_blank">{{$slider->button_text}}</a>
					@endif
					</p>
				</div>
			</div>
			@endforeach

		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</div>
<!-- sidebar +  content start -->
<div class="container margin-top-20">
	<div class="row">
		<div class="col-md-4">
			
			@include('frontend.partials.product-sidebar')

		</div>

		<div class="col-md-8">

			<div class="widget">
				<h2>All Products</h2>
				
				@include('frontend.pages.product.partials.all_products')

			</div>

			<div class="widget">

			</div>

		</div>
	</div>
</div>

<!-- sidebar + content end -->

@endsection

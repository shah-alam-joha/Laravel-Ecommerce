@extends('frontend.layouts.master')

@section('content')
<!-- sidebar +  content start -->
<div class="container margin-top-20">
	<div class="row">
		<div class="col-md-4">
			
			@include('frontend.partials.product-sidebar')

		</div>

		<div class="col-md-8">

			<div class="widget">
				<h3>All Products in <span class="badge badge-info">{{ $category->name }} Category </span></h3>

				@php
				$products = $category->products()->simplePaginate(9);
				@endphp

				@if ( $products ->count() > 0)
				@include('frontend.pages.product.partials.all_products')

				@else
				<div class="alert alert-warning">
					No products has added yet in this categroy !!
				</div>

				@endif


			</div>

			<div class="widget">

			</div>

		</div>
	</div>
</div>

<!-- sidebar + content end -->

@endsection

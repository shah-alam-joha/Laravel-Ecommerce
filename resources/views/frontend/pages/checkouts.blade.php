@extends('frontend.layouts.master')

@section('content')

<div class="container margin-top-20">
	<div class="card card-body">
		<h2>Confirm Checkouts</h2>
		<hr>
		<div class="row">
			<div class="col-md-7 border-right">
				

				@foreach (App\Models\Cart::totalCarts() as $cart)
				<p>
					{{ $cart->product->title }}
					- <strong>{{ $cart->product->price }}</strong> taka
					- <strong>{{ $cart->product_quantity }}</strong> items
					= <strong>{{ $cart->product->price *  $cart->product_quantity}}</strong> taka
				</p>
				@endforeach

				<p>
					<a href="{{ route('carts') }}">Change confirm items</a>
				</p>
			</div>

			<div class="col-md-5">
				@php
				$total_price = 0;
				@endphp

				@foreach (App\Models\Cart::totalCarts() as $cart)
				@php
				$total_price += $cart->product->price * $cart->product_quantity;
				@endphp
				@endforeach
				<p>Total Price = <strong>{{ $total_price}} taka</strong> </p>
				<p>Total Price with Shipping cost = <strong>{{ $total_price + App\Models\Setting::first()->shipping_cost }} taka</strong> </p>
			</div>
		</div>
	</div>

	<div class="card card-body mt-2 mb-4">
		<h2>Shipping Address</h2>
		<hr>

		<form method="POST" action="{{ route('checkouts.store') }}" enctype="multipart/form-data">
			@csrf

			<div class="form-group row">
				<label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Receiver Name') }}</label>
				<div class="col-md-6">
					<input id="name" type="name" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ Auth::check() ? Auth::user()->first_name . ' ' . Auth::user()->last_name : '' }}" required autocomplete="name" autofocus>
					@error('name')
					<span class="invalid-feedback" role="alert">
						<strong>{{ $message }}</strong>
					</span>
					@enderror
				</div>
			</div>

			

			<div class="form-group row">
				<label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

				<div class="col-md-6">
					<input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ Auth::check() ? Auth::user()->email : ' ' }}" required autocomplete="email" autofocus>
					@error('email')
					<span class="invalid-feedback" role="alert">
						<strong>{{ $message }}</strong>
					</span>
					@enderror
				</div>
			</div>  

			<div class="form-group row">
				<label for="phone_no" class="col-md-4 col-form-label text-md-right">{{ __('Phone Number') }}</label>
				<div class="col-md-6">
					<input id="phone_no" type="text" class="form-control @error('phone_no') is-invalid @enderror" name="phone_no" value="{{ Auth::check() ? Auth::user()->phone_no : ' ' }}" required autocomplete="phone_no" autofocus>
					@error('phone_no')
					<span class="invalid-feedback" role="alert">
						<strong>{{ $message }}</strong>
					</span>
					@enderror
				</div>
			</div>




			<div class="form-group row">
				<label for="message" class="col-md-4 col-form-label text-md-right required">{{ __('Additional Message (Optional)' )}}</label>
				<div class="col-md-6">
					<textarea id="message" class="form-control @error('message') is-invalid @enderror" rows="4" name="message" autocomplete="message" autofocus></textarea>
					@error('message')
					<span class="invalid-feedback" role="alert">
						<strong>{{ $message }}</strong>
					</span>
					@enderror
				</div>
			</div>

			<div class="form-group row">
				<label for="shipping_address" class="col-md-4 col-form-label text-md-right required">{{ __('Shipping Address (*)' )}}</label>
				<div class="col-md-6">
					<textarea id="shipping_address" class="form-control @error('shipping_address') is-invalid @enderror" rows="4" name="shipping_address" autocomplete="shipping_address" autofocus> {{ Auth::check() ? Auth::user()->shipping_address : ' ' }} </textarea>
					@error('shipping_address')
					<span class="invalid-feedback" role="alert">
						<strong>{{ $message }}</strong>
					</span>
					@enderror
				</div>
			</div>


			<div class="form-group row">
				<label for="payment_method" class="col-md-4 col-form-label text-md-right required">{{ __('Select a payment method' )}}</label>
				<div class="col-md-6">
					<select class="form-control" name="payment_method_id" required="" id="payments"> 
						<option value="">Please select a payment method</option>
						@foreach ($payments as $payment)

						<option value="{{$payment->short_name}}"> {{ $payment->name}}</option>
						@endforeach
					</select>

					@foreach ($payments  as $payment)
					
					@if ($payment->short_name == "cash_on")
					<div id="payment_{{ $payment->short_name }}" class="alert alert-success hidden mt-2 text-center">
						<h3>
							For {{$payment->name}} payment there is nothing necessary. Just click finished order.
							<br>
							<small>
								You will get your product in two or three business day. Please wait.
							</small>
						</h3>
					</div>

					@else
					<div id="payment_{{ $payment->short_name }}" class=" alert alert-success hidden mt-2 text-center">
						<h3>
							{{$payment->name}} payment
						</h3>
						<p>
							<strong> {{$payment->name}} No : {{$payment->no}}</strong>
							<br>
							<strong> Account type : {{$payment->type}} </strong>
						</p>
						<div class="alert alert-success">
							Please give the above money to this {{$payment->short_name}} number and write your transaction code below.
						</div>
					</div>
					@endif	
					@endforeach

					<input type="text" name="transaction_id" id="transaction_id" class="form-control hidden" placeholder="Enter your transaction code">

				</div>

			</div>
			<div class="form-group row mb-0">
				<div class="col-md-8 offset-md-4">
					<button type="submit" class="btn btn-primary">
						Order Confirm
					</button>


				</div>
			</div>
		</div>


		
	</form>
</div>

</div>

@endsection

@section('scripts')
<script type="text/javascript">
	$("#payments").change(function (){

		$payment_method = $("#payments").val();

		if ($payment_method == "cash_on"){
			$("#payment_cash_on").removeClass('hidden');
			$("#payment_bkash").addClass('hidden');
			$("#payment_rocket").addClass('hidden');
		}else if ($payment_method == "bkash") {
			$("#payment_bkash").removeClass('hidden');
			$("#payment_cash_on").addClass('hidden');
			$("#payment_rocket").addClass('hidden');
			$("#transaction_id").removeClass('hidden');
		}else if ($payment_method == "rocket") {
			$("#payment_rocket").removeClass('hidden');
			$("#payment_cash_on").addClass('hidden');
			$("#payment_bkash").addClass('hidden');
			$("#transaction_id").removeClass('hidden');
			
		}
	});
</script>
@endsection
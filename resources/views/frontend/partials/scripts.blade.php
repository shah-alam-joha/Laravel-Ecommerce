{{-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> --}}

<script src="{{ asset('js/jquery-3.6.0.min.js') }}"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

{{-- <script src="{{ asset('js/jquery-3.6.0.min.js') }}"></script>
<script src="{{ asset('js/popper.min.js') }}"></script>
<script src="{{ asset('js/bootstrap.min.js') }}"></script> --}}

<!-- JavaScript for alertity toast -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>



<script>
	$.ajaxSetup({
		headers: {
			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		}
	});
	function addToCart(product_id) {
		var url = "{{ url('/') }}";
		$.post( url+"/api/carts/store", { 
			product_id : product_id
		})
		.done(function( data ) {
			data = JSON.parse(data);
			if(data.status == 'success')
			{
				//toast
				alertify.set('notifier','position', 'top-center');
				alertify.success('Item added Succesfully..!! <br /> Total items : '+data.totalItems+ ' <br />To Chekout <a href ="{{ route('carts') }}">go to checkout page </a>');

				$("#totalItems").html(data.totalItems);
			}
		});
	}
</script>
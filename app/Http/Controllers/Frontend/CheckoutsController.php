<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Payment;
use App\Models\Order;
use App\Models\Cart;

use Auth;

class CheckoutsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $payments = Payment::orderBy('priority', 'asc')->get();
        return view ('frontend.pages.checkouts', compact('payments'));
    }



    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $this->validate($request, [
        'name' => 'required',
        'phone_no' => 'required',
        'shipping_address' => 'required',
        'payment_method_id' => 'required',
    ]);

      $order = new Order();

      //check transaction id given or not

      if ($request->payment_method_id != 'cash_on'){
        if($request->transaction_id == NULL || empty($request->transaction_id)){

            session()->flash('sticky_error', ' Pleasae give your transaction id.');
            return back();
        }
    }

        $order->name = $request->name;
        $order->email = $request->email;
        $order->phone_no = $request->phone_no;
        $order->shipping_address = $request->shipping_address;
        $order->message = $request->message;
        $order->ip_address = request()->ip();
        $order->transaction_id = $request->transaction_id;

        if (Auth::check()){
            $order->user_id = Auth::id();
        }

        $order->payment_id = Payment::where('short_name', $request->payment_method_id)->first()->id;
        $order->save();

        foreach (Cart::totalCarts() as $cart) {
            $cart->order_id = $order->id;
            $cart->save();

        }

        session()->flash('success', 'Your order has taken successfully ! Please wait, admin will contact you soon.!!');
        return redirect()->route('index');

    }
}




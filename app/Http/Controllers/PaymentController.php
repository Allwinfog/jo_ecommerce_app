<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\cart;
use App\Models\Order;
use Illuminate\Support\Facades\Session;
use Stripe;


class PaymentController extends Controller
{

    public function stripe($totalprice)
    {
        return view('home.stripe', compact('totalprice'));
    }

    public function stripePost(Request $request, $totalprice)

    {

        Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));


        Stripe\Charge::create([

            "amount" => $totalprice,

            "currency" => "usd",

            "source" => $request->stripeToken,

            "description" => "Thanks for payment."

        ]);

        $user = Auth::user();

        $userid = $user->id;

        $data = cart::where('user_id', '=', $userid)->get();

        foreach ($data as $data) {
            $order = new order;

            $order->name = $data->name;

            $order->email = $data->email;

            $order->phone = $data->phone;

            $order->address = $data->address;

            $order->user_id = $data->user_id;


            $order->product_title = $data->product_title;

            $order->price = $data->price;

            $order->quantity = $data->quantity;

            $order->image = $data->Image;

            $order->product_id = $data->Product_id;


            $order->payment_status = 'Paid through card';

            $order->delivery_status = 'processing';

            $order->save();

            $cart_id = $data->id;

            $cart = cart::find($cart_id);

            $cart->delete();
        }


        Session::flash('success', 'Payment successful!');


        return back();

    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\Order;
use App\Models\products;
use Illuminate\Support\Facades\Auth;


class OrderController extends Controller
{

    public function show_order()
    {
        if (Auth::id()) {
            $user = Auth::user();

            $userid = $user->id;

            $order = order::where('user_id', '=', "$userid")->get();


            return view('home.order', compact('order'));
        } else {
            return redirect('login');
        }
    }

    public function cash_order()
    {
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

            $product = Products::find($order->product_id);
            $product->quantity = $product->quantity - $order->quantity;
            $product->save();


            $order->payment_status = 'cash on delivery';

            $order->delivery_status = 'processing';

            $order->save();

            $cart_id = $data->id;

            $cart = cart::find($cart_id);

            $cart->delete();
        }
        return redirect()->back()->with('message', 'We have received your Order, We will connect with you soon... ');
    }

    public function Cancel_Order($id)
    {
        $order = order::find($id);

        $order->delivery_status = 'You canceled the order';

        $order->save();

        return redirect()->back();
    }
}

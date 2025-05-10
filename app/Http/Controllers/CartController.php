<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;

use App\Models\products;

use Illuminate\Http\Request;


use App\Models\cart;


class CartController extends Controller
{

    public function add_cart(Request $request, $id)
    {
        if (Auth::id()) {
            $user = Auth::user();

            $userid = $user->id;

            $product = products::find($id);

            $product_exist_id = cart::where('Product_id', '=', $id)->where('user_id', '=', $userid)->get('id')->first();

            if ($product_exist_id) {
                $cart = cart::find($product_exist_id)->first();

                $quantity = $cart->quantity;

                $cart->quantity = $quantity + $request->quantity;

                if ($product->discount != null) {
                    $cart->price = $product->discount * $cart->quantity;
                } else {
                    $cart->price = $product->price * $request->quantity;
                }

                $cart->save();

                return redirect()->back()->with('message', 'Product added successfully');

            } else {
                $cart = new cart;

                $cart->name = $user->name;

                $cart->email = $user->email;

                $cart->phone = $user->phone;

                $cart->address = $user->address;

                $cart->user_id = $user->id;

                $cart->product_title = $product->title;

                if ($product->discount != null) {
                    $cart->price = $product->discount * $request->quantity;
                } else {
                    $cart->price = $product->price * $request->quantity;
                }

                $cart->image = $product->image;

                $cart->Product_id = $product->id;

                $cart->quantity = $request->quantity;

                $cart->save();

                return redirect()->back()->with('message', 'Product added successfully');

            }


        } else {
            return redirect('login');
        }
    }

    public function show_cart()
    {

        if (Auth::id()) {
            $id = Auth::user()->id;

            $cart = cart::where('user_id', '=', $id)->get();

            return view('home.show_cart', compact('cart'));
        } else {
            return redirect('login');
        }

    }

    public function remove_cart($id)
    {
        $cart = cart::find($id);

        $cart->delete();

        return redirect()->back();
    }
}

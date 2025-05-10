<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;

use App\Models\Products;
use App\Models\Order;
use App\Models\User;

class HomeController extends Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $products = products::paginate(10);

        return view('home.userpage')->with('products', $products)
            ->with('comments', $this->comments)
            ->with('replies', $this->replies);
    }

    public function redirect()
    {
        $usertype = Auth::user()->usertype;

        if ($usertype == '1') {

            $total_product = products::all()->count();

            $total_orders = Order::all()->count();

            $total_Users = User::all()->count();

            $order = order::all();

            $total_revenue = 0;

            foreach ($order as $order) {
                $total_revenue = $total_revenue + $order->price;
            }

            $total_delivered = order::where('delivery_status', '=', 'delivered')->get()->count();

            $total_processing = order::where('delivery_status', '=', 'processing')->get()->count();


            return view('admin.home', compact('total_product', 'total_orders', 'total_Users', 'total_revenue', 'total_delivered', 'total_processing'));
        } else {

            return view('home.userpage')->with('products', Products::paginate(10))
                ->with('comments', $this->comments)
                ->with('replies', $this->replies);

        }
    }
}

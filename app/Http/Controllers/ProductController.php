<?php

namespace App\Http\Controllers;

use App\Models\products;
use Illuminate\Http\Request;


class ProductController extends Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function product()
    {
        $products = products::paginate(10);

        return view('home.all_product')->with('products', $products)
            ->with('comments', $this->comments)
            ->with('replies', $this->replies);
    }

    public function product_details($id)
    {

        $products = products::find($id);

        return view('home.product_details', compact('products'));
    }

    public function search_product(Request $request)
    {
        $products = products::where('title', 'LIKE', "%{$request->search}%")->orWhere('category', 'LIKE', "{$request->search}")->paginate(10);

        return view('home.all_product')->with('products', $products)
            ->with('comments', $this->comments)
            ->with('replies', $this->replies);
    }
}

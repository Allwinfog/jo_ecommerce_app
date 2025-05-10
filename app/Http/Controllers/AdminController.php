<?php

namespace App\Http\Controllers;

use App\Models\category;
use App\Models\Order;
use App\Models\products;
use App\Notifications\SendEmailNotification;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Notification;


class AdminController extends Controller
{
    public function view_category()
    {
        $categories = category::paginate(10);
        return view('admin.category', compact('categories'));
    }

    public function add_category(Request $request)
    {
        $data = new Category;

        $data->category_name = $request->category_name;

        $data->save();

        return redirect()->back()->with('message', 'Category added successfully');
    }

    public function delete_category($id)
    {
        $data = category::find($id);

        $data->delete();

        return redirect()->back()->with('message', 'Category deleted successfully');
    }

    public function view_product()
    {
        $category = category::all();
        return view('admin.product', compact('category'));
    }

    public function add_product(Request $request)
    {
        $product = new products;

        $product->title = $request->title;

        $product->description = $request->description;

        $product->price = $request->price;

        $product->quantity = $request->quantity;

        $product->discount = $request->discount;

        $product->category = $request->category;

        $image = $request->image;

        $imagename = time() . '.' . $image->getClientOriginalExtension();

        $request->image->move('product', $imagename);

        $product->image = $imagename;

        $product->save();

        return redirect()->back()->with('message', 'product Added Successfully');

    }

    public function show_product()
    {
        $products = products::paginate(10);
        return view('admin.show_product', compact('products'));
    }

    public function delete_product($id)
    {
        $product = products::find($id);

        $product->delete();

        return redirect()->back()->with('message', 'Product deleted successfully');
    }

    public function update_product($id)
    {

        $product = products::find($id);

        $category = category::all();

        return view('admin.update_product', compact('product', 'category'));
    }

    public function update_product_confirm(Request $request, $id)
    {
        $product = products::find($id);

        $product->title = $request->title;

        $product->description = $request->description;

        $product->quantity = $request->quantity;

        $product->category = $request->category;

        $product->price = $request->price;

        $product->discount = $request->discount;

        $image = $request->image;

        if ($image) {

            $imagename = time() . '.' . $image->getClientOriginalExtension();

            $request->image->move('product', $imagename);

            $product->image = $imagename;

        }

        $product->save();

        return redirect()->back()->with('message', 'Product Updated successfully');

    }

    public function order()
    {
        $orders = order::paginate(10);
        return view('admin.order', compact('orders'));
    }

    public function delivered($id)
    {
        $order = order::find($id);

        $order->delivery_status = "delivered";

        $order->payment_status = "Amount Received";

        $order->save();

        return redirect()->back();
    }

    public function print_pdf($id)
    {
        $order = order::find($id);

        $pdf = PDF::loadView('admin.pdf', compact('order'));

        return $pdf->download('order_details.pdf');
    }

    public function send_email($id)
    {
        $order = order::find($id);

        return view('admin.email_info', compact('order'));
    }

    public function send_user_email(Request $request, $id)
    {
        $order = order::find($id);

        $details = [

            'greeting' => $request->greeting,

            'firstline' => $request->firstline,

            'body' => $request->body,

            'button' => $request->button,

            'url' => $request->url,

            'lastline' => $request->lastline,

        ];

        Notification::send($order, new SendEmailNotification($details));

        return redirect()->back()->with('message', 'Email sent successfully');
    }

    public function searchdata(Request $request)
    {
        $orders = Order::where('name', 'LIKE', "%" . $request->search . "%")->orWhere('product_title', 'LIKE', "%" . $request->search . "%")->paginate(10);

        return view('admin.order', compact('orders'));
    }
}

<!DOCTYPE html>
<html>
<head>
    <!-- Basic -->
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <!-- Site Metas -->
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <link rel="shortcut icon" href="home/images/favicon.png" type="">
    <title>{{ config('app.name', 'Laravel') }}</title>
    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="home/css/bootstrap.css"/>
    <!-- font awesome style -->
    <link href="home/css/font-awesome.min.css" rel="stylesheet"/>
    <!-- Custom styles for this template -->
    <link href="home/css/style.css" rel="stylesheet"/>
    <!-- responsive style -->
    <link href="home/css/responsive.css" rel="stylesheet"/>

    <style type="text/css">


        .center {
            margin: auto;
            width: 70%;
            text-align: center;
            padding: 30px;
        }

        .table_des {
            border: 3px solid black;
        }

        .table_des th, .table_des td {
            border: 2px solid black;
            padding: 8px;
        }

        .th_des {
            font-size: 20px;
            padding: 5px;
            background-color: skyblue;
        }

        .img_des {
            /*height: 200px;*/
            /*width: 200px;*/
            width: 100px;
            height: 135px;
            object-fit: contain;
        }

        .total_des {
            font-size: 20px;
            padding: 40px;
        }


    </style>
</head>
<body>
<div class="hero_area">
    <!-- header section strats -->
    @include('home.header')
    <!-- end header section -->

    @if(session()->has('message'))
        <div class="alert alert-success alert-dismissible fade show custom-alert" role="alert">
            {{ session()->get('message') }}
            <button type="button" class="close" data-bs-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    @endif

    <!-- slider section -->

    <!-- end slider section -->

    <div class="container mt-5">

        <!-- Shopping Cart Table -->
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover">
                <thead class="thead-dark">
                <tr>
                    <th></th>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody id="cart-items">
                <?php $totalprice = 0; ?>

                @forelse($cart as $cart)
                    <tr>
                        <td>
                            <img class="img_des" src="/product/{{ $cart->Image }}" alt="">
                        </td>
                        <td><a href="{{ route('product-details',$cart->Product_id) }}">{{$cart->product_title}}</a></td>
                        <td>{{ $cart->quantity}}</td>
                        <td>{{ $cart->price}}</td>

                        <td><a class="btn btn-danger" onclick="return confirm('Are you sure to remove this product')"
                               href="{{ url('remove_cart',$cart->id) }}">Remove product</a></td>

                    </tr>

                        <?php $totalprice = $totalprice + $cart->price ?>

                @empty
                    <tr>
                        <td colspan="5">Your cart is empty</td>
                    </tr>
                @endforelse
                </tbody>
            </table>
        </div>


        <div class="row">
            <div class="col-md-6">
                <a href="{{ route('shop') }}" class="btn btn-secondary btn-lg">Continue Shopping</a>
            </div>
            <div class="col-md-6 text-right">
                <h3 class="total_des">Total Price : <span id="total-price">{{ $totalprice }}</span></h3>
                <a href="{{ url('cash_order') }}">
                    <button class="btn btn-primary btn-lg">Cash on Delivery</button>
                </a>
                <a href=" {{ url('stripe',$totalprice) }}">
                    <button class="btn btn-primary btn-lg">Pay Using Card</button>
                </a>
            </div>
        </div>
    </div>

    <!-- footer start -->
    @include('home.footer')
    <!-- footer end -->


    <!-- jQery -->
    <script src="home/js/jquery-3.4.1.min.js"></script>
    <!-- popper js -->
    <script src="home/js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="home/js/bootstrap.js"></script>
    <!-- custom js -->
    <script src="home/js/custom.js"></script>
</body>
</html>


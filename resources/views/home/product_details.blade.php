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
    <link rel="shortcut icon" href="images/favicon.png" type="">
    <title>{{ config('app.name', 'Laravel') }}</title>
    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="{{asset('home/css/bootstrap.css')}}"/>
    <!-- font awesome style -->
    <link href="{{asset('home/css/font-awesome.min.css')}}" rel="stylesheet"/>
    <!-- Custom styles for this template -->
    <link href="{{asset('home/css/style.css')}}" rel="stylesheet"/>
    <!-- responsive style -->
    <link href="{{asset('home/css/responsive.css')}}" rel="stylesheet"/>
</head>
<body>
<div class="hero_area">
    <!-- header section strats -->
    @include('home.header')
    <!-- end header section -->


    <div class="col-sm-6 col-md-4 col-lg-4" style="margin: auto; padding: 30px; width:50%;">

        <div class="img-box" style="padding:20px">
            <img src="/product/{{ $product->image }}" alt="">
        </div>
        <div class="detail-box">
            <h5>
                {{ $product->title }}
            </h5>

            @if($product->discount!=null)
                <h6 style="color:red">
                    Discount price
                    <br>
                    {{ $product->discount }}
                </h6>

                <h6 style="text-decoration: line-through; color:blue">
                    price
                    <br>
                    Rs-{{ $product->price }}
                </h6>

            @else

                <h6 style="color:blue">
                    <br>
                    Rs-{{ $product->price }}
                </h6>

            @endif

            <h6>
                Product Category : {{ $product->category }} </h6>

            <h6> Product Details : {{ $product->description }} </h6>

            <h6>
                @if($product->quantity>0)
                    Available quantity : {{ $product->quantity }}

                @else
                    Available quantity :  Out of stock
                @endif

            </h6>


            <form action="{{ url('add_cart',$product->id) }}" method="post">

                @csrf

                <div class="row">

                    <div class="col-md-4">

                        @if($product->quantity>0)
                            <input type="number" name="quantity" value="1" min="1" style="width:100px">
                        @endif

                    </div>

                    <div class="col-md-4">

                        @if($product->quantity>0)
                            <input type="submit" value="Add to Cart">
                        @else
                            <input disabled type="submit" value="Out of stock">
                        @endif

                    </div>

                </div>

            </form>

        </div>
    </div>


    <br>
    <br>
    <br>
    <br>
    <br>
    <br>

    <style>
        .img_greyed-out {
            filter: grayscale(100%);
            opacity: 0.5;
            pointer-events: none;
        }
    </style>


    <div class="container my-5 product_details_page">
        <div class="row g-5">
            <!-- Product Image -->
            <div class="col-md-6">

                <img class="@if($product->quantity<=0) img_greyed-out @endif" src="/product/{{ $product->image }}"
                     alt="Product Image" class="product-image"/>
            </div>


            <!-- Product Info -->
            <div class="col-md-6">
            <span style="font-size: 50px;
    font-weight: 700;">
                {{ $product->title }}
            </span><br><br>

                @if($product->discount!=null)
                    <span class="original-price">₹: {{ $product->price }}</span>
                    <span class="discount-price price">₹: {{ $product->discount }}</span>
                @else
                    <span class="discount-price price">₹: {{ $product->price }}</span>
                @endif


                <p class="product-description">
                    Product Category : {{ $product->category }}<br><br>
                    Product Details : {{ $product->description }}<br><br>
                    @if($product->quantity>0)
                        Available quantity : {{ $product->quantity }}
                    @else
                        Available quantity :  Out of stock
                    @endif
                </p>
                <br>
                <br>

                @if($product->quantity>0)
                    <form action="{{ url('add_cart',$product->id) }}" method="post">
                        @csrf
                        <div class="row">
                            <div class="col-md-4">
                                <input type="number" name="quantity" value="1" min="1" style="width:100px">
                            </div>
                            <div class="col-md-4">
                                <input type="submit" value="Add to Cart">
                            </div>
                        </div>
                    </form>
                @else
                    <button type="button" class="btn btn-secondary btn-sm"
                            style="font-size: 12px; padding: 5px 10px; height: 38px; width: 100%;" disabled>Out of stock
                    </button>
                @endif
            </div>
        </div>
    </div>


</div>


<!-- footer start -->
@include('home.footer')
<!-- footer end -->
<div class="cpy_">
    <p class="mx-auto">© 2021 All Rights Reserved By <a href="https://html.design/">Free Html Templates</a><br>

        Distributed By <a href="https://themewagon.com/" target="_blank">ThemeWagon</a>

    </p>
</div>
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




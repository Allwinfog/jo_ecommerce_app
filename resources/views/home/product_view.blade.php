<style>
    .card {
        border: 1px solid #ddd;
        border-radius: 8px;
        transition: all 0.3s ease-in-out;
        height: 100%;
    }

    /* Hover pop effect */
    .card:hover {
        transform: translateY(-10px);
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
    }

    .card-img-top {
        height: 150px;
        object-fit: cover;
        border-radius: 8px 8px 0 0;
    }

    .card-body {
        padding: 15px;
    }

    .card-title {
        font-size: 1.1rem;
        font-weight: bold;
    }

    .original-price {
        text-decoration: line-through;
        color: #888;
        font-size: 1rem;
    }

    .discount-price {
        font-size: 1.2rem;
        font-weight: bold;
        color: #d9534f; /* Red color for discount */
    }

    .btn-custom {
        background-color: #007bff;
        color: white;
        width: 100%;
    }

    .btn-custom:hover {
        background-color: #0056b3;
        color: white;
    }
</style>
<section class="product_section layout_padding">
    <div class="container">
        <div class="heading_container heading_center">


            <div>
                <form action="{{ url('search_product') }}" method="GET">
                    @csrf
                    <input style="width: 500px;" type="text" name="search" placeholder="search for something">
                    <input type="submit" value="search">
                </form>
            </div>
        </div>
        <div class="row">

            @foreach ($products as $product )

                <div class="col-sm-6 col-md-4 col-lg-4">
                    <div class="box">
                        <div class="option_container">
                            <div class="options">
                                <a href="{{ route('product-details',$product->id) }}" class="option1">
                                    Product Details
                                </a>

                                <form action="{{ url('add_cart',$product->id) }}" method="post">

                                    @csrf

                                    <div class="row">

                                        <div class="col-md-4">

                                            <input type="number" name="quantity" value="1" min="1" style="width:100px">

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
                        <div class="img-box">
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

                        </div>
                    </div>
                </div>
            @endforeach
        </div>

        <span style="padding-top:20px">

               {!!$products->withQueryString()->links('pagination::bootstrap-5')!!}

               </span>

    </div>
</section>

<style>
    .img_greyed-out {
        filter: grayscale(100%);
        opacity: 0.5;
        pointer-events: none;
    }
</style>


<div class="container mt-5">
    <div class="row">
        @foreach ($products as $product)
            <div class="col-12 col-md-3 mb-3">
                <div class="card">
                    <!-- Product Image Section -->
                    <div style="height: 300px; overflow: hidden;">
                        <a href="{{ route('product-details', $product->id) }}">
                            <img class="@if($product->quantity<=0) img_greyed-out @endif"
                                 src="/product/{{ $product->image }}" class="img-fluid" alt="Product 2"
                                 style="object-fit: cover; width: 100%; height: 100%; display: block;">
                        </a>
                    </div>

                    <div class="card-body d-flex flex-column">
                        <!-- Product Title -->
                        <a href="{{ route('product-details', $product->id) }}"><h5
                                class="card-title">{{ $product->title }}</h5></a>

                        @if($product->discount != null)
                            <p class="original-price" style="text-decoration: line-through; color: #888;">
                                Rs-{{ $product->discount }}</p>
                            <p class="discount-price" style="color: green; font-weight: bold;">
                                Rs-{{ $product->price }}</p>
                        @else
                            <br>
                            <p class="discount-price" style="color: green; font-weight: bold;">
                                Rs-{{ $product->price }}</p>
                        @endif

                        <br>
                        <!-- Form to handle add to cart -->
                        <form action="{{ url('add_cart', $product->id) }}" method="post">
                            @csrf

                            <!-- Quantity & Add to Cart Section (Flexbox Layout) -->
                            <div class="d-flex align-items-center">
                                <!-- Hidden Quantity Input -->
                                <input type="hidden" name="quantity" class="form-control me-2" value="1" min="1">

                                <!-- Add to Cart Button with smaller size -->

                                @if($product->quantity>0)
                                    <button type="submit" class="btn btn-primary btn-sm"
                                            style="font-size: 12px; padding: 5px 10px; height: 38px; width: 100%;">Add
                                        to Cart
                                    </button>
                                @else
                                    <button type="button" class="btn btn-secondary btn-sm"
                                            style="font-size: 12px; padding: 5px 10px; height: 38px; width: 100%;"
                                            disabled>Out of stock
                                    </button>
                                @endif
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>

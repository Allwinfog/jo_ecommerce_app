<style>
    .product-image {
        width: 100%;
        height: 200px; /* Fixed height for uniformity */
        object-fit: contain; /* Show full image without cropping */
        display: block;
        margin: 0 auto;
    }
</style>
<section class="product_section layout_padding">
    <div class="container">
        <div class="heading_container heading_center">
            <h2>
                Our <span>products</span>
            </h2>

            <br>
            <br>
            <div>
                <form action="{{ route('product-search') }}" method="GET">
                    @csrf
                    <input style="width: 500px;" type="text" name="search" placeholder="search for something">
                    <input type="submit" value="search">
                </form>
            </div>
        </div>

        @if(session()->has('message'))
            <div class="alert alert-success alert-dismissible fade show custom-alert" role="alert">
                {{ session()->get('message') }}
                <button type="button" class="close" data-bs-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        @endif

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


                                            <input type="submit" value="Add to Cart">
                                        </div>

                                    </div>

                                </form>
                            </div>
                        </div>
                        <div class="img-box">
                            <img style="" src="product/{{ $product->image }}" alt="">
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

            <span style="padding-top:20px">

               {!!$products->withQueryString()->links('pagination::bootstrap-5')!!}

               </span>

        </div>
</section>

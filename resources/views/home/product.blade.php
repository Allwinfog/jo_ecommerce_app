<section class="product_section layout_padding">
         <div class="container">
            <div class="heading_container heading_center">
               <h2>
                  Our <span>products</span>
               </h2>

               <br>
               <br>
               <div>
                  <form action="{{ url('product_search') }}" method="GET">
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

            @foreach ($product as $Product )
            
               <div class="col-sm-6 col-md-4 col-lg-4">
                  <div class="box">
                     <div class="option_container">
                        <div class="options">
                           <a href="{{ url('product_details',$Product->id) }}" class="option1">
                           Product Details
                           </a>
                           
                        <form action="{{ url('add_cart',$Product->id) }}" method="post">

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
                        <img src="product/{{ $Product->image }}" alt="">
                     </div>
                     <div class="detail-box">
                        <h5>
                           {{ $Product->title }}
                        </h5>

                     @if($Product->discount!=null)
                        <h6 style="color:red">
                           Discount price
                           <br>
                           {{ $Product->discount }}
                        </h6>

                        <h6 style="text-decoration: line-through; color:blue">
                           price
                           <br>
                           Rs-{{ $Product->price }}
                        </h6>

                        @else

                        <h6 style="color:blue">
                           <br>
                           Rs-{{ $Product->price }}
                        </h6>

                        @endif

                     </div>
                  </div>
               </div>
               @endforeach

               <span style="padding-top:20px">

               {!!$product->withQueryString()->links('pagination::bootstrap-5')!!}

               </span>

         </div>
      </section>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
   @include('admin.css')

   <style type="text/css">
    .title_des{
        text-align: center;
        font-size: 25px;
        font-weight: bold;
        color: whitesmoke;
        padding-bottom:40px ;
    }

    .table_des{
        border: 2px solid white;
        width: 50%;
        margin:auto;
        padding-top:50px ;
        text-align: center;
        font-size: 15px;
     

        

    }

    .th_des{
        background-color: skyblue;
        
    }

    .img_size{
        width:100px;
        height: 100px;
    }

    
    
    
   </style>
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:partials/_sidebar.html -->
      @include('admin.sidebar')
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_navbar.html -->
        @include('admin.header')
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">

          <h1 class="title_des">All Orders</h1>

            <div style="padding-left: 400px; padding-bottom: 20px;">

              <form action="{{ url('search') }}" method="get">

                @csrf

                <input type="text" name="search" placeholder="search here">

                <input type="submit" value="Search" class="btn btn-outline-primary">
              </form>

            </div>

          <table class="table_des">

            <tr class="th_des">

                <th style="padding:5px; color: white;">Name</th>
                <th style="padding:10px; color: white;">Email</th>
                <th style="padding:10px; color: white;">Address</th>
                <th style="padding:5px; color: white;">Phone</th>
                <th style="padding:5px; color: white;">Product_title</th>
                <th style="padding:5px; color: white;">Quantity</th>
                <th style="padding:5px; color: white;">Price</th>
                <th style="padding:5px; color: white;">Payment Status</th>
                <th style="padding:5px; color: white;">Delivery Status</th>
                <th style="padding:5px; color: white;">Image</th>
                <th style="padding:5px; color: white;">Delivered</th>
                <th style="padding:5px; color: white;">Print PDF</th>
                <th style="padding:5px; color: white;">Send Email</th>


                
                
            </tr>

            @forelse ($order as $order)
            
            <tr style="color: white;">
                <td>{{ $order->name }}</td>
                <td>{{$order->email}}</td>
                <td>{{$order->address}}</td>
                <td>{{$order->phone}}</td>
                <td>{{$order->product_title}}</td>
                <td>{{$order->quantity}}</td>
                <td>{{$order->price}}</td>
                <td>{{$order->payment_status}}</td>
                <td>{{$order->delivery_status}}</td>
                <td> 
                    <img class="img_size" src="/product/{{ $order->image }}">
                </td>

                

                <td>

                @if($order->delivery_status=='processing')

                    <a href="{{ url('delivered',$order->id) }}" onclick="return confirm('Are you sure to deliver the product!!!')" class="btn btn-primary btn-sm">Delivered</a>

                @else

                    <p style="color:green">Delivered</p>

                @endif

                </td>

                <td>
                  <a href="{{url( 'print_pdf',$order->id) }}" class="btn btn-secondary">Print PDF</a>
                </td>

                <td>

                  <a href="{{ url('send_email',$order->id) }}" class="btn btn-info">Send Email</a>

                </td>

            </tr>

            @empty

            <tr>
              <td colspan="16" style="color: white;">No data found</td>
            </tr>

            @endforelse

          </table>
        </div>
          </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    @include('admin.script')
    <!-- End custom js for this page -->
  </body>
</html>
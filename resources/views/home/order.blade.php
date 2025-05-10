<!DOCTYPE html>
<html>
   <head>
      <!-- Basic -->
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <!-- Mobile Metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <!-- Site Metas -->
      <meta name="keywords" content="" />
      <meta name="description" content="" />
      <meta name="author" content="" />
      <link rel="shortcut icon" href="images/favicon.png" type="">
      <title>Famms - Fashion HTML Template</title>
      <!-- bootstrap core css -->
      <link rel="stylesheet" type="text/css" href="home/css/bootstrap.css" />
      <!-- font awesome style -->
      <link href="home/css/font-awesome.min.css" rel="stylesheet" />
      <!-- Custom styles for this template -->
      <link href="home/css/style.css" rel="stylesheet" />
      <!-- responsive style -->
      <link href="home/css/responsive.css" rel="stylesheet" />

      <style>

        .center
        {
            margin: auto;
            width: 70%;
            padding:30px;
            text-align: center;

        }

       

        .th_des
        {
            padding:10px;
            background-color: skyblue;
            font-weight: bold;
            font-size: 20px;
            border: 2px solid black;
        }

        .td_des
        {
            border: 2px solid black;
        }

      </style>
   </head>
   <body>
     
         <!-- header section strats -->
         @include('home.header')
         <!-- end header section -->
         
      
         <div class="center">
            <table style="border: 2px solid black;">
                <tr >
                    <th class="th_des">Product Title</th>
                    <th class="th_des">Quantity</th>
                    <th class="th_des">Price</th>
                    <th class="th_des">Payment Status</th>
                    <th class="th_des">Delivery Status</th>
                    <th class="th_des">Images</th>
                    <th class="th_des">Cancel Order</th>
                </tr>

                @foreach ($order as $order)
                
                @endforeach
                <tr >
                    <td class="td_des">{{ $order->product_title }}</td>
                    <td class="td_des">{{  $order->quantity }}</td>
                    <td class="td_des">{{  $order->price }}</td>
                    <td class="td_des">{{  $order->payment_status }}</td>
                    <td class="td_des">{{  $order->delivery_status }}</td>
                    <td class="td_des">
                        <img height="100" width="100" src="product/{{ $order->image }}">
                    </td>

                    <td class="td_des">
                        @if($order->delivery_status=='processing')

                        <a onclick="return confirm('Are You Sure to Cancel this Order !!')" href="{{ url('cancel_order',$order->id) }}" class="btn btn-danger">Cancel Order</a>

                        @else
                        <p style="color: green;">delivered</p>
                        @endif
                    </td>
                </tr>
            </table>
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
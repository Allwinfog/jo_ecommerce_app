<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    @include('admin.css')

    <style type="text/css">

        .center {
            margin: auto;
            width: 50%;
            border: 2px solid whitesmoke;
            text-align: center;
            margin-top: 40px;
            color: white;
        }

        .font_size {
            font-size: 40px;
            text-align: center;
            padding-top: 20px;
            color: white;
        }

        .img_size {
            width: 100px;
            height: 100px;
        }

        .th_color {
            background-color: skyblue;
        }

        .th_des {
            padding: 20px;
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

                @if(session()->has('message'))
                    <div class="alert alert-success alert-dismissible fade show custom-alert" role="alert">
                        {{ session()->get('message') }}
                        <button type="button" class="close" data-bs-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                @endif

                <h1 class="font_size">All Products</h1>

                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">

                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th class="th_des">Image</th>
                                        <th class="th_des">Product Title</th>
                                        <th class="th_des">Quantity</th>
                                        <th class="th_des">Category</th>
                                        <th class="th_des">Price</th>
                                        <th class="th_des">Discount</th>
                                        <th class="th_des">Delete</th>
                                        <th class="th_des">Edit</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach ($products as $product)

                                        <tr>
                                            <td class="py-1">
                                                <img style="height: 150px;width:150px;border-radius: 0%;"
                                                     src="/product/{{ $product->image }}" alt=""/>
                                            </td>
                                            <td>{{ $product->title }}</td>
                                            <td>{{ $product->quantity }}</td>
                                            <td>{{ $product->category }}</td>
                                            <td>{{ $product->price}}</td>
                                            <td>{{ $product->discount }}</td>
                                            <td>
                                                <a onclick="return confirm('Are you sure to delete this')"
                                                   class="btn btn-danger"
                                                   href="{{ url('delete_product',$product->id) }}">Delete</a>
                                            </td>

                                            <td>
                                                <a class="btn btn-primary"
                                                   href="{{ url('update_product',$product->id) }}">Edit</a>
                                            </td>
                                        </tr>
                                    @endforeach


                                    </tbody>
                                </table>

                            </div>
                            <div class="d-flex justify-content-end">
                                <br>
                                {{ $products->links() }}
                            </div>
                        </div>

                    </div>
                </div>


            </div>
        </div>


    </div>
</div>


</body>


</html>
<!-- container-scroller -->
<!-- plugins:js -->
@include('admin.script')
<!-- End custom js for this page -->

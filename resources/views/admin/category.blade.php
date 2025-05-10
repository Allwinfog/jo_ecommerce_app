<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    @include('admin.css')

    <style type="text/css">
        .div_center {
            text-align: center;
            padding-top: 40px;
        }

        .size_text {
            font-size: 40px;
            padding-bottom: 40px;
            color: aliceblue;
        }

        .input_color {
            color: black;
        }

        .custom-alert {
            padding: 10px;
            margin: 10px 0;
            border: 1px solid green;
            background-color: rgb(169, 212, 199);
            color: green;
            border-radius: 5px;
            font-weight: bold;
        }

        .table_center {
            margin: auto;
            width: 50%;
            text-align: center;
            margin-top: 30px;
            border: 3px solid white;
        }

        .txt_clr {
            color: aliceblue;
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

                <div class="div_center">
                    <h1 class="size_text">Add Category</h1>

                    <form action="{{ url('/add_category') }}" method="POST">

                        @csrf
                        <input type="text" class="input_color" name="category_name" placeholder="Write a category here">

                        <input type="submit" name="submit" class="btn btn-primary" value="Add Category">
                    </form>
                </div>

                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">

                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th class="txt_clr">Category_name</th>
                                        <th class="txt_clr">Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach ($categories as $category)

                                        <tr>
                                            <td class="txt_clr">{{ $category->category_name}}</td>
                                            <td class="txt_clr">
                                                <a onclick="return confirm('Are you sure to delete this')"
                                                   class="btn btn-danger"
                                                   href="{{ url('delete_category',$category->id) }}">Delete</a>
                                            </td>
                                        </tr>

                                    @endforeach


                                    </tbody>
                                </table>

                            </div>
                            <div class="d-flex justify-content-end">
                                <br>
                                {{ $categories->links() }}
                            </div>
                        </div>

                    </div>
                </div>


            </div>
        </div>
    </div>
</div>
<!-- container-scroller -->
<!-- plugins:js -->
@include('admin.script')
<!-- End custom js for this page -->
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    @include('admin.css')
    <style>
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background: #2c3e50;
            border-radius: 10px;
            color: white;
        }

        .form-container h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
        }

        .btn-submit {
            display: block;
            width: 100%;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container-scroller">
    @include('admin.sidebar')
    <div class="container-fluid page-body-wrapper">
        @include('admin.header')
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
                <div class="form-container">
                    <h1>Add Product</h1>
                    <form action="{{ url('/add_product') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label>Product Title:</label>
                            <input type="text" class="form-control" name="title" placeholder="Write a product title"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>Product Description:</label>
                            <input type="text" class="form-control" name="description" placeholder="Description"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>Product Quantity:</label>
                            <input type="number" class="form-control" name="quantity" min="0" placeholder="Quantity"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>Product Category:</label>
                            <select class="form-control" name="category" required>
                                <option value="" selected>Add the category here</option>

                                @foreach ($category as $category )

                                    <option value="{{ $category->category_name }}">{{$category->category_name}}</option>

                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Product Price:</label>
                            <input type="number" class="form-control" name="price" placeholder="Price" required>
                        </div>

                        <div class="form-group">
                            <label>Product Discount:</label>
                            <input type="number" class="form-control" name="discount" placeholder="Discount">
                        </div>

                        <div class="form-group">
                            <label>Product Image:</label>
                            <input type="file" class="form-control" name="image" required>
                        </div>

                        <button type="submit" class="btn btn-primary btn-submit">Add Product</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@include('admin.script')
</body>
</html>

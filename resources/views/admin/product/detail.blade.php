@extends('admin.master')

@section('title')
    Product Detail Page
@endsection

@section('body')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <table class="table table-bordered table-hover">
                        <tr>
                            <th>Product ID</th>
                            <td>{{$product->id}}</td>
                        </tr>
                        <tr>
                            <th>Product Name</th>
                            <td>{{$product->name}}</td>
                        </tr>
                        <tr>
                            <th>Product code</th>
                            <td>{{$product->code}}</td>
                        </tr>
                        <tr>
                            <th>Product Category</th>
                            <td>{{$product->category->name}}</td>
                        </tr>
                        <tr>
                            <th>Product Sub Category</th>
                            <td>{{$product->subCategory->name}}</td>
                        </tr>
                        <tr>
                            <th>Product Brand</th>
                            <td>{{$product->brand->name}}</td>
                        </tr>
                        <tr>
                            <th>Product Unit</th>
                            <td>{{$product->unit->name}}</td>
                        </tr>
                        <tr>
                            <th>Product Short Description</th>
                            <td>{{$product->short_description}}</td>
                        </tr>
                        <tr>
                            <th>Product Long Description</th>
                            <td>{!! $product->long_description !!}</td>
                        </tr>
                        <tr>
                            <th>Product Regular Price</th>
                            <td>{{$product->regular_price}}</td>
                        </tr>
                        <tr>
                            <th>Product Selling Price</th>
                            <td>{{$product->selling_price}}</td>
                        </tr>
                        <tr>
                            <th>Product Stock Amount</th>
                            <td>{{$product->stock_amount}}</td>
                        </tr>
                        <tr>
                            <th>Product Total View</th>
                            <td>{{$product->hit_count}}</td>
                        </tr>
                        <tr>
                            <th>Product Total Sale</th>
                            <td>{{$product->sales_count}}</td>
                        </tr>
                        <tr>
                            <th>Product Feature Image</th>
                            <td><img src="{{asset($product->image)}}" alt="" height="100" width="130"/></td>
                        </tr>
                        <tr>
                            <th>Product Other Image</th>
                            <td>
                                @foreach($product->otherImages as $otherImage)
                                <img src="{{asset($otherImage->image)}}" alt="" height="100" width="130"/>
                                @endforeach
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->
@endsection


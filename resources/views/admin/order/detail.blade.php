@extends('admin.master')

@section('title')
    Order Detail Page
@endsection

@section('body')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <h4 class="card-title">Order Basic Info</h4>
                    <p class="text-center text-success">{{Session::get(('message'))}}</p>
                    <table class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                        <tr>
                            <th>Order No</th>
                            <td>{{$order->id}}</td>
                        </tr>
                        <tr>
                            <th>Order Total</th>
                            <td>{{number_format($order->order_total)}}</td>
                        </tr>
                        <tr>
                            <th>Order Date</th>
                            <td>{{$order->order_date}}</td>
                        </tr>
                        <tr>
                            <th>Tax Total</th>
                            <td>{{$order->tax_total}}</td>
                        </tr>
                        <tr>
                            <th>Shipping Cost</th>
                            <td>{{$order->shipping_total}}</td>
                        </tr>
                        <tr>
                            <th>Customer Name</th>
                            <td>{{$order->customer->name}}</td>
                        </tr>
                        <tr>
                            <th>Customer Mobile</th>
                            <td>{{$order->customer->mobile}}</td>
                        </tr>
                        <tr>
                            <th>Delivery Address</th>
                            <td>{{$order->delivery_address}}</td>
                        </tr>
                        <tr>
                            <th>Payment Method</th>
                            <td>{{$order->payment_type == 1 ? 'Cash on delivery' : 'Online'}}</td>
                        </tr>
                        <tr>
                            <th>Payment Status</th>
                            <td>{{$order->payment_status}}</td>
                        </tr>
                        <tr>
                            <th>Payment Date</th>
                            <td>{{$order->payment_date}}</td>
                        </tr>
                        <tr>
                            <th>Delivery Status</th>
                            <td>{{$order->delivery_status}}</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="card">
                <div class="card-body">

                    <h4 class="card-title">Order Product Info</h4>
                    <p class="text-center text-success">{{Session::get(('message'))}}</p>
                    <table class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                        <thead>
                        <tr>
                            <th>SL NO</th>
                            <th>Product Name</th>
                            <th>Unit Price</th>
                            <th>Product Quantity</th>
                            <th>Total Price</th>
                        </tr>
                        </thead>


                        <tbody>
                        @foreach($order->orderDetails as $order)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>{{$order->product_name}}</td>
                                <td>{{number_format($order->product_price)}}</td>
                                <td>{{$order->product_qty}}</td>
                                <td>{{$order->product_price*$order->product_qty}}</td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->
@endsection

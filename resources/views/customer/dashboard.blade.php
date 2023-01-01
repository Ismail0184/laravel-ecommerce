@extends('website.master')

@section('title')
    Customer Dashboard
@endsection

@section('body')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">Customer Dashboard</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href=""><i class="lni lni-home"></i> Home</a></li>
                        <li><a href="">Shop</a></li>
                        <li>Customer Dashboard</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <section class="checkout-wrapper section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-3">
                    <div class="card shadow">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item"><a href="">Profile</a></li>
                            <li class="list-group-item"><a href="">Orders</a></li>
                            <li class="list-group-item"><a href="">Account</a></li>
                            <li class="list-group-item"><a href="">Change Password</a></li>
                            <li class="list-group-item"><a href="">Setting</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="card card-body shadow">
                        <h4 class="text-center">My Recent Order</h4>
                        <hr/>
                        <table class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>Sl No</th>
                                <th>Order No</th>
                                <th>Order Date</th>
                                <th>Order Total</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($orders as $order)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>{{$order->id}}</td>
                                <td>{{$order->order_date}}</td>
                                <td>{{$order->order_total}}</td>
                            </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection


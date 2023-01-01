@extends('website.master')

@section('title')
    Checkout Page
@endsection

@section('body')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">checkout</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href=""><i class="lni lni-home"></i> Home</a></li>
                        <li><a href="">Shop</a></li>
                        <li>Confirm Order</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <section class="checkout-wrapper section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="card card-body">
                        <h3 class="text-center text-success">{{Session::get('message')}}</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection


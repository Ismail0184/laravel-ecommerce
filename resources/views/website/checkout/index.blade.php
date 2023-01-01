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
                        <li><a href="index.html"><i class="lni lni-home"></i> Home</a></li>
                        <li><a href="index.html">Shop</a></li>
                        <li>checkout</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <section class="checkout-wrapper section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="checkout-steps-form-style-1">
                        <ul id="accordionExample">
                            <li>
                                <h6 class="title" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">Your Personal Details </h6>
                                <section class="checkout-steps-form-content collapse show" id="collapseThree" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                    <form action="{{route('order.confirm')}}" method="POST">
                                        @csrf
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="single-form form-default">
                                                    <label>Full Name</label>
                                                    <div class="row">
                                                        <div class="col-md-12 form-input form">
                                                            <input type="text" @if(Session::get('customer_id')) value="{{Session::get('customer_name')}}" readonly @endif placeholder="Full Name" name="name" required/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="single-form form-default">
                                                    <label>Email Address</label>
                                                    <div class="form-input form">
                                                        <input type="email" @if(Session::get('customer_id')) value="{{Session::get('customer_email')}}" readonly @endif placeholder="Email Address" name="email" required/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="single-form form-default">
                                                    <label>Phone Number</label>
                                                    <div class="form-input form">
                                                        <input type="number" @if(Session::get('customer_id')) value="{{Session::get('customer_mobile')}}" readonly @endif placeholder="Phone Number" name="mobile" required/>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="single-form form-default">
                                                    <label>Delivery Address</label>
                                                    <div class="form-input form">
                                                        <textarea placeholder="Delivery Address" class="form-control" name="address"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="single-form form-default">
                                                    <label>Payment Method</label>
                                                    <div class="mt-2">
                                                        <label><input type="radio" name="payment_method" checked value="1"/> Cash on Delivery Payment</label><br/>
                                                        <label><input type="radio" name="payment_method" value="2"/> Online Payment</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="single-form button">
                                                    <button type="submit" class="btn" > Confirm Order </button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </section>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="checkout-sidebar">
                        <div class="checkout-sidebar-price-table">
                            <h5 class="title">Shopping Cart Summery</h5>
                            <div class="sub-total-price">
                                @foreach(Cart::getContent() as $cartProduct)
                                <div class="total-price">
                                    <p class="value">{{$cartProduct->name}} - ({{$cartProduct->price}} * {{$cartProduct->quantity}})</p>
                                    <p class="price">{{$cartProduct->price * $cartProduct->quantity}}</p>
                                </div>
                                @endforeach
                                <hr/>
                                <div class="total-price shipping">
                                    <p class="value">Subtal Price:</p>
                                    <p class="price">TK. {{number_format($sum)}}</p>
                                </div>
                                <div class="total-price discount">
                                    <p class="value">Tax Total:</p>
                                    <p class="price">Tk {{number_format($tax)}}</p>
                                </div>
                                    <div class="total-price discount">
                                        <p class="value">Shipping Total:</p>
                                        <p class="price">Tk {{number_format($shipping)}}</p>
                                    </div>
                            </div>
                            <div class="total-payable">
                                <div class="payable-price">
                                    <p class="value">Total Payable:</p>
                                    <p class="price">TK. {{number_format($totalPayable)}}</p>
                                    @php(Session::put('totalPayable', $totalPayable))
                                    @php(Session::put('shipping', $shipping))
                                    @php(Session::put('tax', $tax))
                                </div>
                            </div>
                        </div>
                        <div class="checkout-sidebar-banner mt-30">
                            <a href="product-grids.html">
                                <img src="{{asset('/')}}website/assets/images/banner/banner.jpg" alt="#">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection


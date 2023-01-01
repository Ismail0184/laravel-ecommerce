@extends('website.master')

@section('title')
    Cart Page
@endsection

@section('body')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">Cart</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html"><i class="lni lni-home"></i> Home</a></li>
                        <li><a href="index.html">Shop</a></li>
                        <li>Cart</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="shopping-cart section">
        <div class="container">
            <div class="cart-list-head">
                <p class="text-center">{{Session::get('message')}}</p>
                <div class="cart-list-title">
                    <div class="row">
                        <div class="col-lg-1 col-md-1 col-12">
                        </div>
                        <div class="col-lg-4 col-md-3 col-12">
                            <p>Product Info</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>Quantity</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>Unit Price</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>Total Price</p>
                        </div>
                        <div class="col-lg-1 col-md-2 col-12">
                            <p>Remove</p>
                        </div>
                    </div>
                </div>
                @php($sum=0)
                @foreach($products as $product)
                <div class="cart-single-list">
                    <div class="row align-items-center">
                        <div class="col-lg-1 col-md-1 col-12">
                            <a href=""><img src="{{asset($product->attributes->image)}}" alt="#"></a>
                        </div>
                        <div class="col-lg-4 col-md-3 col-12">
                            <h5 class="product-name"><a href="">
                                    {{$product->name}}</a></h5>
                            <p class="product-des">
                                <span><em>Category:</em> {{$product->attributes->category}}</span>
                                <span><em>Brand:</em> {{$product->attributes->brand}}</span>
                            </p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <form action="{{route('cart.update', ['id' => $product->id])}}" method="POST">
                                @csrf
                                <div class="input-group">
                                    <input type="number" value="{{$product->quantity}}" min="1" class="form-control" name="qty"/>
                                    <button type="submit" class="btn btn-success">Update</button>
                                </div>
                            </form>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>{{number_format($product->price)}}</p>
                        </div>
                        <div class="col-lg-2 col-md-2 col-12">
                            <p>{{number_format(($product->price * $product->quantity))}}</p>
                        </div>
                        <div class="col-lg-1 col-md-2 col-12">
                            <form action="{{route('cart.remove', ['id' => $product->id])}}" method="POST" onsubmit="return confirm('are you sure to delete this..');">
                                @csrf
                                <button type="submit" class="remove-item"><i class="lni lni-close"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                 @php($sum = $sum+ ($product->price * $product->quantity))
                @endforeach
            </div>
            <div class="row">
                <div class="col-12">

                    <div class="total-amount">
                        <div class="row">
                            <div class="col-lg-8 col-md-6 col-12">
                                <div class="left">
                                    <div class="coupon">
                                        <form action="#" target="_blank">
                                            <input name="Coupon" placeholder="Enter Your Coupon">
                                            <div class="button">
                                                <button class="btn">Apply Coupon</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-12">
                                <div class="right">
                                    <ul>
                                        <li>Cart Subtotal<span>Tk. {{ number_format($sum) }}</span></li>
                                        <li>Tax Total
                                            @php($tax = round((($sum*15)/100)))
                                            <span>Tk. {{number_format($tax)}}</span>
                                        </li>
                                        <li>Shipping Cost
                                            <span>Tk. {{$shippingCost = 100}} </span>
                                        </li>
                                        <li class="last">Total Payable
                                            @php($grandTotal = $sum + $tax + $shippingCost)
                                            <span>TK. {{number_format($grandTotal)}}</span>
                                        </li>
                                    </ul>
                                    <div class="button">
                                        <a href="{{route('checkout')}}" class="btn">Checkout</a>
                                        <a href="{{route('home')}}" class="btn btn-alt">Continue shopping</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection

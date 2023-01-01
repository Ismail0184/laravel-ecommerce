<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\Order;
use App\Models\OrderDetail;
use Illuminate\Http\Request;
use Session;
use Cart;

class CheckoutController extends Controller
{
    private $customer, $order, $orderDetail;

    public function index()
    {
        return view('website.checkout.index');
    }

    public function confirmOrder(Request $request)
    {
        if (Session::get('customer_id'))
        {
            $this->customer = Customer::find(Session::get('customer_id'));
        }
        else
        {
            $this->customer = new Customer();
            $this->customer->name       = $request->name;
            $this->customer->email      = $request->email;
            $this->customer->password   = bcrypt($request->password);
            $this->customer->mobile     = $request->mobile;
            $this->customer->save();

            Session::put('customer_id', $this->customer->id);
            Session::put('customer_name', $this->customer->name);
            Session::put('customer_email', $this->customer->email);
            Session::put('customer_mobile', $this->customer->mobile);
        }


        $this->order = new Order();
        $this->order->customer_id       = $this->customer->id;
        $this->order->order_total       = Session::get('totalPayable');
        $this->order->tax_total         = Session::get('tax');
        $this->order->shipping_total    = Session::get('shipping');
        $this->order->order_date        = date('Y-m-d');
        $this->order->order_timestamp   = strtotime(date('Y-m-d'));
        $this->order->payment_type      = $request->payment_method;
        $this->order->delivery_address  = $request->address;
        $this->order->save();

        foreach (Cart::getContent() as $item)
        {
            $this->orderDetail = new OrderDetail();
            $this->orderDetail->order_id = $this->order->id;
            $this->orderDetail->product_id = $item->id;
            $this->orderDetail->product_name = $item->name;
            $this->orderDetail->product_price = $item->price;
            $this->orderDetail->product_qty = $item->quantity;
            $this->orderDetail->save();
        }

        foreach (Cart::getContent() as $item)
        {
            Cart::remove($item->id);
        }

        Session::forget('totalPayable');
        Session::forget('tax');
        Session::forget('shipping');

        return redirect('/complete-order')->with('message', 'Congratulation your order submit successfully. Please wait, we will contact with you soon.');
    }

    public function completeOrder()
    {
        return view('website.checkout.complete-order');
    }
}

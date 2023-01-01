<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;
use Session;

class CustomerAuthController extends Controller
{
    private $customer;

    public function login()
    {
        return view('customer.login');
    }

    public function newLogin(Request $request)
    {
        $this->customer = Customer::where('email', $request->email)->first();
        if ($this->customer)
        {
            if (password_verify($request->password, $this->customer->password))
            {
                Session::put('customer_id', $this->customer->id);
                Session::put('customer_name', $this->customer->name);
                Session::put('customer_email', $this->customer->email);
                Session::put('customer_mobile', $this->customer->mobile);

                return redirect('/customer-dashboard');
            }
            else
            {
                return redirect()->back()->with('message', 'Your password is invalid.');
            }
        }
        else
        {
            return redirect()->back()->with('message', 'Your email is invalid.');
        }
    }

    public function register()
    {
        return view('customer.register');
    }

    public function create(Request $request)
    {
        if ($request->password == $request->confirm_password)
        {
            $this->customer = new  Customer();
            $this->customer->name = $request->name;
            $this->customer->email = $request->email;
            $this->customer->mobile = $request->mobile;
            $this->customer->password = bcrypt($request->password);
            $this->customer->save();

            Session::put('customer_id', $this->customer->id);
            Session::put('customer_name', $this->customer->name);
            Session::put('customer_email', $this->customer->email);
            Session::put('customer_mobile', $this->customer->mobile);

            return redirect('/customer-dashboard');
        }
        else
        {
            return redirect()->back()->with('message', 'Password and confirm password are not same.');
        }

    }

    public function logout()
    {
        Session::forget('customer_id');
        Session::forget('customer_name');
        Session::forget('customer_email');
        Session::forget('customer_mobile');

        return redirect('/');
    }
}

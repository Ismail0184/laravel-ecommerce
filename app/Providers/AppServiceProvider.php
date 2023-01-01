<?php

namespace App\Providers;

use App\Models\Category;
use Illuminate\Support\ServiceProvider;
use View;
use Cart;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer(['website.master'], function ($view) {
            $view->with('categories', Category::all());
        });

        View::composer(['*'], function ($view) {

            $cartProducts = Cart::getContent();
            $sum = 0;
            foreach ($cartProducts as $cartProduct)
            {
                $sum = $sum + ($cartProduct->price * $cartProduct->quantity);
            }

            $taxTotal = $sum * 0.15;
            $shippingTotal = 100;
            $totalPayable  = $sum + $taxTotal + $shippingTotal;
            $view->with('sum', $sum);
            $view->with('tax', $taxTotal);
            $view->with('shipping', $shippingTotal);
            $view->with('totalPayable', $totalPayable);
        });
    }
}

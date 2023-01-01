<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class APIControllerIsmail extends Controller
{
    private $products;
    public function getAllProduct()
    {
        $this->products = Product::all();
        return response()->json($this->products);
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class APIControllerIsmail extends Controller
{
    private $products, $categories;
    public function getAllProduct()
    {
        $this->products = Product::all();
        foreach ($this->products as $product)
            {
                $product->image = asset($product->image);
            }
        return response()->json($this->products);
    }

    public function getAllCategory()
    {
        $this->categories = Category::all();
        return response()->json($this->categories);
    }
}

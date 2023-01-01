<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    private $categories, $products;

    public function index()
    {
        $this->products = Product::where('status', 1)->orderBy('id', 'desc')->take(8)->get();
        return view('website.home.index', [
            'products' => $this->products,
        ]);
    }

    public function categoryProduct($id)
    {
        $this->products = Product::where('category_id', $id)->orderBy('id', 'desc')->get();
        return view('website.category.index', ['products' => $this->products]);
    }

    public function subCategoryProduct($id)
    {
        $this->products = Product::where('sub_category_id', $id)->orderBy('id', 'desc')->get();
        return view('website.category.index', ['products' => $this->products]);
    }

    public function productDetail($id)
    {
        return view('website.detail.index', ['product' => Product::find($id)]);
    }
}

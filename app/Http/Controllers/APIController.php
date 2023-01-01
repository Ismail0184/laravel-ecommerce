<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class APIController extends Controller
{
    private $products, $product, $categories, $subCategories, $data = [], $index;

    public function getAllProduct()
    {
        $this->products = Product::orderBy('id', 'desc')->take(8)->get(['id', 'name', 'selling_price', 'image']);
        foreach ($this->products as $product)
        {
            $product->image = asset($product->image);
        }
        return response()->json($this->products);
    }

    public function getAllCategory()
    {
        $this->categories = Category::all(['id', 'name']);
        foreach ($this->categories as $category)
        {
            $category->sub_category = SubCategory::where('category_id', $category->id)->get();

//            $this->subCategories = SubCategory::where('category_id', $category->id)->get();
//            $this->data[$key]['id']             = $category->id;
//            $this->data[$key]['name']           = $category->name;
//            $this->data[$key]['sub_category']   = $this->subCategories;
        }
//        return response()->json($this->data);

        return response()->json($this->categories);
    }

    public function getCategoryProduct($id)
    {
        $this->products = Product::where('category_id', $id)->get();
        foreach ($this->products as $product)
        {
            $product->image = asset($product->image);
        }
        return response()->json($this->products);
    }

    public function getProductById($id)
    {
        $this->product          = Product::find($id);
        $this->product->image   = asset($this->product->image);
        return response()->json($this->product);
    }
}

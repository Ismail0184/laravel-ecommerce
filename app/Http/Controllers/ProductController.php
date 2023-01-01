<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\OtherImage;
use App\Models\Product;
use App\Models\SubCategory;
use App\Models\Unit;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    private $product, $products;

    public function index()
    {
        return view('admin.product.index', [
            'categories'        => Category::where('status', 1)->get(),
            'sub_categories'    => SubCategory::where('status', 1)->get(),
            'brands'            => Brand::where('status', 1)->get(),
            'units'             => Unit::where('status', 1)->get(),
        ]);
    }

    public function getAllSubCategory()
    {
        return response()->json(SubCategory::where('category_id', $_GET['id'])->get());
    }

    public function create(Request $request)
    {
        $this->product = Product::newProduct($request);
        OtherImage::newOtherImage($request, $this->product->id);
        return redirect('/product/add')->with('message', 'Product info create successfully.');
    }

    public function manage()
    {
        $this->products = Product::orderBy('id', 'desc')->get();
        return view('admin.product.manage', [
            'products' => $this->products,
        ]);
    }

    public function detail($id)
    {
        $this->product = Product::find($id);
        return view('admin.product.detail', ['product' => $this->product]);
    }

    public function edit($id)
    {
        $this->product = Product::find($id);
        return view('admin.product.edit', [
            'product'           => $this->product,
            'categories'        => Category::where('status', 1)->get(),
            'sub_categories'    => SubCategory::where('status', 1)->get(),
            'brands'            => Brand::where('status', 1)->get(),
            'units'             => Unit::where('status', 1)->get(),
        ]);
    }

    public function update(Request $request, $id)
    {
        Product::updateProduct($request, $id);
        if ($request->file('other_image'))
        {
            OtherImage::updateOtherImage($request, $id);
        }
        return redirect('/product/manage')->with('message', 'Product info update successfully.');
    }

    public function delete($id)
    {
        return $id;
    }
}

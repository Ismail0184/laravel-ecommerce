<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class SubCategoryController extends Controller
{
    private $subCategory, $subCategories, $categories;

    public function index()
    {
        $this->categories = Category::all();
        return view('admin.sub-category.index', [
            'categories' => $this->categories
        ]);
    }

    public function create(Request $request)
    {
        SubCategory::newSubCategory($request);
        return redirect('/sub-category/add')->with('message', 'Sub category info create successfully.');
    }

    public function manage()
    {
        $this->subCategories = SubCategory::all();
        return view('admin.sub-category.manage', [
            'sub_categories' => $this->subCategories
        ]);
    }

    public function edit($id)
    {
        $this->subCategory = SubCategory::find($id);
        $this->categories = Category::all();
        return view('admin.sub-category.edit', [
            'sub_category'  => $this->subCategory,
            'categories'    => $this->categories
        ]);
    }

    public function update(Request $request, $id)
    {
        SubCategory::updateSubCategory($request, $id);
        return redirect('/sub-category/manage')->with('message', 'Sub category info update successfully.');
    }
}

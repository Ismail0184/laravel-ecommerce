<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use DB;

class CategoryController extends Controller
{
    private $category, $categories;

    public function index()
    {
        return view('admin.category.index');
    }

    public function create(Request $request)
    {
        Category::newCategory($request);
        return redirect('/category/add')->with('message', 'Category info create successfully.');
    }

    public function manage()
    {
        $this->categories = Category::all();
        return view('admin.category.manage', ['categories' => $this->categories]);
    }

    public function edit($id)
    {
        $this->category = Category::find($id);
        return view('admin.category.edit', ['category' => $this->category]);
    }

    public function update(Request $request, $id)
    {
        Category::updateCategory($request, $id);
        return redirect('/category/manage')->with('message', 'Category info update successfully.');
    }

    public function delete($id)
    {
        Category::deleteCategory($id);
        return redirect('/category/manage')->with('message', 'Category info delete successfully.');
    }
}

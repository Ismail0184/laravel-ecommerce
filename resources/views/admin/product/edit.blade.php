@extends('admin.master')

@section('title')
    Edit Product Page
@endsection

@section('body')
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title mb-4">Edit Product Form</h4>
                    <p class="text-center text-success">{{Session::get(('message'))}}</p>
                    <form action="{{route('product.update', ['id' => $product->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Category name</label>
                            <div class="col-sm-9">
                                <select class="form-control" name="category_id" onchange="getSubCategory(this.value)">
                                    <option> -- Select Category -- </option>
                                    @foreach($categories as $category)
                                        <option value="{{$category->id}}" {{$category->id == $product->category_id ? 'selected' : ''}}> {{$category->name}} </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Sub Category name</label>
                            <div class="col-sm-9">
                                <select class="form-control" name="sub_category_id" id="subCategoryId">
                                    <option> -- Select Sub Category -- </option>
                                    @foreach($sub_categories as $sub_category)
                                        <option value="{{$sub_category->id}}" {{$sub_category->id == $product->sub_category_id ? 'selected' : ''}}> {{$sub_category->name}} </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Brand name</label>
                            <div class="col-sm-9">
                                <select class="form-control" name="brand_id">
                                    <option> -- Select Brand -- </option>
                                    @foreach($brands as $brand)
                                        <option value="{{$brand->id}}" {{$brand->id == $product->brand_id ? 'selected' : ''}}> {{$brand->name}} </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Unit name</label>
                            <div class="col-sm-9">
                                <select class="form-control" name="unit_id">
                                    <option> -- Select Unit -- </option>
                                    @foreach($units as $unit)
                                        <option value="{{$unit->id}}" {{$unit->id == $product->unit_id ? 'selected' : ''}}> {{$unit->name}} </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Product Name</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" value="{{$product->name}}" name="name" id="horizontal-firstname-input"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Product Code</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" value="{{$product->code}}" name="code" id="horizontal-firstname-input"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Short Description</label>
                            <div class="col-sm-9">
                                <textarea class="form-control" name="short_description">{{$product->short_description}}</textarea>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Long Description</label>
                            <div class="col-sm-9">
                                <textarea class="form-control summernote" name="long_description">{{$product->long_description}}</textarea>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Product Regular Price</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" value="{{$product->regular_price}}" name="regular_price"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Product Selling Price</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" value="{{$product->selling_price}}" name="selling_price"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Product Stock Amount</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" name="stock_amount" value="{{$product->stock_amount}}"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-password-input" class="col-sm-3 col-form-label">Product Feature Image</label>
                            <div class="col-sm-9">
                                <input type="file" name="image" class="form-control-file" id="horizontal-password-input"/>
                                <img src="{{asset($product->image)}}" alt="" height="100" width="130"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label class="col-sm-3 col-form-label">Product Other Image</label>
                            <div class="col-sm-9">
                                <input type="file" name="other_image[]" multiple class="form-control-file"/>
                                @foreach($product->otherImages as $image)
                                    <img src="{{asset($image->image)}}" alt="" height="100" width="130"/>
                                @endforeach
                            </div>
                        </div>
                        <div class="form-group row justify-content-end">
                            <div class="col-sm-9">
                                <div>
                                    <button type="submit" class="btn btn-primary w-md">Update Product Info</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- end row -->
@endsection


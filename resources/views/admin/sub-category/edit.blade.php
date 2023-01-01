@extends('admin.master')

@section('title')
    Edit Sub Category Page
@endsection

@section('body')
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title mb-4">Edit Sub Category Form</h4>
                    <p class="text-center text-success">{{Session::get(('message'))}}</p>
                    <form action="{{route('sub-category.update', ['id' => $sub_category->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Category name</label>
                            <div class="col-sm-9">
                                <select class="form-control" name="category_id">
                                    <option> -- Select Category -- </option>
                                    @foreach($categories as $category)
                                        <option value="{{$category->id}}" {{$category->id == $sub_category->category_id ? 'selected' : ''}}> {{$category->name}} </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-firstname-input" class="col-sm-3 col-form-label">Sub Category name</label>
                            <div class="col-sm-9">
                                <input type="text" value="{{$sub_category->name}}" class="form-control" name="name" id="horizontal-firstname-input"/>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-email-input" class="col-sm-3 col-form-label">Sub Category Description</label>
                            <div class="col-sm-9">
                                <textarea class="form-control" name="description" id="horizontal-email-input">{{$sub_category->description}}</textarea>
                            </div>
                        </div>
                        <div class="form-group row mb-4">
                            <label for="horizontal-password-input" class="col-sm-3 col-form-label">Sub Category Image</label>
                            <div class="col-sm-9">
                                <input type="file" name="image" class="form-control-file" id="horizontal-password-input"/>
                                <img src="{{asset($sub_category->image)}}" alt="" height="100" width="120"/>
                            </div>
                        </div>

                        <div class="form-group row justify-content-end">
                            <div class="col-sm-9">
                                <div>
                                    <button type="submit" class="btn btn-primary w-md">Update Sub Category Info</button>
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

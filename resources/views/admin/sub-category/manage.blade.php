@extends('admin.master')

@section('title')
    Manage Sub Category Page
@endsection

@section('body')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <h4 class="card-title">All Sub Category Info</h4>
                    <p class="text-center text-success">{{Session::get(('message'))}}</p>
                    <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                        <thead>
                        <tr>
                            <th>SL NO</th>
                            <th>Category Name</th>
                            <th>Sub Category Name</th>
                            <th>Image</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        </thead>


                        <tbody>
                        @foreach($sub_categories as $sub_category)
                        <tr>
                            <td>{{$loop->iteration}}</td>
                            <td>{{$sub_category->category->name}}</td>
                            <td>{{$sub_category->name}}</td>
                            <td><img src="{{asset($sub_category->image)}}" alt="" height="50" width="70"></td>
                            <td>{{$sub_category->status == 1 ? 'Published' : 'Unpublished'}}</td>
                            <td>
                                <a href="{{route('sub-category.edit', ['id' => $sub_category->id])}}" class="btn btn-success btn-sm">
                                    <i class="fa fa-edit"></i>
                                </a>
                                <a href="{{route('sub-category.delete', ['id' => $sub_category->id])}}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure to delete this.');">
                                    <i class="fa fa-trash"></i>
                                </a>
                            </td>
                        </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->
@endsection


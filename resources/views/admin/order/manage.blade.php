@extends('admin.master')

@section('title')
    Manage Order Page
@endsection

@section('body')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">

                    <h4 class="card-title">All Order Info</h4>
                    <p class="text-center text-success">{{Session::get(('message'))}}</p>
                    <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                        <thead>
                        <tr>
                            <th>SL NO</th>
                            <th>Order No</th>
                            <th>Customer Info</th>
                            <th>Order Total</th>
                            <th>Order Date</th>
                            <th>Order Status</th>
                            <th>Action</th>
                        </tr>
                        </thead>


                        <tbody>
                        @foreach($orders as $order)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>{{$order->id}}</td>
                                <td>{{$order->customer->name.'('. $order->customer->mobile.')'}}</td>
                                <td>{{$order->order_total}}</td>
                                <td>{{$order->order_date}}</td>
                                <td>{{$order->order_status}}</td>
                                <td>
                                    <a href="{{route('admin.order-detail', ['id' => $order->id])}}" class="btn btn-info btn-sm" title="View Order Detail">
                                        <i class="fa fa-book-open"></i>
                                    </a>
                                    <a href="{{route('admin.order-invoice', ['id' => $order->id])}}" class="btn btn-primary btn-sm" title="View Order Invoice">
                                        <i class="fa fa-book-reader"></i>
                                    </a>
                                    <a href="{{route('admin.download-invoice', ['id' => $order->id])}}" class="btn btn-secondary btn-sm" title="Download Order Invoice">
                                        <i class="fa fa-download"></i>
                                    </a>
                                    <a href="{{route('admin.order-edit', ['id' => $order->id])}}" class="btn btn-success btn-sm" title="Edit Order">
                                        <i class="fa fa-edit"></i>
                                    </a>
                                    <a href="{{route('admin.order-delete', ['id' => $order->id])}}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure to delete this.');" title="Delete Order">
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

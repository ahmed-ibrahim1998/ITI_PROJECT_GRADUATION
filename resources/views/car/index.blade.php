@extends('layouts.app')
@push('pg_btn')
@can('create-car')
    <a href="{{ route('car.create') }}" class="btn btn-sm btn-neutral">Create New Car</a>
@endcan
@endpush
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-5">
                <div class="card-header bg-transparent">
                    <div class="row">
                        <div class="col-lg-8">
                            <h3 class="mb-0">All Cars</h3>
                        </div>
                        <div class="col-lg-4">
                    {!! Form::open(['route' => 'car.index', 'method'=>'get']) !!}
                        <div class="form-group mb-0">
                        {{ Form::text('search', request()->query('search'), ['class' => 'form-control form-control-sm', 'placeholder'=>'Search car']) }}
                    </div>

                    {!! Form::close() !!}
                </div>
                    </div>
                </div>
                <div class="card-body p-0">
                    <div class="table-responsive">
                        <div>
                            <table class="table table-hover align-items-center">
                                <thead class="thead-light">
                                <tr>
                                    <th scope="col">Car model</th>
                                    <th scope="col">Car price </th>
                                    <th scope="col">Car discount </th>
                                    <th scope="col">Car image</th>
                                    <th scope="col" class="text-center">Action</th>
                                </tr>
                                </thead>
                                <tbody class="list">
                                @foreach($cars as $car)
                                    <tr>
                                        <th scope="row">
                                            <div class="mx-w-440 d-flex flex-wrap">
                                                {{$car->car_model}}
                                            </div>
                                        </th>
                                        <td class="budget">
                                            {{$car->car_price}}
                                        </td>
                                        <td class="budget">
                                            {{$car->discount}}
                                        </td>
                                        <td>
                                            <div class="avatar-group">
                                                @if ($car->car_image)
                                                <img alt="Image placeholder"
                                                    class="avatar avatar-xl rounded-circle"
                                                    data-toggle="tooltip" data-original-title="{{$car->car_model}}"
                                                    src="{{ asset($car->car_image) }}">
                                                @endif
                                            </div>
                                        </td>
                                        <td class="text-center">
                                            @can('destroy-car')
                                            {!! Form::open(['route' => ['car.destroy', $car],'method' => 'delete',  'class'=>'d-inline-block dform']) !!}
                                            @endcan
                                            @can('view-car')
                                            <a class="btn btn-primary btn-sm m-1" data-toggle="tooltip" data-placement="top" title="View and edit car details" href="{{route('car.show', $car)}}">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </a>
                                            @endcan
                                            @can('update-car')
                                            <a class="btn btn-info btn-sm m-1" data-toggle="tooltip" data-placement="top" title="Edit car details" href="{{route('car.edit',$car)}}">
                                                <i class="fa fa-edit" aria-hidden="true"></i>
                                            </a>
                                            @endcan
                                            @can('destroy-car')
                                                <button type="submit" class="btn delete btn-danger btn-sm m-1" data-toggle="tooltip" data-placement="top" title="Delete car" href="">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                            {!! Form::close() !!}
                                            @endcan
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                                <tfoot >
                                <tr>
                                    <td colspan="6">
                                        {{$cars->links()}}
                                    </td>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('scripts')
    <script>
        jQuery(document).ready(function(){
            $('.delete').on('click', function(e){
                e.preventDefault();
                let that = jQuery(this);
                jQuery.confirm({
                    icon: 'fas fa-wind-warning',
                    closeIcon: true,
                    title: 'Are you sure!',
                    content: 'You can not undo this action.!',
                    type: 'red',
                    typeAnimated: true,
                    buttons: {
                        confirm: function () {
                            that.parent('form').submit();
                            //$.alert('Confirmed!');
                        },
                        cancel: function () {
                            //$.alert('Canceled!');
                        }
                    }
                });
            })
        })

    </script>
@endpush

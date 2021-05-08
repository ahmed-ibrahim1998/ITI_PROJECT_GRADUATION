@extends('layouts.app')
@push('pg_btn')
    <a href="{{route('car.index')}}" class="btn btn-sm btn-neutral">All Cars</a>
@endpush
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-5">
                <div class="card-body">
                    {!! Form::open(['route' => ['car.update', $car], 'method'=>'put', 'files' => true]) !!}
                    <h6 class="heading-small text-muted mb-4">Car information</h6>
                        <div class="pl-lg-4">
                            <div class="row">

                                <div class="col-lg-6">
                                    <div class="form-group">
                                        {{ Form::label('car_model', 'Car model', ['class' => 'form-control-label']) }}
                                        {{ Form::text('car_model', $car->car_model, ['class' => 'form-control']) }}
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="form-group">
                                        {{ Form::label('car_price', 'Car price', ['class' => 'form-control-label']) }}
                                        {{ Form::text('car_price', $car->car_price, ['class' => 'form-control']) }}
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="form-group">
                                        {{ Form::label('discount', 'Car discount', ['class' => 'form-control-label']) }}
                                        {{ Form::text('discount', $car->discount, ['class' => 'form-control']) }}
                                    </div>
                                </div>

                                <div class="col-lg-12">
                                    <div class="form-group">
                                        {{ Form::label('car_details', 'Car Details', ['class' => 'form-control-label']) }}
                                        {!! Form::textarea('car_details',$car->car_details, ['id'=>"summernote", 'class'=> 'form-control',]) !!}
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        {{ Form::label('car_image', 'Car image', ['class' => 'form-control-label d-block']) }}
                                        <div class="input-group">
                                            <span class="input-group-btn">
                                              <a id="uploadFile" data-input="thumbnail" data-preview="holder" class="btn btn-secondary">
                                                <i class="fa fa-picture-o"></i> Choose Car Image
                                              </a>
                                            </span>
                                            <input id="thumbnail" class="form-control d-none" type="text" name="car_image">
                                        </div>
                                </div>
                            </div>

                                        <div class="col-md-2">
                                            @if ($car->car_image)
                                                <a href="{{ asset($car->car_image) }}" target="_blank">
                                                    <img alt="Image placeholder"
                                                    class="avatar avatar-xl  rounded-circle"
                                                    data-toggle="tooltip" data-original-title="{{ $car->car_model }} Logo"
                                                    src="{{ asset($car->car_image) }}">
                                                </a>
                                            @endif
                                    </div>
                            </div>
                        </div>

                        <hr class="my-4" />
                        <div class="pl-lg-4">
                            <div class="row">
{{--                                <div class="col-md-12">--}}
{{--                                    <div class="custom-control custom-checkbox">--}}
{{--                                        <input type="checkbox" name="status" value="1" {{ $post->status ? 'checked' : ''}}  class="custom-control-input" id="status">--}}
{{--                                        {{ Form::label('status', 'Status', ['class' => 'custom-control-label']) }}--}}
{{--                                    </div>--}}
{{--                                </div>--}}
                                <div class="col-md-12">
                                    {{ Form::submit('Submit', ['class'=> 'mt-5 btn btn-primary']) }}
                                </div>
                            </div>
                        </div>
                    {!! Form::close() !!}
                </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('styles')
    <link rel="stylesheet" href="{{ asset('assets/css/summernote-bs4.min.css') }}">
@endpush

@push('scripts')
<script src="{{ asset('assets/js/summernote-bs4.min.js') }}"></script>
<script src="{{ asset('vendor/laravel-filemanager/js/stand-alone-button.js') }}"></script>
<script>
    jQuery(document).ready(function() {
        jQuery('#summernote').summernote({
            height: 150,
            toolbar: [
                // [groupName, [list of button]]
                ['style', ['bold', 'italic', 'underline', 'clear']],
                ['font', ['strikethrough', 'superscript', 'subscript']],
                ['fontsize', ['fontsize']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']]
              ]

        });
        jQuery('#uploadFile').filemanager('file');
    });
  </script>
@endpush

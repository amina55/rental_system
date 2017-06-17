@extends('layouts.header')
@section('content')



<div class="container">
    <div class="row">
        <form action="{{ route('add.search') }}" method="post" class="form-horizontal">
            {{ csrf_field() }}

            <?php $cities = config('myconfig.cities'); ?>
            <div class="col-sm-3">
                <select class="form-control" id="city" name="city">
                    <option value="">All Cities</option>
                    @foreach($cities as $ci)
                        <option {{ (isset($city) && $city == $ci) ? 'selected' : '' }} value="{{ $ci }}">{{ strtoupper($ci)}}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-sm-3">
                <select class="form-control" id="category" name="category">
                    <option value="">-- Select a Category --</option>
                    <option {{ (isset($category) && $category == 'vehicles') ? 'selected' : '' }} value="vehicles">Vehicles</option>
                    <option {{ (isset($category) && $category == 'property') ? 'selected' : '' }} value="property">Property</option>
                </select>
            </div>

            <?php $vehicles = config('myconfig.category.vehicles');
            $properties = config('myconfig.category.property');?>
            <div class="col-sm-4">
                <select class="form-control" id="sub_category" name="sub_category">
                    <option value="">-- Select a Sub Category --</option>
                    @foreach($vehicles as $vehicle)
                        <option {{ (isset($sub_category) && $sub_category == $vehicle) ? 'selected' : '' }} class="vehicle-category" value="{{ $vehicle }}">{{ strtoupper($vehicle)}}</option>
                    @endforeach
                    @foreach($properties as $property)
                        <option {{ (isset($sub_category) && $sub_category == $property) ? 'selected' : '' }} class="property-category" value="{{ $property }}">{{ strtoupper($property)}}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-sm-2">
                <button type="submit" class="btn btn-primary"> Search</button>
            </div>
        </form>
    </div>
</div><br>

<script>

    $('#category').change(function () {
        var value = $(this).val();
        if(value == 'vehicle') {
            $('.vehicle-category').show();
            $('.property-category').hide();

        } else if (value == 'property') {
            $('.vehicle-category').hide();
            $('.property-category').show();
        }
    });
</script>

<?php $totalRecords = count($adds); ?>
@for($i = 0; $i< $totalRecords; )
    <div class="container">
        <div class="row">
            @for($j = 0; $j < 3 && $i < $totalRecords; $j++, $i++)
            <div class="col-sm-4">
                <a class="no-text-decoration" href="{{ route('add.show', [$adds[$i]['id']]) }}">
                    <div class="panel panel-primary">
                        <div class="panel-heading">{{ $adds[$i]['title'] }}</div>
                        <div class="panel-body div-images"><img src="{{ asset('uploads').'/'.$adds[$i]['pic1']}}" class="img-responsive image-height" alt="Image"></div>
                        <div class="panel-footer">Rent price : {{ $adds[$i]['rent_amount'] }} ₹s/ {{ $adds[$i]['duration'] }}</div>
                    </div>
                </a>
            </div>
            @endfor
        </div>
    </div>
    <br>
@endfor
@endsection

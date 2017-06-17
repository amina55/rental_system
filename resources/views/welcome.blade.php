@extends('layouts.header')
@section('content')

<div class="container">
    <div class="row">
        <form action="" method="post" class="form-horizontal">

            <?php $cities = config('myconfig.cities'); ?>
            <div class="col-sm-4">
                <select class="form-control" id="city" name="city">
                    <option value="">All Cities</option>
                    @foreach($cities as $city)
                        <option value="{{ $city }}">{{ strtoupper($city)}}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-sm-4">
                <select class="form-control" id="category" name="category">
                    <option>-- Select a Category --</option>
                    <option>Vehicles</option>
                    <option>Property</option>
                </select>
            </div>

            <?php $vehicles = config('myconfig.category.vehicles');
            $properties = config('myconfig.category.property');?>
            <div class="col-sm-4">
                <select class="form-control" id="sub_category" name="sub_category">
                    <option>-- Select a Sub Category --</option>
                    @foreach($vehicles as $vehicle)
                        <option value="{{ $vehicle }}">{{ strtoupper($vehicle)}}</option>
                    @endforeach
                </select>
            </div>
        </form>
    </div>
</div><br>

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
                        <div class="panel-footer">Rent price : {{ $adds[$i]['rent_amount'] }} / {{ $adds[$i]['duration'] }}</div>
                    </div>
                </a>
            </div>
            @endfor
        </div>
    </div>
    <br>
@endfor
@endsection

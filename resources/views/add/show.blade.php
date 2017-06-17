@extends('layouts.header')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        {{--<div class="col-sm-12">
                            <div class="col-sm-9"><h3>{{ $add->title }}</h3></div>\
                            <div class="col-sm-3 pull-right"><h3>{{ $add->rent_amount }} / {{ $add->duration }}</h3></div>
                        </div>--}}
                        <p><strong class="fs25">{{ $add->title }}</strong>
                        <strong class="fs15 pull-right">{{ $add->rent_amount }} ₹ / {{ $add->duration }}</strong></p>
                    </div>

                    <div class="panel-body">

                        <p class="pull-left"><fa class="fa fa-lg fa-2x fa-map-marker"></fa>  {{$add->city}}, India</p>
                        <p class="pull-right"><fa class="fa fa-lg fa-2x fa-calendar-o"></fa> {{ $add->created_at }}</p>

                        <div class="col-sm-12">
                            @if($add->pic2 && $add->pic3)
                                <div class="col-sm-4">
                                    <a target="_blank" href="{{asset('uploads').'/'.$add->pic1}}">
                                        <img class="img-responsive show-images" src="{{asset('uploads').'/'.$add->pic1}}">
                                    </a>
                                </div>
                                <div class="col-sm-4">
                                    <a target="_blank" href="{{asset('uploads').'/'.$add->pic2}}">
                                        <img class="img-responsive show-images" src="{{asset('uploads').'/'.$add->pic2}}">
                                    </a>
                                </div>
                                <div class="col-sm-4">

                                    <a target="_blank" href="{{asset('uploads').'/'.$add->pic3}}">
                                        <img class="img-responsive show-images" src="{{asset('uploads').'/'.$add->pic3}}">
                                    </a>
                                </div>
                            @else
                                <div class="col-sm-6">
                                    <a target="_blank" href="{{asset('uploads').'/'.$add->pic1}}">
                                        <img class="img-responsive show-images" src="{{asset('uploads').'/'.$add->pic1}}">
                                    </a>
                                </div>
                                <div class="col-sm-6">

                                    <?php $pic = ($add->pic2) ? $add->pic2 : (($add->pic3) ? $add->pic3 : '')?>

                                    @if($pic)
                                        <a target="_blank" href="{{asset('uploads').'/'.$pic}}">
                                            <img class="img-responsive show-images" src="{{asset('uploads').'/'.$pic}}">
                                        </a>
                                        @endif
                                </div>
                            @endif
                        </div><br><br>
                        <div class="col-sm-12 description-div">

                            <p>{{$add->description}}</p>

                        </div>

                        <div class="col-sm-12 description-div">

                            <p>You can Contact this Seller.</p>

                            <p> <fa class="fa fa-lg fa-user"></fa> <strong>{{$add->user_name}}</strong></p>

                            <p><fa class="fa fa-lg fa-phone"></fa><strong>{{$add->phone_no}}</strong></p>
                            @if($add->email)
                                <p><fa class="fa fa-lg fa-envelope"></fa><strong>{{$add->email}}</strong></p>

                            @endif

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

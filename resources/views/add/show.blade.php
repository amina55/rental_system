@extends('layouts.header')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3>{{ $add->title }}</h3>
                    </div>

                    <div class="panel-body">

                        <p class="pull-left"><fa class="fa fa-lg fa-2x fa-map-marker"></fa>  {{$add->city}}, India
                        <p class="pull-right">Add added at <strong>{{ $add->created_at }}</strong></p>

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

                            <p><strong>User Name : {{$add->user_name}}</strong></p>

                            <p><strong>Phone No. : {{$add->phone_no}}</strong></p>
                            @if($add->email)
                                <p><strong>Email : {{$add->email}}</strong></p>

                            @endif

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

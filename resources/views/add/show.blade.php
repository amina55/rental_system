@extends('layouts.header')

@section('content')

    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3>{{ $add->title }}</h3>
                <div class="pull-left">
                    <fa class="fa fa-lg fa-2x fa-map-marker"></fa>{{$add->city}}, India
                </div>
                <div class="pull-right">
                    <p>Add added at <strong>{{ $add->created_at }}</strong></p>
                </div>
            </div>

            <div class="panel-body">

                <div class="col-sm-12">
                    <div class="col-sm-4">
                        <a target="_blank" href="{{asset('uploads').'/'.$add->pic1}}">
                            <img class="img-responsive image-height" src="{{asset('uploads').'/'.$add->pic1}}">
                        </a>
                    </div>
                    <div class="col-sm-4">
                        <a target="_blank" href="{{asset('uploads').'/'.$add->pic2}}">
                            <img class="img-responsive" src="{{asset('uploads').'/'.$add->pic2}}">
                        </a>
                    </div>
                    <div class="col-sm-4">

                        <a target="_blank" href="{{asset('uploads').'/'.$add->pic3}}">
                            <img class="img-responsive" src="{{asset('uploads').'/'.$add->pic3}}">
                        </a>
                    </div>
                </div>

            </div>
        </div>
    </div>

@endsection
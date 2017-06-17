@extends('layouts.header')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Submit an Ad
                    </div>
                    <div class="panel-body">
                        <form class="form-horizontal" role="form" method="POST" action="{{ ($add) ? route('add.update', [$add]) : route('add.store') }} " enctype="multipart/form-data">
                            {{ csrf_field() }}

                            {{ ($add) ? method_field('PUT') : '' }}


                            <div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
                                <label for="title" class="col-md-4 control-label">Ad. Title<em class="required-asterick">*</em></label>

                                <div class="col-md-6">
                                    <input id="title" type="text" class="form-control" name="title" }}
                                    value="{{ old('title') ? old('title') : (($add) ? $add->title : '') }}" >

                                    @if ($errors->has('title'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('title') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ $errors->has('category') ? ' has-error' : '' }}">
                                <label for="category" class="col-md-4 control-label">Category<em class="required-asterick">*</em></label>

                                <?php $category = old('category') ? old('category') : (($add) ? $add->category : '') ?>
                                <div class="col-md-6">
                                    <select id="category" class="form-control" name="category" {{ ($add) ? 'disabled' : '' }} required>
                                        <option value=""> -- Select A Category -- </option>
                                        <option {{ ($category == 'vehicles') ? 'selected' : '' }} value="vehicles">Vehicles</option>
                                        <option {{ ($category == 'property') ? 'selected' : '' }} value="property">Property</option>
                                    </select>

                                    @if ($errors->has('category'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('category') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ $errors->has('sub_category') ? ' has-error' : '' }}">
                                <label for="sub_category" class="col-md-4 control-label">Sub Category<em class="required-asterick">*</em></label>
                                <?php $vehicles = config('myconfig.category.vehicles');
                                $properties = config('myconfig.category.property');
                                $subCategory = old('sub_category') ? old('sub_category') : (($add) ? $add->sub_category : '') ?>
                                
                                <div class="col-md-6">
                                    <select id="sub_category" class="form-control" name="sub_category" {{ ($add) ? 'disabled' : '' }} required>
                                        <option>-- Select a Sub Category --</option>
                                        @foreach($vehicles as $vehicle)
                                            <option {{ ($subCategory == $vehicle) ? 'selected' : '' }} value="{{ $vehicle }}">{{ strtoupper($vehicle)}}</option>
                                        @endforeach
                                    </select>

                                    @if ($errors->has('sub_category'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('sub_category') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>


                            <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
                                <label for="description" class="col-md-4 control-label">Ad. Description<em class="required-asterick">*</em></label>

                                <div class="col-md-6">
                                    <textarea id="description" class="form-control" name="description" rows="10" required> {{old('description') ? old('description') : (($add) ? $add->description : '') }}</textarea>

                                    @if ($errors->has('description'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('description') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ $errors->has('duration') ? ' has-error' : '' }}">
                                <label for="duration" class="col-md-4 control-label">Rent Time Unit<em class="required-asterick">*</em></label>

                                <?php $duration = old('duration') ? old('duration') : (($add) ? $add->duration : ''); ?>
                                <div class="col-md-6">
                                    <select id="duration" class="form-control" name="duration">
                                        <option {{ ($duration == '1day') ? 'selected' : '' }} value="1day"> 1 Day </option>
                                        <option {{ ($duration == '1month') ? 'selected' : '' }} value="1month"> 1 Month </option>
                                        <option {{ ($duration == '1year') ? 'selected' : '' }} value="1year"> 1 Year</option>
                                    </select>
                                    @if ($errors->has('duration'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('duration') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ $errors->has('rent_amount') ? ' has-error' : '' }}">
                                <label for="rent_amount" class="col-md-4 control-label">Rent Amount<em class="required-asterick">*</em></label>

                                <div class="col-md-6">
                                    <input id="rent_amount" type="number" class="form-control" name="rent_amount"
                                           value="{{ old('rent_amount') ? old('rent_amount') : (($add) ? $add->rent_amount : '') }}" min="0" required>

                                    @if ($errors->has('rent_amount'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('rent_amount') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ $errors->has('pic1') ? ' has-error' : '' }}">
                                <label for="pic1" class="col-md-4 control-label">Image 1<em class="required-asterick">*</em></label>

                                <div class="col-md-6">
                                    <input id="pic1" type="file" class="form-control" name="pic1" accept="image/*" {{ (($add) ? $add->pic1 : 'required') }} >
                                    <label>uploaded : {{ (($add) ? $add->pic1 : '') }}</label>
                                    @if ($errors->has('pic1'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('pic1') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>


                            <div class="form-group{{ $errors->has('pic2') ? ' has-error' : '' }}">
                                <label for="pic2" class="col-md-4 control-label">Image 2</label>

                                <div class="col-md-6">
                                    <input id="pic2" type="file" class="form-control" name="pic2" accept="image/*" value="{{ old('pic2') ? old('pic2') : (($add) ? $add->pic2 : '') }}">

                                    @if ($errors->has('pic2'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('pic2') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>


                            <div class="form-group{{ $errors->has('pic3') ? ' has-error' : '' }}">
                                <label for="pic3" class="col-md-4 control-label">Image 3</label>

                                <div class="col-md-6">
                                    <input id="pic3" type="file" class="form-control" name="pic3" accept="image/*" value="{{ old('pic3') ? old('pic3') : (($add) ? $add->pic3 : '') }}">

                                    @if ($errors->has('pic3'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('pic3') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ $errors->has('user_name') ? ' has-error' : '' }}">
                                <label for="user_name" class="col-md-4 control-label">User Name<em class="required-asterick">*</em></label>

                                <div class="col-md-6">
                                    <input id="user_name" type="text" class="form-control" name="user_name" value="{{ old('user_name') ? old('user_name') : (($add) ? $add->user_name : '') }}" required>

                                    @if ($errors->has('user_name'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('user_name') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>


                            <div class="form-group{{ $errors->has('phone_no') ? ' has-error' : '' }}">
                                <label for="phone_no" class="col-md-4 control-label">Phone No.<em class="required-asterick">*</em></label>

                                <div class="col-md-6">
                                    <input id="phone_no" type="text" class="form-control" name="phone_no" value="{{ old('phone_no') ? old('phone_no') : (($add) ? $add->phone_no : '') }}" required>

                                    @if ($errors->has('phone_no'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('phone_no') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                                <label for="email" class="col-md-4 control-label">Email</label>

                                <div class="col-md-6">
                                    <input id="email" type="email" class="form-control" name="email" value="{{ old('email') ? old('email') : (($add) ? $add->email : '') }}">

                                    @if ($errors->has('email'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group{{ $errors->has('city') ? ' has-error' : '' }}">
                                <label for="city" class="col-md-4 control-label">City<em class="required-asterick">*</em></label>

                                <?php $cities = config('myconfig.cities');
                                $oldCity = old('city') ? old('city') : (($add) ? $add->city : '') ?>

                                <div class="col-md-6">
                                    <select class="form-control" id="city" name="city">

                                        <option value="">All Cities</option>
                                        @foreach($cities as $city)
                                            <option {{ ($oldCity == $city) ? 'selected' : '' }} value="{{ $city }}">{{ strtoupper($city)}}</option>
                                        @endforeach
                                    </select>

                                    @if ($errors->has('city'))
                                        <span class="help-block">
                                        <strong>{{ $errors->first('city') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-8 col-md-offset-4">
                                    <button type="submit" class="btn btn-primary"> {{ ($add) ? 'Update' : 'Submit' }} Ad.</button>
                                    <a type="button" href="{{ route('home') }}" class="btn btn-default"> Cancel </a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

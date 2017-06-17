@extends('layouts.header')

@section('content')
<div class="container">
    <div class="row">

        <div class="table-responsive">
            <table class="table">
                <thead>
                <tr>
                    <th> Date </th>
                    <th> Title </th>
                    <th> Price </th>
                    <th> Actions </th>
                </tr>
                </thead>
                <tbody>

                @foreach($adds as $add)
                    <tr class="{{ ($add->status == 'active') ? 'success' : 'danger'}}">
                        <td> {{ $add->created_at }}</td>
                        <td> {{ $add->title }}</td>
                        <td> {{ $add->rent_amount }} ₹/ {{ $add->duration }}</td>
                        <td>
                            <a class="no-text-decoration" href="{{ route('add.show', $add) }}"><fa class="fa fa-lg fa-eye"></fa>preview</a>
                            <a class="no-text-decoration" href="{{ route('add.edit', $add) }}"><fa class="fa fa-lg fa-pencil"></fa></span>edit</a>

                            @if($add->status == 'active')
                                <a class="no-text-decoration" href="{{ route('add.deactivate', $add) }}"><fa class="fa fa-lg fa-remove"></fa>Deactivate</a>
                            @else
                                <a class="no-text-decoration" href="{{ route('add.delete', $add) }}"><fa class="fa fa-lg fa-check"></fa>Delete</a>
                                <a class="no-text-decoration" href="{{ route('add.activate', $add) }}"><fa class="fa fa-lg fa-check"></fa>Activate</a>
                            @endif
                        </td>
                    </tr>
                @endforeach


                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection

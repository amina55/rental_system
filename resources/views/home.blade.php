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
                    <tr>
                        <td> {{ $add->created_at }}</td>
                        <td> {{ $add->title }}</td>
                        <td> {{ $add->rent_amount }} / {{ $add->duration }}</td>
                        <td>
                            <a class="no-text-decoration" href="{{ route('add.show', $add) }}"><span class="glyphicon glyphicon-user"></span>preview</a>
                            <a class="no-text-decoration" href="{{ route('add.edit', $add) }}"><span class="glyphicon glyphicon-user"></span>edit</a>
                            {{--<a class="no-text-decoration" href="{{ route('add.delete', $add) }}">Delete</a>
--}}
                        </td>
                    </tr>
                @endforeach


                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection

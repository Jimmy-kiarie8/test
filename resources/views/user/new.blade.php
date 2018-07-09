@extends('layouts.app')

@section('title', 'Create')

@section('content')
<myheader :user="{{ Auth::user() }}"></myheader>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header text-center">
                    <a href="{{ route('users.index') }}" class="btn btn-sm pull-right"> <i class="fa fa-arrow-left"></i> Back</a>
                    <h1 class="text-center">Create New User</h1><hr>
                </div>
                <div class="card-body">
                    {!! Form::open(['route' => ['users.store'] ]) !!}
                        @include('user._form')
                        <!-- Submit Form Button -->
                        {!! Form::submit('Create', ['class' => 'btn btn-primary']) !!}
                    {!! Form::close() !!}
                  
                </div>
                <div class="card-footer"></div>
            </div>
        </div>
    </div>
</div>
@endsection
<!-- Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ea ipsam ex eveniet possimus error aliquam magnam placeat, doloremque odit nesciunt maxime ullam saepe reprehenderit facilis, a totam, eligendi, sunt voluptatibus! -->
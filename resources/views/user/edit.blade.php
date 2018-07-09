@extends('layouts.app')

@section('title', 'Edit User ' . $user->name)

@section('content')
<myheader :user="{{ Auth::user() }}"></myheader>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header text-center">
                    <a href="{{ route('users.index') }}" class="btn btn-sm pull-right"> <i class="fa fa-arrow-left"></i> Back</a>
                    <h1 class="text-center">Edit {{$user->name}}'s details</h1><hr>
                </div>
                <div class="card-body">
                    <div class="wrapper wrapper-content animated fadeInRight">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="ibox float-e-margins">
                                    <div class="ibox-content">
                                        {!! Form::model($user, ['method' => 'PUT', 'route' => ['users.update',  $user->id ] ]) !!}
                                            @include('user._form')
                                            <!-- Submit Form Button -->
                                            {!! Form::submit('Save Changes', ['class' => 'btn btn-primary']) !!}
                                        {!! Form::close() !!}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer"></div>
            </div>
        </div>
    </div>
</div>
@endsection
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Register</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="row">

                            <div class="input-field col s6">
                                <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            <label for="name">Name</label>
                            </div>
                        </div>

                        <div class="row">

                            <div class="input-field col s6">
                                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            <label for="email">E-Mail Address</label>
                            </div>
                        </div>

                        <div class="row">

                            <div class="input-field col s6">
                                <input id="phone_number" type="number" class="form-control{{ $errors->has('phone_number') ? ' is-invalid' : '' }}" name="phone_number" value="{{ old('phone_number') }}">

                                @if ($errors->has('phone_number'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('phone_number') }}</strong>
                                    </span>
                                @endif
                            <label for="phone_number">Phone number</label>
                            </div>
                        </div>

                        <div class="row">

                            <div class="input-field col s6">
                                <input id="address" type="text" class="form-control{{ $errors->has('address') ? ' is-invalid' : '' }}" name="address" value="{{ old('address') }}">

                                @if ($errors->has('address'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('address') }}</strong>
                                    </span>
                                @endif
                            <label for="address">address</label>
                            </div>
                        </div>

                        <div class="row">

                            <div class="input-field col s6">
                                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            <label for="password">Password</label>
                            </div>
                        </div>

                        <div class="row">

                            <div class="input-field col s6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>    
                                <label for="password-confirm">Confirm Password</label>
                            </div>
                        </div>

                        {{-- <div class="row">

                            <div class="input-field col s6">
                                <select name="credentials" class="custom-select{{ $errors->has('credentials') ? ' is-invalid' : '' }}" id="inputGroupSelect01">
                                    <option selected>Choose credentials</option>
                                    <option value="shareholders">Shareholders</option>
                                    <option value="directors">Directors</option>
                                    <option value="managers">Managers</option>
                                    <option value="employees">Employees</option>
                                </select>
                            <label for="credentials">credentials</label>

                                @if ($errors->has('credentials'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('credentials') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
 --}}
                        <div class="row">
                            <div class="input-field col s6 offset-md-4">
                                <div class="row-fluid">
                                  <select class="selectpicker" data-show-subtext="true" data-live-search="true" name="company_id">
                                    <option data-subtext="Choose a company" value="" ></option>
                                    @foreach ($company as $element)
                                        <option data-subtext="" value="{{ $element->id }}">{{$element->name}}</option>
                                    @endforeach
                                  </select>
                                </div>
                                @if ($errors->has('company_id'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('company_id') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="row mb-0">
                            <div class="input-field col s6 offset-md-4">
                                <button type="submit" class="btn waves-effect waves-light btn-primary">
                                    Register
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

<!-- Name Form Input -->
<div class="form-group @if ($errors->has('name')) has-error @endif">
    {!! Form::label('name', 'Name') !!}
    {!! Form::text('name', null, ['class' => 'form-control', 'placeholder' => 'Name']) !!}
    @if ($errors->has('name')) <p class="help-block">{{ $errors->first('name') }}</p> @endif
</div>

<!-- email Form Input -->
<div class="form-group @if ($errors->has('email')) has-error @endif">
    {!! Form::label('email', 'Email') !!}
    {!! Form::text('email', null, ['class' => 'form-control', 'placeholder' => 'Email']) !!}
    @if ($errors->has('email')) <p class="help-block">{{ $errors->first('email') }}</p> @endif
</div>

<div class="form-group @if ($errors->has('phone_number')) has-error @endif">
    {!! Form::label('phone_number', 'Phone Number') !!}
    {!! Form::text('phone_number', null, ['class' => 'form-control', 'placeholder' => 'Phone number']) !!}
    @if ($errors->has('phone_number')) <p class="help-block">{{ $errors->first('phone_number') }}</p> @endif
</div>

<div class="form-group @if ($errors->has('address')) has-error @endif">
    {!! Form::label('address', 'Address') !!}
    {!! Form::text('address', null, ['class' => 'form-control', 'placeholder' => 'Address']) !!}
    @if ($errors->has('address')) <p class="help-block">{{ $errors->first('address') }}</p> @endif
</div>

<!-- password Form Input -->
<div class="form-group @if ($errors->has('password')) has-error @endif">
    {!! Form::label('password', 'Password') !!}
    {!! Form::password('password', ['class' => 'form-control', 'placeholder' => 'Password']) !!}
    @if ($errors->has('password')) <p class="help-block">{{ $errors->first('password') }}</p> @endif
</div>

<!-- Roles Form Input -->
<div class="row">
<div class="form-group col-md-4 @if ($errors->has('roles')) has-error @endif">
    {!! Form::label('roles[]', 'Roles') !!}
    {!! Form::select('roles[]', $roles, isset($user) ? $user->roles->pluck('id')->toArray() : null,  ['multiple', 'class' => 'selectpicker', 'data-show-subtext' => 'true', 'data-live-search' => 'true']) !!}
    @if ($errors->has('roles')) <p class="help-block">{{ $errors->first('roles') }}</p> @endif
</div>

<div class="form-group row col-md-4 @if ($errors->has('company_id')) has-error @endif">
    <div class="col-md-6 offset-md-4">
        <div class="row-fluid">
            <label for="company">Company</label>
          <select class="selectpicker" data-show-subtext="true" data-live-search="true" name="company_id">
            <option data-subtext="Choose a company" value="" ></option>
            @foreach ($company as $element)
                <option data-subtext="" value="{{ $element->id }}">{{$element->name}}</option>
            @endforeach
          </select>
        </div>
        @if ($errors->has('company_id')) <p class="help-block">{{ $errors->first('company_id') }}</p> @endif
    </div>
</div>
</div>
<!-- Permissions -->
@if(isset($user))
    @include('shared._permissions', ['closed' => 'true', 'model' => $user ])
@endif
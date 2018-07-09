@extends('layouts.master')

@section('content')
<myheader :user="{{ Auth::user() }}"></myheader>
<my-post :auth="{{ Auth::user() }}"></my-post>

@endsection

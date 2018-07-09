<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSRF Token -->
<meta name="csrf-token" content="{{ csrf_token() }}">

<style>
	#datatable_wrapper{
		width: 100%;
	}
</style>
<title>{{ config('app.name', 'Eboard') }}</title>

<link href="{{ asset('css/app.css') }}" rel="stylesheet">
<link href="{{ asset('css/main.css') }}" rel="stylesheet">
<link href="{{ asset('table/datatables/css/jquery.dataTables.min.css') }}" rel="stylesheet">
  <link rel="stylesheet" href="{{asset('bower_components/font-awesome/css/font-awesome.min.css')}}">
  <link rel="stylesheet" href="{{asset('bower_components/bootstrap/dist/css/bootstrap.min.css')}}">
 <link href="{{ asset('vuetify/css/vuetify.min.css') }}" rel="stylesheet">
<link href="{{ asset('vuetify/css/vuetify.css') }}" rel="stylesheet"> 
<link href="{{ asset('table/datatables/css/dataTables.bootstrap.min.css') }}" rel="stylesheet">
</head>
<body>
<div id="app">
    @yield('content')
</div>
<script src="{{ asset('js/jquery3.min.js') }}"></script>
<script src="{{ asset('js/app.js') }}"></script>
<script src="{{ asset('table/datatables/js/dataTables.bootstrap.min.js') }}"></script>
<script src="{{ asset('table/datatables/js/jquery.dataTables.min.js') }}"></script>
<script src="{{asset('bower_components/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<script src="{{ asset('vuetify/js/vuetify.min.js') }}"></script>
<script src="{{ asset('vuetify/js/vuetify.js') }}"></script>
<script>
    $('#datatable').dataTable();
</script>
</body>
</html>

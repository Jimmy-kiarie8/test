{{-- <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('table/datatables/css/jquery.dataTables.min.css') }}" rel="stylesheet">
    <link href="{{ asset('table/datatables/css/dataTables.bootstrap.min.css') }}" rel="stylesheet">
</head>
<body>
	<div class="container">
	<table class="table table-stripped table-hover" id="datatable">
		<thead>
			<th>Lorem</th>
			<th>Numquam</th>
			<th>Ipsum</th>
			<th>Nulla</th>
			<th>Libero</th>
			<th>Beatea</th>
			<th>Vitae</th>
			<th>Tenetur</th>
		</thead>
		<tbody>
			@for ($i = 1; $i < 13; $i++)
				<tr>
					<td>Lorem ipsum </td>
					<td>Numquam</td>
					<td>Fuga illum</td>
					<td>Ullam nulla</td>
					<td>Laborum</td>
					<td>Tenetur</td>
					<td>Saepe</td>
					<td>Libero </td>
				</tr>
			@endfor
			
		</tbody>
	</table>
	</div>
<script src="{{ asset('js/jquery3.min.js') }}"></script>
<script src="{{ asset('table/datatables/js/dataTables.bootstrap.min.js') }}"></script>
<script src="{{ asset('table/datatables/js/jquery.dataTables.min.js') }}"></script>
<script>
	$('#datatable').dataTable();
</script>
</body>
</html> --}}

@extends('layouts.appb')

@section('content')
<div class="container">
  <div class="row justify-content-center">
      <div class="col-md-8">
          <div class="card card-default">
              <div class="card-header">Welcome</div>

              <div class="card-body">
                  @guest
                       <div class="alert alert-success">
                           {{ session('status') }} logged out
                       </div>
                  @else
                    <div class="alert alert-success">
                    	{{Auth::user()->role}}
                        {{ session('status') }} logged in
                       {{-- @foreach (Auth()->user()->unreadNotifications as $notification)
                        	<a class="btn btn-info btn-sm"  href="#">
                                      @include('notification_'.snake_case(class_basename($notification->type))) --}}
                                     {{-- {{ $notification }} <br> --}}
                                     {{-- {{ $convert }} --}}

                                     {{-- {{ snake_case(class_basename($notification->data[0])) }} 
                                </a>
                        @endforeach--}}
                    </div>
                  @endguest
              </div>
          </div>
      </div>
  </div>
</div>
@endsection
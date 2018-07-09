<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>@yield('title')</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <meta name="csrf-token" content="{{ csrf_token() }}">

  


 <link href="{{ asset('vuetify/css/vuetify.min.css') }}" rel="stylesheet">
<link href="{{ asset('vuetify/css/vuetify.css') }}" rel="stylesheet"> 
{{-- <link href="{{ asset('materialize-css/css/materialize.min.css') }}" rel="stylesheet">             
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> --}}

{{-- <link rel="stylesheet" href="https://vuetifyjs.com/layout/pre-defined"> --}}
{{-- <link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons' rel="stylesheet"> --}}
  <!-- Bootstrap Color Picker -->
  {{-- <link rel="stylesheet" href="../../bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"> --}}
  <!-- Bootstrap time Picker -->
  {{-- <link rel="stylesheet" href="../../plugins/timepicker/bootstrap-timepicker.min.css"> --}}
  <!-- Bootstrap 3.3.7 -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="{{asset('css/ionicons.min.css')}}">
  <!-- Theme style -->
  <link href="{{ asset('css/app.css') }}" rel="stylesheet">
  <link href="{{ asset('css/main.css') }}" rel="stylesheet">
  <link href="{{ asset('css/google.css') }}" rel="stylesheet">
  <link rel="stylesheet" href="{{asset('dist/css/AdminLTE.min.css')}}"><!-- fullCalendar -->
  {{-- <link rel="stylesheet" href="../bower_components/fullcalendar/dist/fullcalendar.min.css"> --}}
  {{-- <link rel="stylesheet" href="../bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print"> --}}
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  {{-- <link rel="stylesheet" href="{{asset('dist/css/skins/_all-skins.min.css')}}"> --}}
  <!-- Morris chart -->
  {{-- <link rel="stylesheet" href="{{asset('bower_components/morris.js/morris.css')}}"> --}}
  <!-- jvectormap -->
  {{-- <link rel="stylesheet" href="{{('bower_components/jvectormap/jquery-jvectormap.css')}}"> --}}
  <!-- Date Picker -->
  {{-- <link rel="stylesheet" href="{{asset('bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css')}}"> --}}
  <!-- Daterange picker -->
  {{-- <link rel="stylesheet" href="{{asset('bower_components/bootstrap-daterangepicker/daterangepicker.css')}}"> --}}
  <!-- bootstrap wysihtml5 - text editor -->
  {{-- <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"> --}}
  <!-- DataTables -->
  <link rel="stylesheet" href="{{asset('css/dataTables.bootstrap.min.css')}}">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div id="app">
    @yield('content')
</div>

<!-- Google And Microsoft Calendar -->
{{-- <script src="{{ asset('js/vue-add-to-calendar.min.js') }}"></script> --}}

<script src="{{ asset('js/jquery.min.js') }}"></script>
<script src="{{ asset('js/app.js') }}"></script>
<!-- jQuery 3 -->
{{-- <!-- <script src="{{asset('bower_components/jquery/dist/jquery.min.js')}}"></script> --> --}}
<!-- jQuery UI 1.11.4 -->
{{-- <script src="{{asset('bower_components/jquery-ui/jquery-ui.min.js')}}"></script> --}}
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
{{-- <script>
  $.widget.bridge('uibutton', $.ui.button);
</script> --}}
<!-- Bootstrap 3.3.7 -->
<script src="{{asset('js/bootstrap.min.js')}}"></script>
<!-- Morris.js charts -->
{{-- <script src="{{asset('bower_components/raphael/raphael.min.js')}}"></script> --}}
{{-- <!-- <script src="{{asset('bower_components/morris.js/morris.min.js')}}"></script> --> --}}
<!-- Sparkline -->
{{-- <script src="{{asset('bower_components/jquery-sparkline/dist/jquery.sparkline.min.js')}}"></script> --}}
<!-- jvectormap -->
{{-- <script src="{{asset('plugins/jvectormap/jquery-jvectormap-1.2.2.min.js')}}"></script> --}}
{{-- <script src="{{asset('plugins/jvectormap/jquery-jvectormap-world-mill-en.js')}}"></script> --}}
<!-- jQuery Knob Chart -->
{{-- <script src="{{asset('bower_components/jquery-knob/dist/jquery.knob.min.js')}}"></script> --}}
<!-- daterangepicker -->
<script src="{{asset('js/moment.min.js')}}"></script>
{{-- <script src="{{asset('bower_components/bootstrap-daterangepicker/daterangepicker.js')}}"></script> --}}
<!-- datepicker -->
{{-- <script src="{{asset('bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js')}}"></script> --}}
<!-- Bootstrap WYSIHTML5 -->
{{-- <script src="{{asset('plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js')}}"></script> --}}
<!-- Slimscroll -->
{{-- <script src="{{asset('bower_components/jquery-slimscroll/jquery.slimscroll.min.js')}}"></script> --}}
<!-- FastClick -->
{{-- <script src="{{asset('bower_components/fastclick/lib/fastclick.js')}}"></script> --}}
<!-- AdminLTE App -->
<script src="{{asset('dist/js/adminlte.min.js')}}"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
{{-- <!-- <script src="{{asset('dist/js/pages/dashboard.js')}}"></script> --> --}}
<!-- AdminLTE for demo purposes -->
<script src="{{asset('dist/js/demo.js')}}"></script>
<script src="{{ asset('vuetify/js/vuetify.min.js') }}"></script>
<script src="{{ asset('vuetify/js/vuetify.js') }}"></script>
<!-- DataTables -->
<script src="{{asset('table/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('js/dataTables.bootstrap.min.js')}}"></script>

<!-- fullCalendar -->
{{-- <script src="../bower_components/moment/moment.js"></script> --}}
{{-- <script src="../bower_components/fullcalendar/dist/fullcalendar.min.js"></script> --}}
<!-- date-range-picker -->
{{-- <script src="../../bower_components/moment/min/moment.min.js"></script> --}}
{{-- <script src="../../bower_components/bootstrap-daterangepicker/daterangepicker.js"></script> --}}
<!-- bootstrap datepicker -->
{{-- <script src="../../bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script> --}}
<!-- bootstrap color picker -->
{{-- <script src="../../bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script> --}}
<!-- bootstrap time picker -->
{{-- <script src="../../plugins/timepicker/bootstrap-timepicker.min.js"></script> --}}
{{--< script src="{{ asset('materialize-css/js/materialize.min.js') }}"></script>
<script src="{{ URL::asset('init.js') }}"></script> --}}
{{-- <script>
  $(document).ready(function () {
    $('.sidebar-menu').tree()
  })
</script>
 --}}
<script>
  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>
</body>
</html>

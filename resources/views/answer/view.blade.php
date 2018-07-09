@extends('layouts.survey')

@section('content')
<h4>{{ $survey->title }}</h4>
{{-- <table class="bordered striped">
  <thead>
    <tr>
        <th data-field="id">Question</th>
        <th data-field="name">Answer(s)</th>
    </tr>
  </thead>

  <tbody>
    @forelse ($survey->questions as $item)
    <tr>
      <td>{{ $item->title }}</td>
      @foreach ($item->answers as $answer)
        <td>{{ $answer->answer }} <br/>
        <small>{{ $answer->created_at }}</small></td>
      @endforeach
    </tr>
    @empty
      <tr>
        <td>
          No answers provided by you for this Survey
        </td>
        <td></td>
      </tr>
    @endforelse
  </tbody>
</table> --}}
<div class="collection">
  @forelse ($survey->questions as $item)
  <a href="#!" class="collection-item" style="background: #eeeed0;">Question</a>
  <a href="#!" class="collection-item active">{{ $item->title }}</a>
  <a href="#!" class="collection-item" style="background: #eee;">Answers</a>
  @foreach ($item->answers as $answer)
  <ol class="collection-item"><a href="#!" class="collection-item">{{ $answer->answer }}</a></ol class="collection-item">
  @endforeach
  @empty
  <a href="#!" class="collection-item">No answers provided by you for this Survey</a>
  @endforelse
</div>
@endsection 

{{-- <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('table/datatables/css/jquery.dataTables.min.css') }}" rel="stylesheet">
    <link href="{{ asset('table/datatables/css/dataTables.bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('materialize-css/css/materialize.min.css') }}" rel="stylesheet">            
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
  <div class="container">
    <h4>{{ $survey->title }}</h4>
  <table class="table table-stripped table-hover" id="datatable">
    <thead>
      <tr>
      <th data-field="id">Question</th>
      <th data-field="name">Answer(s)</th>
    </tr>
    </thead>
    <tbody>
      @forelse ($survey->questions as $item)
      <tr>
        <td>this</td>
       
          <td>
        <tr>
        @foreach ($item->answers as $answer)
          <td>{{ $answer->answer }} <br/>
          <small>{{ $answer->created_at }}</small></td>
        @endforeach
      </tr>
      </td>
      </tr>
      @empty
        <tr>
          <td>
            No answers provided by you for this Survey
          </td>
          <td></td>
        </tr>
      @endforelse      
    </tbody>
  </table>
  </div>
<script src="{{ asset('js/jquery3.min.js') }}"></script>
<script src="{{ asset('table/datatables/js/dataTables.bootstrap.min.js') }}"></script>
<script src="{{ asset('table/datatables/js/jquery.dataTables.min.js') }}"></script>
    {{-- {!! MaterializeCSS::include_js() !!} --}}

    <script src="{{ asset('materialize-css/js/materialize.min.js') }}"></script>
    <script src="{{ URL::asset('init.js') }}"></script>
<script>
  $('#datatable').dataTable();
</script>
</body>
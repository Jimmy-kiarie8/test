{{-- <!DOCTYPE html>
<html lang="en">
<head><title>{{ config('app.name', 'Laravel') }}</title>
<link href="{{ asset('css/completedTasks.css') }}" rel="stylesheet">
<link href="{{ asset('css/app.css') }}" rel="stylesheet">
<script src="{{ asset('js/bootstrap.min.js') }}"></script>
<script src="{{ asset('js/jquery3.min.js') }}"></script>
<script src="{{ asset('js/completedTasks.js') }}"></script>
</head>
<body>
<div class="container">
    <h6><a href="http://eboard2.dev/home#/" style="text-decoration: none">Document upload</a>>category</h6>
    <hr>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card card-primary filterable"">
                <div class="card-header text-center">
                <div class="pull-right">
                    <button class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span> Filter</button>
                </div>
            </div>
            <table class="table">
                <thead>
                    <tr class="filters">
                        <th><input type="text" class="form-control" placeholder="Name" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Sub Category" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Uploaded" disabled></th>
                        <th><input type="text" class="form-control" placeholder="#" disabled></th>
                    </tr>
                </thead>
                <tbody>
                  <tr>
                    @foreach($docs as $doc)
                      @foreach($subcats as $key => $value)
                        <tr class="filters">
                              @if(in_array(auth()->user()->id, $value->users_id) || $doc->user_id == Auth::id())

                                @if ($value->id == $doc->sub_cat)
                                <td>{{$doc->name}}</td>
                                <td>{{$value->title}}</td>
                                <td>{{$doc->updated_at->diffForhumans()}}</td>
                                <td>
                                  <a href="/{{$doc->path}}"> <i class="fa fa-download" style="color: #00f; font-size: 20px;">Download</i>
                                  </a>
                                </td>
                              @endif
                              
                              @endif    
                        </tr>         
                      @endforeach      
                    @endforeach
                  </tr>
                </tbody>
            </table>
            {{ $docs->links() }}
        </div>
    </div>
</div>
</div>
</body>
</html> --}}
{{-- @extends('layouts.table')

@section('content')
<table class="table" id="datatable">
    <thead>
        <tr class="filters">
            <th><input type="text" class="form-control" placeholder="Name" disabled></th>
            <th><input type="text" class="form-control" placeholder="Sub Category" disabled></th>
            <th><input type="text" class="form-control" placeholder="Uploaded" disabled></th>
            <th><input type="text" class="form-control" placeholder="#" disabled></th>
        </tr>
    </thead>
    <tbody>
      <tr>
        @foreach($docs as $doc)
          @foreach($subcats as $key => $value)
            <tr class="filters">
                  @if(in_array(auth()->user()->id, $value->users_id) || $doc->user_id == Auth::id())

                    @if ($value->id == $doc->sub_cat)
                    <td>{{$doc->name}}</td>
                    <td>{{$value->title}}</td>
                    <td>{{$doc->updated_at->diffForhumans()}}</td>
                    <td>
                      <a href="/{{$doc->path}}"> <i class="fa fa-download" style="color: #00f; font-size: 20px;">Download</i>
                      </a>
                    </td>
                  @endif
                  
                  @endif    
            </tr>         
          @endforeach      
        @endforeach
      </tr>
    </tbody>
</table>
@endsection --}}
@extends('layouts.table')

@section('content')

<myheader :user="{{ Auth::user() }}"></myheader>
<v-content>
  <v-container fluid fill-height>
    <v-layout justify-center align-center>
      <table class="table table-stripped table-hover" id="datatable">
        <thead>
          <th>Name</th>
          <th>Sub Category</th>
          <th>Uploaded</th>
          <th>#</th>
        </thead>
        <tbody>
          @foreach($docs as $doc)
            @foreach($subcats as $key => $value)
              @if(in_array(auth()->user()->id, $value->users_id) || $doc->user_id == Auth::id())
                @if ($value->id == $doc->sub_cat)
                  <tr>
                    <td>{{$doc->name}}</td>
                    <td>{{$value->title}}</td>
                    <td>{{$doc->updated_at->diffForhumans()}}</td>
                    <td>
                      <a href="/{{$doc->path}}"> <i class="fa fa-download" style="color: #00f; font-size: 20px;"></i>
                      </a>
                    </td>                
                  </tr>   
              @endif
             @endif        
            @endforeach  
          @endforeach  
          
        </tbody>
      </table>
    </v-layout>
  </v-container>
</v-content>

@endsection
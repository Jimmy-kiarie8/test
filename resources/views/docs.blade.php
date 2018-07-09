@extends('layouts.app')

@section('content')
@guest
<div class="jumbotron text-center">
  <a class="btn btn-primary" href="{{ route('login') }}">Login</a>
  <a class="btn btn-success" href="{{ route('register') }}">Register</a>
</div>
    
@else
<myheader :user="{{ Auth::user() }}"></myheader>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header text-center">
                    File Upload page
                    <a href="/" class="btn btn-primary pull-right">Back</a>
                </div>
                <div class="card-body">
                  <a class="btn btn-primary" href="{{ route('logout') }}"
                     onclick="event.preventDefault();
                                   document.getElementById('logout-form').submit();">
                      Logout
                  </a>
                  <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                      @csrf
                  </form>

                        <section class="content">
                    <div class="row">
                      <div class="col-xs-12">
                        <div class="box">
                          <div class="box-header">
                            <h3 class="box-title">Docs</h3>
                          </div>
                          <!-- /.box-header -->
                          <div class="box-body">
                            <table id="example1" class="table table-bordered table-striped table-hover">
                              <table class="table table-hover table-striped table-condenced">
                                <thead>
                                  <th>Name</th>
                                  <th>Category</th>
                                  <th>Action</th>
                                  <th></th>
                                </thead>
                                <tbody>
                                @foreach($docs as $doc)
                                    <tr>
                                      @foreach($category as $cat)
                                        @if(
                                          Auth::user()->credentials == 'directors' && $cat->directors == 1 ||
                                          Auth::user()->credentials == 'shareholders' && $cat->shareholders == 1 ||
                                          Auth::user()->credentials == 'managers' && $cat->managers == 1 ||
                                          Auth::user()->credentials == 'employees' && $cat->employees == 1
                                          )
                                          @if($cat->id == $doc->category_id)
                                            <td>{{$doc->name}}</td>
                                                <td>{{$cat->name}}</td>
                                            <td><a href="/{{$doc->path}}"> <i class="fa fa-download" style="color: #00f; font-size: 20px;"></i></a></td>
                                            <td></td>
                                          @endif             
                                        @endif             
                                      @endforeach         
                                    </tr>
                                @endforeach
                                </tbody>
                              </table>
                            </table>
                            {{ $docs->appends(['sort' => 'category_id'])->links() }}
                          </div>
                          <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                      </div>
                      <!-- /.col -->
                    </div>
                    <!-- /.row -->
                  </section>
                  
                </div>
                <div class="card-footer"></div>
                @endguest
            </div>
        </div>
    </div>
</div>
@endsection
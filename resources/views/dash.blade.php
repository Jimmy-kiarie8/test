@extends('layouts.app')

@section('content')
@guest

<div class="alert alert-success">
 {{ session('status') }} logged out
</div>
@else
<v-content>
  <v-container fluid fill-height>
    <v-layout justify-center align-center>
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-6">
            <div class="card card-default">

              <div class="card-body">
               <myheader :user="{{ Auth::user() }}"></myheader>
               <div class="card-header">Welcome {{ Auth::user()->name }}</div>
               <img src="{{ Auth::user()->profile }}" style="width: 40%; height: 200px;">
               {{-- {{ session('status') }} logged in --}}
             </div>
           </div>
         </div>
       </div>
     </div>
   </v-layout>
 </v-container>
</v-content>
@endguest
@endsection
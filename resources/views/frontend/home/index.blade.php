@extends('layout.frontend')

@section('extra-css')
  <link href="{{ URL('public/css/signin.css') }}" rel="stylesheet">
@endsection

@section('content')
  <form class="form-signin text-center" action='{{URL("/signin")}}' method="POST">
      {{ csrf_field() }}
      <img class="mb-4" src="{{ url('public/img/logo.png') }}" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
      <label for="inputUsername" class="sr-only">Username</label>
      <input type="text" name="username" id="inputUsername" class="form-control" placeholder="Username" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      <p class="mt-5 mb-3 text-muted">&copy; 2019</p>
  </form>
@endsection

@section('extra-js')
<script>
 
</script>
@endsection
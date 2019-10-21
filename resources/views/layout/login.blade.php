<!DOCTYPE html>
<html>
<head>
	@include('backend.includes.head')

	@yield('extra-css')

</head>	
<body class="hold-transition skin-blue layout-top-nav">
<div class="login-wrapper">

		@yield('content')


</div>

	@include('backend.includes.foot')
	
	@yield('extra-js')

</body>
</html>

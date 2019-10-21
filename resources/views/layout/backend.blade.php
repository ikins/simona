<!DOCTYPE html>
<html>
<head>
	@include('backend.include.head')

	@yield('extra-css')

</head>	
<body>

	<!-- header -->
	@include('backend.include.header')

	@yield('content')
	
	@yield('extra-js')

</body>
	
	@include('backend.include.foot')

</html>
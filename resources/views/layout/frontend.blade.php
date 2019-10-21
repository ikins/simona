<!DOCTYPE html>
<html>
<head>
	@include('frontend.include.head')

	@yield('extra-css')

</head>	
<body>

	@yield('content')
	
	@yield('extra-js')

</body>
</html>

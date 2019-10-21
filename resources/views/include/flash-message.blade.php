
@if ($message = Session::get('success'))
    <div class="alert alert-info alert-dismissible">
        <a href="#" class="close" data-dismiss="alert" aria-label="close"></a>
        <strong>{{$message}}</strong>
    </div>
@endif

@if ($message = Session::get('error'))
    <div class="alert alert-danger alert-dismissible">
        <a href="#" class="close" data-dismiss="alert" aria-label="close"></a>
        <strong>{{$message}}</strong>
    </div>
@endif

@if ($message = Session::get('warning'))
    <div class="alert alert-warning alert-block">
    	<button type="button" class="close" data-dismiss="alert"></button>	
    	<strong>{{ $message }}</strong>
    </div>
@endif

@if ($message = Session::get('info'))
    <div class="alert alert-info alert-block nobg text-success">
        <button type="button" class="close" data-dismiss="alert"></button>  
        <strong>{{ $message }}</strong>
    </div>
@endif

@if ($message = Session::get('error-subs'))
<div class="nobg-subs">
    <strong><i class="fa fa-close"></i> {{ $message }}</strong>
</div>
@endif

@if ($message = Session::get('success-subs'))
    <div class="nobg-subs">
        <strong><i class="fa fa-check"></i> {{ $message }}</strong>
    </div>
@endif

@if ($errors->any())
    <div class="alert alert-danger nobg">
    	<button type="button" class="close" data-dismiss="alert"></button>	
    	Please check the form below for errors
    </div>
@endif
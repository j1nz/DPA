<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!-- search form -->
<form action="#" method="get" class="form-inline" role="form">
  <div class="input-group">
    <input type="text" name="search" class="form-control" placeholder="Search...">
        <span class="input-group-btn">
          <button type="submit" name="search" id="search-btn" class="btn btn-flat">  
          <i class="fa fa-search"></i>
          </button>
        </span>
  </div>
</form>
<ul class="list-unstyled">
	<li class="header" style="color: RED" ><h4>MANAGEMENT</h4></li>
	<li class="active">
		<a href="#">
			<i class="fa fa-dashboard"></i>
			<span>ACCOUNT</span>
	  	</a>
	</li>
	
	<li class="dropdown active">

    	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
    		<i class="fa fa-files-o"></i>
			<span>PETS</span>
			<b class="caret"></b>
		</a>

		<ul class="dropdown-menu list-unstyled">
			<li><a href="ShowListPet"><i class="fa fa-circle-o"></i> LIST PET</a></li>
			<li><a href="ShowAddPet"><i class="fa fa-circle-o"></i> ADD PET</a></li>
		</ul>
	</li>
	
	<li class="dropdown">
		<a href="#" class="dropdown-toggle" data-toggle="dropdown">
			
			<i class="fa fa-table"></i>
			<span>DONATE</span>
			<b class="caret"></b>
		</a>
		<ul class="dropdown-menu list-unstyled">
			<li><a href="#"><i class="fa fa-circle-o"></i> SHOW DONATE</a></li>
			<li><a href="#"><i class="fa fa-circle-o"></i> ADD DONATE</a></li>
		</ul>
	</li>
	
	
	<li class="dropdown">
		<a href="#" class="dropdown-toggle" data-toggle="dropdown">
			<i class="fa fa-laptop"></i>
			<span>RECEIVED</span>
			<b class="caret"></b>
		</a>
		<ul class="dropdown-menu list-unstyled">
			<li><a href="#"><i class="fa fa-circle-o"></i> SHOW RECEIVED</a></li>
			<li><a href="#"><i class="fa fa-circle-o"></i> ADD RECEIVED</a></li>
		</ul>
	</li>
	
	<li class="dropdown">
	  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
	    <i class="fa fa-edit"></i> <span>PRODUCT</span>
	    <b class="caret"></b>
	  </a>
	  <ul class="dropdown-menu list-unstyled">
	    <li><a href="#"><i class="fa fa-circle-o"></i> SHOW PRODUCT</a></li>
	    <li><a href="#"><i class="fa fa-circle-o"></i> NHẬP HÀNG</a></li>
	  </ul>
	</li>
	<li class="dropdown" >
	  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
	    <i class="fa fa-pie-chart"></i> <span>ANALIST DATA</span>
	    <b class="caret"></b>
	  </a>
	  <ul class="dropdown-menu list-unstyled">
	    <li><a href="#"><i class="fa fa-circle-o"></i> Simple tables</a></li>
	    <li><a href="#"><i class="fa fa-circle-o"></i> Data tables</a></li>
	  </ul>
	</li>
	<li class="header" style="color:red"><h4>OPTION</h4></li>
	<li><a href="#"><i class="fa fa-circle-o text-red"></i> <span> UPDATE PROFILE</span></a></li>
	<li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span> SETTING</span></a></li>
	<li><a href="LogoutServlet"><i class="fa fa-circle-o text-aqua"></i> <span> LOGOUT</span></a></li>
</ul>

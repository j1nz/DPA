<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css" >
	<!--FONT-AWESOME CSS-->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
	
	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
	    <div class="container">
	        <!-- Nav -->
	        <div class="navbar-header">
	            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
	                <span class="sr-only">Toggle navigation</span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	            </button>
	            <a class="navbar-brand" href="Welcome">DPA</a>
	        </div>
	        <!-- Nav collapse -->
	        <div class="collapse navbar-collapse" id="menu">
	           <ul class="nav navbar-nav">
					<li><a href="Home">Home</a></li>
					<li class="dropdown active"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Product<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Food</a></li>
							<li><a href="#">Shampoo</a></li>
							<li class="divider"></li>
							<li><a href="#">All Product</a></li>
						</ul>
					</li>
					<li><a href="#">Health Care</a></li>
					<li><a href="#">Donate Pet</a></li>
					<li><a href="Contact">Contact</a></li>
					<li><a href="About">About us</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right" style="margin-right:10px">
					<%if(session.getAttribute("username") != null){%>
	                	<li><b style="color: red">Hello <%=session.getAttribute("username") %></b>
						<img class="img-circle"
							 src="https://freeiconshop.com/files/edd/person-flat.png"
							 style="height: 50px; width: 50px; padding: 5px;">
						</li>
						<li class="dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"><b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Profile</a></li>
								<li><a href="ShowManagement">Management</a></li>
								<li><a href="#">Notification</a></li>
								<li class="divider"></li>
								<li><a href="LogoutServlet">Logout</a></li>
								
							</ul>
						</li>
	            	<%} else {%>
	            		<button class="btn btn-danger navbar-btn">Register</button>
	                	<a href="ShowLoginServlet" class="btn btn-info navbar-btn>Login">Login</a>
	            	<%} %>
				</ul>
	 
	        </div>
	        <!-- /.navbar-collapse -->
	    </div>
	    <!-- /.container -->
	</nav>
<!-- /Navigation -->
</head>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<link rel="stylesheet" href="content/css/bootstrap.min.css">
	<link rel="stylesheet" href="content/css/style.css" >
	<script src="content/js/jquery.min.js"></script>
	<script src="content/js/bootstrap.min.js"></script>
	
	
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
	            <a class="navbar-brand" href="#">DPA Web Application</a>
	        </div>
	        <!-- Nav collapse -->
	        <div class="collapse navbar-collapse" id="menu">
	            <ul class="nav navbar-nav">
	                <li>
	                    <a href="#">Giới Thiệu</a>
	                </li>
	                <li>
	                    <a href="#">Tin Tức</a>
	                </li>
	                <li>
	                    <a href="#">Liên Hệ</a>
	                </li>
	            </ul>
	 
	            <div class="navbar-right">
	            	<%if(session.getAttribute("username") != null){%>
	                	<button class="btn btn-danger navbar-btn">Welcome</button>
	            	<%} else {%>
	            		<button class="btn btn-danger navbar-btn">Register</button>
	                	<a href="ShowLoginServlet" class="btn btn-info navbar-btn>Login">Login</a>
	            	<%} %>
	                
	            </div>
	        </div>
	        <!-- /.navbar-collapse -->
	    </div>
	    <!-- /.container -->
	</nav>
<!-- /Navigation -->
</head>



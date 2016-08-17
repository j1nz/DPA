<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="css/style.css" >
	
	<script src="js/jquery.min.js"></script>

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
	            		<nav class="main-nav">
						  	<ul>
						    	<li><a class="signin" href="#0">Sign in</a></li>
						    	<li><a class="signup" href="#0">Sign up</a></li>
						  	</ul>
						</nav>
	            	<%} %>
				</ul>
	 
	        </div>
	        <!-- /.navbar-collapse -->
	    </div>
	    <!-- /.container -->
	</nav>
	<!-- /Navigation -->
	
	
	
	<!-- popup sign in -->
	<div class="user-modal">
	      <div class="user-modal-container">
	      <ul class="switcher">
	        <li><a href="#0">Sign in</a></li>
	        <li><a href="#0">New account</a></li>
	      </ul>
	
	      <div id="login">
	        <form class="form" action="LoginServlet" method="POST">
	        	<p class="fieldset">
	        		<label><%if(request.getAttribute("message") != null){ %>
						<div class="panel panel-default">
							<div class="panel-body">
								<%=request.getAttribute("message") %>
							</div>
						</div>
					<%}%></label>
	        	</p>
	          <p class="fieldset">
	            <label class="image-replace email" for="signin-email">E-mail</label>
	            <input class="full-width has-padding has-border" id="username" type="text" placeholder="E-mail">
	            <span class="error-message">An account with this email address does not exist!</span>
	          </p>
	
	          <p class="fieldset">
	            <label class="image-replace password" for="signin-password">Password</label>
	            <input class="full-width has-padding has-border" id="password" type="password"  placeholder="Password">
	            <a href="#0" class="hide-password">Show</a>
	            <span class="error-message">Wrong password! Try again.</span>
	          </p>
	
	          <p class="fieldset">
	            <input type="checkbox" id="remember-me" checked>
	            <label for="remember-me">Remember me</label>
	          </p>
	
	          <p class="fieldset">
	            <input class="full-width" type="submit" value="Login">
	          </p>
	        </form>
	        
	        <p class="form-bottom-message"><a href="#0">Forgot your password?</a></p>
	        <!-- <a href="#0" class="close-form">Close</a> -->
	      </div>
	
	      <div id="signup">
	        <form class="form">
	          <p class="fieldset">
	            <label class="image-replace username" for="signup-username">Username</label>
	            <input class="full-width has-padding has-border" id="signup-username" type="text" placeholder="Username">
	            <span class="error-message">Your username can only contain numeric and alphabetic symbols!</span>
	          </p>
	
	          <p class="fieldset">
	            <label class="image-replace email" for="signup-email">E-mail</label>
	            <input class="full-width has-padding has-border" id="signup-email" type="email" placeholder="E-mail">
	            <span class="error-message">Enter a valid email address!</span>
	          </p>
	
	          <p class="fieldset">
	            <label class="image-replace password" for="signup-password">Password</label>
	            <input class="full-width has-padding has-border" id="signup-password" type="password"  placeholder="Password">
	            <a href="#0" class="hide-password">Show</a>
	            <span class="error-message">Your password has to be at least 6 characters long!</span>
	          </p>
	
	          <p class="fieldset">
	            <input type="checkbox" id="accept-terms">
	            <label for="accept-terms">I agree to the <a class="accept-terms" href="#0">Terms</a></label>
	          </p>
	
	          <p class="fieldset">
	            <input class="full-width has-padding" type="submit" value="Create account">
	          </p>
	        </form>
	
	        <!-- <a href="#0" class="cd-close-form">Close</a> -->
	      </div>
	
	      <div id="reset-password">
	        <p class="form-message">Lost your password? Please enter your email address.</br> You will receive a link to create a new password.</p>
	
	        <form class="form">
	          <p class="fieldset">
	            <label class="image-replace email" for="reset-email">E-mail</label>
	            <input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
	            <span class="error-message">An account with this email does not exist!</span>
	          </p>
	
	          <p class="fieldset">
	            <input class="full-width has-padding" type="submit" value="Reset password">
	          </p>
	        </form>
	
	        <p class="form-bottom-message"><a href="#0">Back to log-in</a></p>
	      </div>
	      <a href="#0" class="close-form">Close</a>
	    </div>
	  </div>
	<!-- /Popup -->
</head>



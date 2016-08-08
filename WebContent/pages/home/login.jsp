<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<link rel="stylesheet" href="../../content/css/bootstrap.min.css">
	<link rel="stylesheet" href="../../content/css/style.css" >
	<script src="../../content/js/jquery.min.js"></script>
	<script src="../../content/js/bootstrap.min.js"></script>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="">
	<jsp:include page="/views/shared/_header.jsp"></jsp:include>
	
	
	<style type="text/css" >
		table {
     		border-spacing: 10px;
		}
	</style>

<body>
	
	<div id="main">
		
		<div id="left">
			
		</div>
		<div id="content">
			
			<form class="form-horizontal" role="form" action="LoginServlet" method="POST">
				<div class="panel panel-default">
					<div class="panel-body">
						<%if(session.getAttribute("message") != null){ %>
							<%=session.getAttribute("message") %>
						<%}%>
					</div>
				</div>
			  	<div class="form-group">
			    	<label class="control-label col-sm-2" for="email">User:</label>
			    	<div class="col-sm-10">
			      		<input type="text" class="form-control" name="username" placeholder="Enter username">
			    	</div>
			  	</div>
			  	<div class="form-group">
				    <label class="control-label col-sm-2" for="pwd">Password:</label>
				    <div class="col-sm-10"> 
				      	<input type="password" class="form-control" name="password" placeholder="Enter password">
				    </div>
			  	</div>
				<div class="form-group"> 
				   	<div class="col-sm-offset-2 col-sm-10">
				      <div class="checkbox">
				        <label><input type="checkbox"> Remember me</label>
				      </div>
				    </div>
				  </div>
				  <div class="form-group"> 
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-default">Submit</button>
				    </div>
				  </div>
			</form>
		</div>
		<div id="right">
			
		</div>
		
	
	
</body>
<div id="footer">
			<jsp:include page="/views/shared/_footer.jsp"></jsp:include>
		</div>
	</div>
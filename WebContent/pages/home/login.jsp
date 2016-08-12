<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<link rel="stylesheet" href="../../css/bootstrap.min.css">
	<link rel="stylesheet" href="../../css/style.css" >
	<script src="../../js/jquery.min.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>

	
<jsp:include page="/views/shared/_header.jsp"></jsp:include>

<body style="padding-top: 70px;">
	<div class="container">
		<div class="row">
			<div class="col-xs-3 col-md-2">
				<jsp:include page="/views/shared/_menu-left.jsp"></jsp:include>
			</div>
			<div class="col-xs-9 col-md-10">
				<%if(request.getAttribute("message") != null){ %>
						<div class="panel panel-default">
							<div class="panel-body">
								<%=request.getAttribute("message") %>
							</div>
						</div>
					<%}%>
				<form class="form-horizontal" role="form" action="LoginServlet" method="POST">
					
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

		</div>
	</div>
</body>
<jsp:include page="/views/shared/_footer.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<link rel="stylesheet" href="../../content/css/bootstrap.min.css">
<link rel="stylesheet" href="../../content/css/style.css" >
<!--FONT-AWESOME CSS-->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
<script src="../../content/js/jquery.min.js"></script>
<script src="../../content/js/bootstrap.min.js"></script>
<jsp:include page="/views/shared/_header.jsp"></jsp:include>
<jsp:include page="/views/shared/_menu-left.jsp"></jsp:include>

<div class="col-sm-9 col-sm-offset-2 col-md-10 col-md-offset-2">
	<div class="marketing" style="text-align: center;">
		<div class="row">
			<%for(int i = 0; i < 9; i++) { %>
				<div class="col-lg-3">
					<img src="http://coachtempleton.com/wp-content/uploads/2015/02/book-260x300.png">
					<h4>Product</h4>
					<p><a class="btn btn-default" href="#" role="button">View Details</a></p>
				</div>
			<%} %>
		</div>
	</div>
</div>

<jsp:include page="/views/shared/_footer.jsp"></jsp:include>
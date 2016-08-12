<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/views/shared/_header.jsp"></jsp:include>

<body style="padding-top: 70px;">
	<div class="container">
	<div class="row">
		<div class="col-xs-4 col-md-3">
			<jsp:include page="/views/shared/_menu-left-admin.jsp"></jsp:include>
		</div>
		<div class="col-xs-8 col-md-9">
			Hello <%=session.getAttribute("username") %></br>
			You are <%=session.getAttribute("role") %></br>
			</br>
			
			<a href="ShowListPet" >List Pet</a>
		</div>

	</div>
</body>
<jsp:include page="/views/shared/_footer.jsp"></jsp:include>
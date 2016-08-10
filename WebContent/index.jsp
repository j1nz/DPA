<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<body>
	<jsp:include page="/views/shared/_header.jsp"></jsp:include>
	<div id="main">
		
		<jsp:include page="/views/shared/_menu-left.jsp"></jsp:include>
		<div id="content">
			Welcome to my site <a href="ShowLoginServlet" >Login</a>
		</div>
		<div id="right">
			
		</div>

</body>
	<div id="footer">
			<jsp:include page="/views/shared/_footer.jsp"></jsp:include>
		</div>
	</div>
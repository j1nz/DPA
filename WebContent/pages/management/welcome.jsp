<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/views/shared/_header.jsp"></jsp:include>
<body>
	<div id="main">
		
		<jsp:include page="/views/shared/_menu-left.jsp"></jsp:include>
		<div id="content">
			Hello <%=session.getAttribute("username") %></br>
			You are <%=session.getAttribute("role") %></br>
			
			

			</br>
			
			<a href="ShowListPet" >List Pet</a>
			
		</div>
		<div id="right">
			
		</div>
		
	
</body>
	<div id="footer">
		<jsp:include page="/views/shared/_footer.jsp"></jsp:include>
	</div>
</div>
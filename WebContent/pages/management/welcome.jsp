<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/views/shared/_header.jsp"></jsp:include>
<body>
	<div id="main">
		
		<div id="left">
			
		</div>
		<div id="content">
			Hello <%=session.getAttribute("username") %></br>
			You are <%=session.getAttribute("role") %></br>
			
			<form action="ShowLoginServlet">
				<button value="logout" name="logout" class="btn btn-danger navbar-btn">Logout</button>
			</form>

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
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
			<form action="LoginServlet" method="POST" accept-charset="utf-8">
				<table>
					<tr>
						<th colspan="2">
							<%if(session.getAttribute("message") != null){ %>
								<%=session.getAttribute("message") %>
							<%}%>
						</th>
					</tr>
					<tr>
						<td>Username:</td>
						<td><input type="text" name="username" placeholder="your username" required /></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type="password" name="password" placeholder="your password" required /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="checkbox" name="rememberUsername" />Remember username</td>
					</tr>
		
					<tr>
						<td></td>
						<td align="right"><button type="submit">Login</button></td>
					</tr>
				</table>
				
			</form>
		</div>
		<div id="right">
			
		</div>
		
	
	
</body>
<div id="footer">
			<jsp:include page="/views/shared/_footer.jsp"></jsp:include>
		</div>
	</div>
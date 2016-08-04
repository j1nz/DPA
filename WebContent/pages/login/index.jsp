<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="">

	<style type="text/css" >
		table {
     		border-spacing: 10px;
		}
	</style>
</head>
<body>
	
	<form action="LoginServlet" method="POST" accept-charset="utf-8">
		<table>
			<tr>
				<th colspan="2">
					<%if(request.getAttribute("message") != null){ %>
						<%=request.getAttribute("message") %>
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
</body>
</html>
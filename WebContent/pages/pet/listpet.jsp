<%@page import="internship.fpt.dpa.model.bean.Pet"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/views/shared/_header.jsp"></jsp:include>
<body>
	<div id="main">
		
		<div id="left">
			
		</div>
		<div id="content">
			Danh Sach Thu Cung
			
			<%
				List<Pet> list = (List) request.getAttribute("listPet");%>
				
				<table border="1">
					<tr>
						<th>ID</th>
						<th>Tên</th>
						<th>Avatar</th>
						<th>Tuổi</th>
						<th>Giống Loại</th>
						<th>NickName</th>
						<th>Sức Khỏe</th>
						<th>Trạng Thái</th>
						<th>Donate ID</th>
						<th>Người Nhận Nuôi</th>
						<th>Ngày Donate</th>
						<th>Tháng Donate</th>
						<th>Năm Donate</th>
						
						<th colspan="3">Tùy chỉnh</th>
					</tr>
				<%
				
				for(Pet p : list){						
				%>
					<tr>
						<td><%=p.getPetID() %></td>
						<td><%=p.getPetName() %></td>
						<td><img width="50px" src="<%=p.getAvatar()%>" alt="<%=p.getPetName() %>"></td>
						<td><%=p.getAge() %></td>
						<td><%=p.getPetTypeID()%></td>
						<td><%=p.getNickname()%></td>
						<td><%=p.getHealthID()%></td>
						<td><%=p.getUsername()%></td>
						<td><%=p.getDonateID()%></td>
						<td><%=p.getDayReceived()%></td>
						<td><%=p.getMonthReceived()%></td>
						<td><%=p.getYearReceived()%></td>
						<td><a href="" target="_blank">Sửa</a></td>
						<td><a href="">Xóa</a></td>
					</tr>
				<%
				}%>
					
						
					
				</table>
				<a href="ShowAddPet" class="btn btn-danger navbar-btn">Add</a>
			
		</div>
		<div id="right">
			
		</div>
		
	
</body>
	<div id="footer">
		<jsp:include page="/views/shared/_footer.jsp"></jsp:include>
	</div>
</div>
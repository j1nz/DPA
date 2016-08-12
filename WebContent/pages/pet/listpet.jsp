<%@page import="internship.fpt.dpa.model.bean.Pet"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/views/shared/_header.jsp"></jsp:include>

<body style="padding-top: 70px;">
	<div class="container">
	<div class="row">
		<div class="col-xs-3 col-md-2">
			<jsp:include page="/views/shared/_menu-left-admin.jsp"></jsp:include>
		</div>
		<div class="col-xs-9 col-md-10">
			<h2 style="color: red">Danh Sach Thu Cung</h2>
			
			<%List<Pet> list = (List) request.getAttribute("listPet");%>
			
			<a href="ShowAddPet" class="btn btn-danger navbar-btn">Add</a>
			<div class="table-responsive">
				<table class="table table-hover">
		            <thead>
		            <tr>
		                <th>#</th>
						<th>Name</th>
						<th>Avatar</th>
						<th>Age</th>
						<th>Type</th>
						<th>NickName</th>
						<th>Health</th>
						<th>Status</th>
						<th>DonateID</th>
						<th>Adoption</th>
						<th>Date Donate</th>
						
						
						<th colspan="2">Option</th>
		            </tr>
		            </thead>
		            <tbody>
			            <%for(Pet p : list){%>
						<tr>
							<td><%=p.getPetID() %></td>
							<td><%=p.getPetName() %></td>
							<td><img width="50px" src="<%=p.getAvatar()%>" alt=""></td>
							<td><%=p.getAge() %></td>
							<td><%=p.getPetTypeID()%></td>
							<td><%=p.getNickname()%></td>
							<td><%=p.getHealthID()%></td>
							<td><%=p.getStatus()%></td>
							<td><%=p.getDonateID()%></td>
							<td><%=p.getUsername() %></td>
							<td><%=p.getDateReceived()%></td>
							
							<td><a href="" target="_blank"><span class="glyphicon glyphicon-edit"></span></a></td>
							<td><a href=""><span class="glyphicon glyphicon-trash"></span></a></td>
						</tr>
						<%}%>
		            </tbody>
		        </table>	
			</div>
			
		</div>

	</div>
</body>
<jsp:include page="/views/shared/_footer.jsp"></jsp:include>
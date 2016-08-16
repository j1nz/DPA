<%@page import="internship.fpt.dpa.model.bean.Pet"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/views/shared/_header.jsp"></jsp:include>

<body style="padding-top: 70px;">
	<div class="container">
	<div class="row">
		<div class="col-xs-3 col-md-2">
			<jsp:include page="/views/shared/_menu-left.jsp"></jsp:include>
		</div>
		<div class="col-xs-9 col-md-10">
			<div class="row">
				<div class="col-lg-12" style="padding-bottom: 7px;">
					Sap xep trang thai
				</div>
			</div>
			
			
			<%
			List<Pet> l = (List) request.getAttribute("listPet");
			
			int start, end, pages;
			int limit = l.size() / 9;
			
			if (limit * 9 < l.size()) {
				limit += 1;
			}
			%>	
			
			<div class="marketing" style="text-align: center;">
				<div class="row">
					
				
					<%for(Pet p : l) { %>
						<div class="col-lg-3">
							<img width="200px" height="200px" src="<%=p.getAvatar()%>">
							<h4 class="text-center"><strong><%=p.getPetName() %></strong></h4>
							<p><a class="btn btn-default" href="#" role="button">View Details</a></p>
						</div>
					<%} %>
				</div>
			</div>
			
			<div class="row text-center">
	    		<div class="col-lg-12">
					<ul class="pagination">
						<li>
                            <a href="#"  onclick="history.go(-1);">&laquo;</a>
                        </li>
			<%
			for (pages = 1; pages <= limit; pages++) {
				start = (pages - 1) * 9;
				end = pages * 9;
			if (end > l.size()) {
				end = l.size();
			} %>
						<li>
							<a href="Home?start=<%=start%>&end=<%=end%>" class="active"><%=pages %></a>
						</li>
			<% } %>
					
						<li>
                           <a href="#">&raquo;</a>
                       </li>
					</ul>
				</div>
			</div>
			
		</div>

	</div>
</body>
<jsp:include page="/views/shared/_footer.jsp"></jsp:include>
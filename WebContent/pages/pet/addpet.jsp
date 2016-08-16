<%@page import="internship.fpt.dpa.model.bean.Health"%>
<%@page import="internship.fpt.dpa.model.bean.PetType"%>
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
			<h2 style="color: red">Add Pets</h2>

			
			<form class="form-horizontal" action="AddPetServlet" enctype="multipart/form-data"method="POST">
				
				<!-- Pet Name -->
				<div class="form-group">
			      	<label class="col-sm-2 control-label">Pet name</label>
			      	<div class="col-sm-8">
			        	<input class="form-control" name="petName" type="text" placeholder="Name" required>
			      	</div>
			    </div>
				
				<!-- Age -->
				<div class="form-group">
			      	<label class="col-sm-2 control-label">Age</label>
			      	<div class="col-sm-8">
			        	<input type="number" name="age" min="1" max="105" class="form-control" placeholder="Age" required>
			      	</div>
			    </div>
		      	
		      	
		      	<!-- Type Pet  -->
		      	<div class="form-group">
			      	<label class="col-sm-2 control-label">Type Pet</label>
			      	<div class="col-sm-8">
			        	
						<select class="form-control" name="petTypeID" required>
							<%
							List<PetType> listType = (List) request.getAttribute("typePet");
							
							for(PetType item : listType) {%>
								<option><%=item.getTypeName() %></option>
							<%} %>
						    
						  </select>
			      	</div>
			    </div>
		      	
		      	<!-- Nick name -->
				<div class="form-group">
			      	<label class="col-sm-2 control-label">Nick Name</label>
			      	<div class="col-sm-8">
			        	<input class="form-control" name="nickname" type="text" placeholder="What is your pet's nickname?">
			      	</div>
			    </div>
			    
			    <!-- Health -->
				<div class="form-group">
			      	<label class="col-sm-2 control-label">Health</label>
			      	<div class="col-sm-8">
			        	
						<select class="form-control" name="petTypeID" required>
							<%
							List<Health> listHealth = (List) request.getAttribute("health");
							
							for(Health item : listHealth) {%>
								<option><%=item.getHealthName() %></option>
							<%} %>
						    
						  </select>
			      	</div>
			    </div>
			    
			    <!-- Status -->
				<div class="form-group">
			      	<label class="col-sm-2 control-label">Status</label>
			      	<div class="col-sm-8">
			        	<input type="radio" name="rad_Status" value="live" checked> Live
			        	<input type="radio" name="rad_Status" value="die"> Die
			      	</div>
			    </div>
			    
			   <!-- Avatar  -->
		      	<div class="form-group">
			      	<label class="col-sm-2 control-label">Images</label>
			      	<div class="col-sm-8">
						  <input class="form-control" type="file" name="avatar">
			      	</div>
			    </div>
				
				<!-- Button -->
				<div class="form-group">
					<label class="col-md-2 control-label"></label>
					<div class="col-md-4">
						<button name="add" class="btn btn-warning" value="add">
							Add <span class="glyphicon glyphicon-send"></span>
						</button>
					</div>
				</div>

			</form>
		</div>

	</div>
</body>
<jsp:include page="/views/shared/_footer.jsp"></jsp:include>
    
    
 
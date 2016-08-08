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
			Them Thu Nuoi

			
			<form class="well form-horizontal" action="AddPetServlet" enctype="multipart/form-data">
				
				<!-- Pet Name -->
				<div class="form-group">
			      	<label class="col-sm-2 control-label">Tên Thú</label>
			      	<div class="col-sm-10">
			        	<input class="form-control" name="petName" type="text" placeholder="Tên thú nuôi" required>
			      	</div>
			    </div>
				
				<!-- Age -->
				<div class="form-group">
			      	<label class="col-sm-2 control-label">Age</label>
			      	<div class="col-sm-10">
			        	<input type="number" name="age" min="1" max="105" 
								class="form-control" required>
			      	</div>
			    </div>
		      	
		      	
		      	<!-- Type Pet  -->
		      	<div class="form-group">
			      	<label class="col-sm-2 control-label">Type Pet</label>
			      	<div class="col-sm-10">
			        	
						  <select class="form-control" name="petTypeID" required>
						    <option>1</option>
						    <option>2</option>
						    <option>3</option>
						    <option>4</option>
						  </select>
			      	</div>
			    </div>
		      	
		      	<!-- Nick name -->
				<div class="form-group">
			      	<label class="col-sm-2 control-label">Nick Name</label>
			      	<div class="col-sm-10">
			        	<input class="form-control" name="nickname" type="text" placeholder="Tên thú nuôi">
			      	</div>
			    </div>
			    
			   <!-- Avatar  -->
		      	<div class="form-group">
			      	<label class="col-sm-2 control-label">Images</label>
			      	<div class="col-sm-10">
						  <input class="form-control" type="file" name="avatar">
			      	</div>
			    </div>

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<button name="add" class="btn btn-warning" value="add">
							Add <span class="glyphicon glyphicon-send"></span>
						</button>
					</div>
				</div>

			</form>
			
			
		</div>
		<div id="right">
			
		</div>

</body>
	<div id="footer">
		<jsp:include page="/views/shared/_footer.jsp"></jsp:include>
	</div>
</div>
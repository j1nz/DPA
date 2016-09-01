<%@page import="internship.fpt.dpa.model.bean.Pet"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/views/shared/_header.jsp"></jsp:include>
<script src="js/bootstrap.min.js"></script>
<body style="padding-top:70px">

	<!-- container -->
	<div class="container">
	<jsp:include page="/views/shared/_slide.html"></jsp:include>

		<!-- row content -->
		<div class="row">
			<%Pet p = (Pet) request.getAttribute("Pet");
			String images = p.getAvatar();
			if("".equals(images))
				images = "images/pet/meo.jpg";

			%>
			<div class="col-lg-9 col-lg-offset-3">
				<div class="col-lg-4 col-xs-12">
            		<img class="img-responsive" src="<%=images%>" alt="">
            	</div>
            	<div class="col-lg-8 col-xs-12">
            		<div class="caption-full">
                        <h4 class="pull-right"><a class="btn btn-success" href="ShowGivePet?id=<%=p.getPetID()%>">Give It</a></h4>
                        <h4><a href="#">Name: <%=p.getPetName() %></a>
                        </h4>
                        <p>Age: <%=p.getAge() %></p>
                        
                        <p>Description: <%=p.getDescription() %></p>
                    </div>
                    <div class="ratings" style="padding-right: 10px;padding-left: 10px;color: #d17581;">
                        <p class="pull-right">3 reviews</p>
                        <p>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star-empty"></span>
                            4.0 stars
                        </p>
                    </div>
            	</div>
			</div>

			<div class="row">

				<div class="col-lg-12 col-md-12">
					
					<div class="col-lg-9">
						<form action="AddPets" class="form-horizontal" enctype="multipart/form-data" method="post">
				
							<!--  Name -->
							<div class="form-group">
						      	<label class="col-sm-2 control-label">Your name</label>
						      	<div class="col-sm-8">
						        	<input class="form-control" name="name" type="text" placeholder="Name" required>
						      	</div>
						    </div>
							
							<!-- Age -->
							<div class="form-group">
						      	<label class="col-sm-2 control-label">Age</label>
						      	<div class="col-sm-8">
						        	<input type="number" name="age" min="1" max="200" class="form-control" placeholder="Age" required>
						      	</div>
						    </div>
					      	
					      	
					      	<!--Address -->
							<div class="form-group">
						      	<label class="col-sm-2 control-label">Address</label>
						      	<div class="col-sm-8">
						        	<input class="form-control" name="address" type="text" placeholder="Where is your address?" required="required">
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
			    	

			    	<!-- right menu -->
					<div class="col-lg-3 col-md-3 hidden-xs hidden-sm">
						
						<div class="row">
							<div class="col-lg-12">
								<div class="panel panel-default">
							        <div class="panel-heading">
							            <strong>Basic Tabs</strong>
							        </div>
							        <!-- /.panel-heading -->
							        <div class="panel-body">
							            <!-- Nav tabs -->
							            <ul class="nav nav-tabs">
							                <li class="active"><a href="#home" data-toggle="tab">Home</a>
							                </li>
							                <li><a class="active" href="#profile" data-toggle="tab">Profile</a>
							                </li>
							                <li><a class="active" href="#messages" data-toggle="tab">Mess</a>
							                </li>
							                
							            </ul>

							            <!-- Tab panes -->
							            <div class="tab-content">
							                <div class="tab-pane fade in active" id="home">
							                    <h4>Home Tab</h4>
							                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							                </div>
							                <div class="tab-pane fade" id="profile">
							                    <h4>Profile Tab</h4>
							                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							                </div>
							                <div class="tab-pane fade" id="messages">
							                    <h4>Messages Tab</h4>
							                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							                </div>
							               
							            </div>
							        </div>
							    </div>
							</div>
						</div>
					</div>
					<!-- end right menu -->
				</div>
				
			</div>
		</div>
		<!-- end row content -->
	</div>
	<!-- container -->
</body>
<jsp:include page="/views/shared/_footer.jsp"></jsp:include>
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

			<!-- thanh sap xep -->
			<div class="col-lg-12">
				
				<div class="col-lg-12 col-xs-12 col-md-12 well well-sm">
					<div class="col-lg-9">
						<div class="col-lg-3 col-md-3 hidden-sm hidden-xs">
							
						</div>

						
						<div class="col-lg-3 col-lg-offset-6 col-md-3 col-xs-12 col-md-offset-6" style="margin-left:90%">

					        <div class="btn-group hidden-xs ">
					            <a href="#" id="list" class="btn btn-default btn-sm">
					            	<span class="glyphicon glyphicon-th-list"></span>
					            	
					            </a>
					            <a href="#" id="grid" class="btn btn-default btn-sm">
						            <span class="glyphicon glyphicon-th"></span>
						            
					            </a>
					        </div>
						</div>
				        
					</div>
					
					<div class="col-lg-3 col-md-3">

							
						<div class="search hidden-xs hidden-sm">
						  	<input type="text" placeholder="Search Spotify">
						    <svg enable-background="new 0 0 512 512" height="25px" id="Layer_1" version="1.1" viewBox="0 0 512 512" width="25px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path fill="#a9a9a9" d="M497.913,497.913c-18.782,18.782-49.225,18.782-68.008,0l-84.862-84.863c-34.889,22.382-76.13,35.717-120.659,35.717  C100.469,448.767,0,348.312,0,224.383S100.469,0,224.384,0c123.931,0,224.384,100.452,224.384,224.383  c0,44.514-13.352,85.771-35.718,120.676l84.863,84.863C516.695,448.704,516.695,479.131,497.913,497.913z M224.384,64.109  c-88.511,0-160.274,71.747-160.274,160.273c0,88.526,71.764,160.274,160.274,160.274c88.525,0,160.273-71.748,160.273-160.274  C384.657,135.856,312.909,64.109,224.384,64.109z"/></svg>
						</div>
					</div>
				</div>
			</div>
			<!-- end thanh sap xep -->

			<div class="row">

				<div class="col-lg-12 col-md-12">
					<!-- list product -->
					<div class="col-lg-9">
						
						<%
						List<Pet> l = (List) request.getAttribute("listPet");
						
						int start, end, pages;
						int limit = l.size() / 9;
						
						if (limit * 9 < l.size()) {
							limit += 1;
						}
						%>


					    <div id="products" class="row list-group">
					    	<%for(Pet p : l) {
					    		String image = p.getAvatar();
					    		if("".equals(image) || null == image)
					    			image = "images/pet/meo.jpg";
					    		
					    		
					    	%>
					    	
					        <div class="item  col-xs-12 col-md-3 col-lg-3">
					            <div class="thumbnail">
					                <img class="group list-group-image" width="300px" src="<%=image%>" alt="" />
					                <div class="caption">
					                    <h4 class="group inner list-group-item-heading">
					                        <%=p.getPetName() %></h4>
					                    <p class="group inner list-group-item-text">
					                        Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
					                        sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					                    <div class="row">
					                        <div class="col-xs-12 col-md-6">
					                            <p class="lead"><a class="btn btn-info" href="ShowDetailPet?id=<%=p.getPetID()%>">View Detail</a></p>
					                        </div>
					                        <div class="col-xs-12 col-md-6">
					                            <a class="btn btn-success" href="ShowGivePet?id=<%=p.getPetID()%>">Give it</a>
					                        </div>
					                    </div>
					                </div>
					            </div>
					        </div>
					        <% } %>
					    </div>

					    <!-- Thanh phan trang -->
					    <div class="col-lg-12">
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
											<a href="Home?start=<%=start%>&end=<%=end%>" class="active"><%=pages %> <span class="sr-only">(current)</span></a>
										</li>
										<% } %>
									
										<li>
				                           <a href="#">&raquo;</a>
				                       </li>
									</ul>
								</div>
							</div>
					    </div>
					    <!-- end Thanh phan trang -->

					</div>
			    	<!-- end list product -->

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
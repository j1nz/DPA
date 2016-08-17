<%@page import="internship.fpt.dpa.model.bean.Health"%>
<%@page import="internship.fpt.dpa.model.bean.PetType"%>
<%@page import="internship.fpt.dpa.model.bean.Pet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="stylesheet" href="../css/bootstrap.min.css">

	<script src="../js/jquery.min.js"></script>
	<jsp:include page="/views/shared/_header.jsp"></jsp:include>
</head>
<body>
	<!-- Page Content -->
    <div class="container">
		<jsp:include page="/views/shared/_slide.html"></jsp:include>
        <div class="row">

            <div class="col-md-3">
                <p class="lead">Danh sach chi tiet</p>
                <div class="list-group">
                    <a href="#" class="list-group-item">Category 1</a>
                    <a href="#" class="list-group-item">Category 2</a>
                    <a href="#" class="list-group-item">Category 3</a>
                </div>
            </div>


			<%Pet p = (Pet) request.getAttribute("Pet");
			PetType pt = (PetType) request.getAttribute("PetType");
			Health h = (Health) request.getAttribute("Health");
			
			String images = p.getAvatar();
			if("".equals(images))
				images = "images/pet/meo.jpg";
			%>
            <div class="col-md-9">
	            <div class="row">
	            	<div class="col-lg-4 col-xs-12">
	            		<img class="img-responsive" src="<%=images%>" alt="">
	            	</div>
	            	<div class="col-lg-8 col-xs-12">
	            		<div class="caption-full">
	                        <h4 class="pull-right"><a class="btn btn-success" href="ShowGivePet?id=<%=p.getPetID()%>">Give It</a></h4>
	                        <h4><a href="#"><%=p.getPetName() %></a>
	                        </h4>
	                        <p><%=p.getAge() %></p>
	                        <p><%=pt.getTypeName() %></p>
	                        <p><%=p.getNickname() %></p>
	                        <p><%=h.getHealthName() %></p>
	                        <p><%=p.getDescription() %></p>
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
	            	<div class="well">

	                    <div class="text-right">
	                        <a class="btn btn-success">Leave a Review</a>
	                    </div>

	                    <hr>

	                    <div class="row">
	                        <div class="col-md-12">
	                            <span class="glyphicon glyphicon-star"></span>
	                            <span class="glyphicon glyphicon-star"></span>
	                            <span class="glyphicon glyphicon-star"></span>
	                            <span class="glyphicon glyphicon-star"></span>
	                            <span class="glyphicon glyphicon-star-empty"></span>
	                            Anonymous
	                            <span class="pull-right">10 days ago</span>
	                            <p>This product was great in terms of quality. I would definitely buy another!</p>
	                        </div>
	                    </div>

	                    <hr>

	                    <div class="row">
	                        <div class="col-md-12">
	                            <span class="glyphicon glyphicon-star"></span>
	                            <span class="glyphicon glyphicon-star"></span>
	                            <span class="glyphicon glyphicon-star"></span>
	                            <span class="glyphicon glyphicon-star"></span>
	                            <span class="glyphicon glyphicon-star-empty"></span>
	                            Anonymous
	                            <span class="pull-right">12 days ago</span>
	                            <p>I've alredy ordered another one!</p>
	                        </div>
	                    </div>

	                    <hr>

	                    <div class="row">
	                        <div class="col-md-12">
	                            <span class="glyphicon glyphicon-star"></span>
	                            <span class="glyphicon glyphicon-star"></span>
	                            <span class="glyphicon glyphicon-star"></span>
	                            <span class="glyphicon glyphicon-star"></span>
	                            <span class="glyphicon glyphicon-star-empty"></span>
	                            Anonymous
	                            <span class="pull-right">15 days ago</span>
	                            <p>I've seen some better than this, but not at this price. I definitely recommend this item.</p>
	                        </div>
	                    </div>

	                </div>
	            </div>


            </div>

        </div>

    </div>
    <!-- /.container -->
<jsp:include page="/views/shared/_footer.jsp"></jsp:include>
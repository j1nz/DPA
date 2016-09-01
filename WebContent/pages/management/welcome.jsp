<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/views/shared/_header.jsp"></jsp:include>

<div class="page">

<!--   <div class="pageHeader"> -->
<!--     <div class="title">Administrator</div> -->
<%--     <div class="userPanel"><i class="fa fa-chevron-down"></i><span class="username">Hello <%=session.getAttribute("username") %></span><img src="http://animalfair.com/wp-content/uploads/2014/12/disappointed-dog.jpg" width="40" height="40"/></div> --%>
<!--   </div> -->

  <div class="main">
    <div class="nav">
      <div class="searchbox">
        <div><i class="fa fa-search"></i>
          <input type="search" placeholder="Search"/>
        </div>
      </div>
      <div class="menu">
        <div class="title">Navigation</div>
        <ul>
          <li> <i class="fa fa-home"></i><a href="Home">Home</a></li>
          <li><i class="fa fa-signal"></i><a href="ShowListPet">List Pet</a></li>
          <li class="active"> <i class="fa fa-tasks"></i><a href="ShowAddPet">Add Pet</a></li>
          <li class="active"> <i class="fa fa-tasks"></i><a href="ShowManagerDonate">Donator</a></li>
          <li class="active"> <i class="fa fa-tasks"></i><a href="ShowManagerGive">Giver</a></li>
          <li class="active"> <i class="fa fa-tasks"></i>Manage Tasks</li>
          <li> <i class="fa fa-envelope"></i>Messages</li>
        </ul>
      </div>
    </div>
    <div class="view">
      <div class="viewHeader">
        <div class="title">Manage Tasks</div>
        <div class="functions">
          <div class="button active">Add New Task</div>
          <div class="button">Completed</div>
          <div class="button inverz"><i class="fa fa-trash-o"></i></div>
        </div>
      </div>
      <div class="content">
        <div class="list">
          <div class="title">Hôm nay</div>
          <ul>
            <li class="checked"><i class="fa fa-check-square-o"></i><span>Chuẩn bị bảo vệ đồ án tại FPT</span>
              <div class="info">
                <div class="button green">In progress</div><span>Complete by 18/08/2016</span>
              </div>
            </li>
            <li><i class="fa fa-square-o"></i><span>Thuyết trình</span>
              <div class="info">
                <div class="button">Pending</div><span>Complete by 19/08/2016</span>
              </div>
            </li>
            
          </ul>
        </div>
        <div class="list">
          <div class="title">Hôm qua</div>
          <ul>
            <li><i class="fa fa-square-o"></i><span>Đi nhậu</span>
              <div class="info"></div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<jsp:include page="/views/shared/_footer.jsp"></jsp:include>
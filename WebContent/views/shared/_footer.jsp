<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container">
	<button onclick="showFooter();" id="downbutton" class="center-block" type="button">
		<i class="fa fa-chevron-circle-down fa-2x" aria-hidden="true"></i>
	</button>
	<div id="divcontact" class="row">
		<div><h3>CONTACT</h3></div>  
		<div class="well">
			<form id="formcontact" method="post">
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label for="titlecontact">Title</label> <input type="text"
								class="form-control" id="title" name="title" placeholder="Title" />
						</div>
						<div class="form-group">
							<label for="email">Email Address</label>
							<div class="input-group">
								<span class="input-group-addon"><span
									class="glyphicon glyphicon-envelope"></span></span> <input
									type="email" class="form-control" id="email" name="email"
									placeholder="Enter email" />
							</div>
						</div>
						<div class="form-group">
							<label for="name">Your Name</label> <input type="text"
								class="form-control" name="yourname" id="yourname"
								placeholder="Your Name" />
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="name">Message</label>
							<textarea name="content" id="content" class="form-control"
								rows="9" cols="25" placeholder="Message"></textarea>
						</div>
					</div>
					<div class="col-md-12">
						<button type="submit" class="btn btn-primary pull-right"
							id="btnContactUs">Send Message</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<button onclick="hideFooter()" id="upbutton" class="center-block" type="button">
		<i class="fa fa-chevron-circle-up fa-2x" aria-hidden="true"></i>
	</button>
</div>
<script src="js/dpajs.js"></script>
	

</html>
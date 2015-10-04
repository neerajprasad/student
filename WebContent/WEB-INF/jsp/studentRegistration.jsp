<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<title>Student registration</title>
</head>
<body>
	<div ng-controller="loginCtrl" class="container" style="width: 300px;">
		<h2 class="form-signin-heading">Enter Student Detail</h2>
		<modal title="Login form" visible="showModal">
		<form:form role="form" action="./addController" method="post" commandName="student" name="studentForm" class="form-signin">
			<div class="form-group">
				<label for="firstName">First Name</label> 
				<form:input path="firstName"
					class="form-control"  ng-model="firstName"
					placeholder="First name" />
			</div>
			<div class="form-group">
				<label for="lastName">LastName</label> <form:input path="lastName"
					class="form-control" id="lastName" ng-model="lastName"
					placeholder="lastName" />
			</div>
			
			<div class="form-group">
				<label for="email">Email</label> <form:input path="email"
					class="form-control" id="email" ng-model="email"
					placeholder="email" />
			</div>
			
			<div class="form-group">
				<label for="rollNumber">Roll Number</label> <form:input path="rollNumber"
					class="form-control" id="rollNumber" ng-model="rollNumber"
					placeholder="rollNumber" />
			</div>
			
			<div class="form-group">
				<label for="dateOfBirth">Date Of Birth</label> <form:input path="dateOfBirth"
					class="form-control" id="dateOfBirth" ng-model="dateOfBirth"
					placeholder="dateOfBirth" />
			</div>
			
			
			<button type="submit" class="btn btn-lg btn-primary btn-block"
				  >Submit</button>
		</form:form>
		</modal>
	</div>
</body>
<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- <script src="js/app.js"></script> -->
<!-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.js"></script> -->
<script src="js/angular.js"></script>

</html>
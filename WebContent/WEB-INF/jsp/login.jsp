<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<title>Login</title>
</head>
<body>
	<div ng-controller="loginCtrl" class="container" style="width: 300px;">
		<h2 class="form-signin-heading">Please sign in</h2>
		<modal title="Login form" visible="showModal">
		<form:form role="form" action="./loginController" method="post" commandName="student" name="studentLoginForm" class="form-signin">
			<div class="form-group">
				<label for="userName">User Name </label> 
				<form:input path="userName"
					class="form-control"  ng-model="userName"
					placeholder="User Name" />
			</div>
			<div class="form-group">
				<label for="password">Password</label> <form:password path="password"
					class="form-control" id="password" ng-model="password"
					placeholder="Password" />
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
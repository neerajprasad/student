var app = angular.module('healthApp', []);

app.controller(
				'registrationCtrl',
				function($scope, $http) {
					$scope.triggerEvent = function(isValid) {
						
						var dataObj = {
							password : $scope.password,
							firstName : $scope.firstName,
							lastName : $scope.lastName,
							email : $scope.email
						};
						
						var res = $http.post('/health/api/rest/registration/',
								dataObj);
						res.success(function(data, status, headers, config) {
							$scope.message = data;
						});
						res.error(function(data, status, headers, config) {
							alert("failure message: " + JSON.stringify({
								data : data
							}));
						});
					};

				});


app.controller(
		'loginCtrl',
		function($scope, $http) {
			$scope.triggerEvent = function(isValid) {
				
				var dataObj = {
					password : $scope.password,
					email : $scope.email
				};
				
				var res = $http.post('/health/api/rest/login/',
						dataObj);
				res.success(function(data, status, headers, config) {
					$scope.message = data;
				});
				res.error(function(data, status, headers, config) {
					alert("failure message: " + JSON.stringify({
						data : data
					}));
				});
			};

		});


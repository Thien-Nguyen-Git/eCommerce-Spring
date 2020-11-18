<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	
	<meta charset="ISO-8859-1">
	<title>Welcome</title>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
		<style>	
			.admin-container {
                padding: 50px 200px;
            }
		</style>
	
	</head>
	
	<body>
	
				<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand">Sword Shop Online</a>
				</div>

				<ul class="nav navbar-nav">
					<li class="active"><a href="http://localhost:8080/eCommerceProject/admin">Home</a></li>
					<li><a href="http://localhost:8080/eCommerceProject/admin/productManagement">Product Management</a></li>
					<li><a href="http://localhost:8080/eCommerceProject/admin/customerManagement">Customer Management</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="http://localhost:8080/eCommerceProject/login"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
					
				</ul>
			</div>
		</nav>
		
		<div class="admin-container" style="text-align: left">
		
			<h1>Administrator Page</h1>
			
			<hr>
		
			<h2>${message}</h2>
			
			<br>
			<a href="admin/products">Product List</a>
			<br>
			<a href="admin/customerManagement">Customer Management</a>
			<br>
			<a href="admin/productManagement">Product Management</a>
		
		</div>
	</body>
</html>
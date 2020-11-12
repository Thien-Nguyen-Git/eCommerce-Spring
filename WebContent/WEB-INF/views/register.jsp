<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	
	<meta charset="ISO-8859-1">
	<title>Register</title>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	</head>
	
	<body>

		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="index.html">Sword Shop Online</a>
				</div>

				<ul class="nav navbar-nav">
					<li class="active"><a href="index.html">Home</a></li>
					<li><a href="product.html">Products</a></li>
					<!-- <li><a href="#">About Us</a></li>
					<li><a href="#">Contact Us</a></li> -->
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="register.html"><span class="glyphicon glyphicon-user"></span> Register</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
					<li><a href="admin.html"><span class="glyphicon glyphicon-king"></span> Admin</a></li>
				</ul>
			</div>
		</nav>
		
	<form action="register" method="post">
			<div class="error">${errorMessage}</div>
			<br>
			<table style="text-align: center">
				<tr>
					<td>Name </td>
					<td><input type="text" name="name" required></td>
				</tr>
				<tr>
					<td>Username </td>
					<td><input type="text" name="username" required/></td>
				</tr>
				<tr>
					<td>Password </td>
					<td><input type="password" name="password" required 
					pattern="(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,}" 
					title="Must contain at least one number, one uppercase, one lowercase letter, and at least 8 or more characters"/></td>
				</tr>
				<tr>
					<td>Email </td>
					<td><input type="text" name="email" required 
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"/></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Register"/></td>
				</tr>
				<tr>
					<td></td>
					<td><p>Already have an account?</p><a href="login">Login here</a></td>
				</tr>
			</table>
		</form>
	</body>
	
</html>
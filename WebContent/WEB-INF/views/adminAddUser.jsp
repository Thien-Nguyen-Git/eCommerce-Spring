<%@page import="com.ecommerce.utility.UtilCls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	
	<meta charset="ISO-8859-1">
	<title>Add</title>
	
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
	
		<h1>Add a New User/Admin</h1>
			<form class="border" method="post">
					<label for="name">Name:</label> 
					<br>
					<input type="text" id="name" name="name" required>
					<br><br> 
					<label for="email">Email:</label> 
					<br>
					<input type="email" id="email" name="email" required>
					<br><br> 
					<label for="user">Username:</label> <br>
					<input type="text" id="user" name="user" required><br>
					<br>
					<label for="password">Password:</label> <br>
					<input type="password" id="password" name="password" required><br>
					<br>
					 <label for="role">Role:</label> <br>
					<input type="text" id="role" name="role" placeholder="user or admin" required><br> <br>
					<%
						UtilCls util = new UtilCls();
					if (request.getParameter("adminAdd") != null) {
						String a, b, c, d, e;
						a = request.getParameter("name");
						b = request.getParameter("email");
						c = request.getParameter("user");
						d = request.getParameter("password");
						e = request.getParameter("role");
						if(util.checkRole(e)){
							if(util.adminRegisterUser(a, b, c, d, e)){
								out.println("<p style='color: green'>Thank you for creating a new user!");
							}		
							else {
							out.println("<p style='color: red'>Invalid input provided!</p>");
								}
						}
						else {
							out.println("<p style='color: red'>Role must be either admin or user!</p>");
								}
						

						
					}
					%>
					<br> <input name="adminAdd" type="submit"
						value="Add User">
				</form>
				
				<br> <a href="customerManagement">Back</a>
	</body>
</html>
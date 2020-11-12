<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Add New Product</title>

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
		
	<form action="uploadChecker" method="post" enctype='multipart/form-data'>
					<label for="name">Product Name:</label> 
					<br>
					<input type="text" id="name" name="name" required>
					<br><br> 
					<label for="desc">Description:</label> 
					<br>
					<input type="text" id="desc" name="desc" required>
					<br><br> 
					
					<label for="category">Category:</label> 
					<br>
					<input type="text" id="category" name="category" required>
					<br><br> 
					
					<label for="price">Price:</label> <br>
					<input type="number" id="price" name="price" step=".01" required><br> <br>
					<label for="amt">Stock Amt:</label> <br>
					<input type="number" id="amt" name="amt" required><br> <br>
					<label for="pic">Picture:</label> <br>
					<input type="file" id="pic" name="pic" size="60" required><br> <br>
					

					<input type="submit" value="Submit" />
					  <input type="reset" value="Cancel">
					</form>
					<br> <a href="productManagement">Back</a>
	</body>
</html>
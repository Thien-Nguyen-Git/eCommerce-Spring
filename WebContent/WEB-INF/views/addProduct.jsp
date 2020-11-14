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
	
		<style>	
			.product-container {
                padding: 50px;
            }
            .box-input {
            	width: 100%;
            }
            
            input[type=submit], input[type=reset] {
            	background-color: grey;
				border: none;
				color: white;
				padding: 16px 32px;
				text-decoration: none;
				margin: 4px 2px;
				cursor: pointer;
            }
            .hov {
            	
            }
            .hov:hover {
            	
            }
            
            /* button to go back to last page */
            .btn {
                border: none;
                background-color: inherit;
                padding: 14px 28px;
                font-size: 16px;
                cursor: pointer;
                display: inline-block;
            }
            .info {
                color: dodgerblue;
            }
            .info:hover {
                background: #2196F3;
                color: white;
            }
		</style>
	
	</head>
	
	<body>
	
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="login">Sword Shop Online</a>
				</div>

				<ul class="nav navbar-nav">
					<li class="active"><a href="login">Home</a></li>
					<li><a href="product">Products</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
					<li><a href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
				</ul>
			</div>
		</nav>
		
		<div class="product-container" style="text-align: left">
		
			<h1>Add Product</h1>
			<p>Fill in the information to add product</p>
			
			<br><br>
		
			<form action="uploadChecker" method="post" enctype='multipart/form-data'>
			
				<label for="name">Product Name:</label> 
				<br>
				<input class="box-input hov" type="text" id="name" name="name" required>
				<br><br> 
				
				<label for="desc">Description:</label> 
				<br>
				<input class="box-input hov" type="text" id="desc" name="desc" required>
				<br><br> 
							
				<label for="category">Category:</label> 
				<br>
				<input class="box-input hov" type="text" id="category" name="category" required>
				<br><br> 
							
				<label for="price">Price:</label> 
				<br>
				<input class="box-input hov" type="number" id="price" name="price" step=".01" required>
				<br><br>
				
				<label for="amt">Stock Amt:</label> 
				<br>
				<input class="box-input hov" type="number" id="amt" name="amt" required>
				<br><br>
				
				<label for="pic">Picture:</label> 
				<br>
				<input type="file" id="pic" name="pic" size="60" required>
				<br><br>
							
				<input type="submit" value="Submit" />
				<input type="reset" value="Cancel">
			</form>
						
			<br> 
			
			<a href="productManagement">
				<button class="btn info">
		    		Back
		    	</button>
			</a>
		</div>
	</body>
</html>
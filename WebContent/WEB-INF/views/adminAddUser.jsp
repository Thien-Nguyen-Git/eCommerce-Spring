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
	
		<style>	
			.customer-container {
                padding: 50px 200px;
            }
            .box-input {
            	width: 100%;
            }
            
            input[type=submit] {
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
			
            .admin-add-user {
                color: forestgreen;
            }
            .admin-add-user:hover {
                background: #228B22;
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
					<li><a href="login">Home</a></li>
					<li><a href="product">Products</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
					<li><a href="cart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
				</ul>
			</div>
		</nav>
		
		<div class="customer-container" style="text-align: left">
	
			<h1>Add a New User/Admin</h1>
				<form class="border" method="post">
					<label for="name">Name:</label> 
					<br>
					<input class="box-input hov" type="text" id="name" name="name" required>
					<br><br> 
					
					<label for="email">Email:</label> 
					<br>
					<input class="box-input hov" type="email" id="email" name="email" required>
					<br><br> 
					
					<label for="user">Username:</label>
					<br>
					<input class="box-input hov" type="text" id="user" name="user" required>
					<br><br>
					
					<label for="password">Password:</label> 
					<br>
					<input class="box-input hov" type="password" id="password" name="password" required>
					<br><br>
					
					<label for="role">Role:</label> 
					<br>
					<input class="box-input hov" type="text" id="role" name="role" placeholder="user or admin" required>
					<br><br>
					
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
					
					<br> 
					
					<input name="adminAdd" type="submit"value="Add User" class="btn admin-add-user">
					
				</form>
				
				<br>
			
			<a href="customerManagement">
				<button class="btn info">
		    		Back
		    	</button>
			</a>
				
		</div>
	</body>
</html>
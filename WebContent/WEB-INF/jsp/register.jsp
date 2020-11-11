<%@page import="com.ecommerce.utility.UtilCls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous">
	</script>
<title>Register</title>

	<style type="text/css">
			
		/* Add a black background color to the top navigation */
		.topnav {
			background-color: #333;
			overflow: hidden;
		}
			
		/* Style the links inside the navigation bar */
		.topnav a {
			float: left;
			color: #f2f2f2;
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
			font-size: 17px;
		}
			
		/* Change the color of links on hover */
		.topnav a:hover {
			background-color: #ddd;
			color: black;
		}
			
		/* Add a color to the active/current link */
		.topnav a.active {
			background-color: #4CAF50;
			color: white;
		}
	</style>
		
</head>
<body>
	<div class="jumbotron bg-dark">
		<h1 class="alert alert-danger text-center">Register</h1>
	</div>
	<br>
	<div class="container text-center">
		<div class="row">
			<div class="col-sm">Hi</div>
			<div class="col-sm">
				<form class="border" method="post">
					<label for="name">Name:</label> 
					<br>
					<input type="text" id="name" name="name" required>
					<br><br> 
					<label for="email">Email:</label> 
					<br>
					<input type="text" id="email" name="email" required>
					<br><br> 
					<label for="phone">Phone Number:</label>
					<br> 
					<input type="text" id="phone" name="phone" required>
					<br> <br>
					<label for="user">Username:</label> <br>
					<input type="text" id="user" name="user" required><br>
					<br>
					<label for="password">Password:</label> <br>
					<input type="text" id="password" name="password" required><br>
					<br>
					<!-- role is set in backend -->
					  <label for="street">Street Name:</label> <br>
					<input type="text" id="street" name="street" required><br> <br>
					<label for="apt">Apt:</label> <br>
					<input type="text" id="apt" name="apt" required><br> <br>
					<label for="city">City:</label> <br>
					<input type="text" id="city" name="city" required><br> <br>
					<label for="state">State:</label> <br>
					<input type="text" id="state" name="state" required><br> <br>
					<label for="zip">Zip Code:</label> <br>
					<input type="text" id="zip" name="zip" required><br> <br>
					<%
						UtilCls util = new UtilCls();
					if (request.getParameter("user") != null) {
						String a, b, c, d, e, f,g,h,i,j,k;
						a = request.getParameter("name");
						b = request.getParameter("email");
						c = request.getParameter("phone");
						d = request.getParameter("user");
						e = request.getParameter("password");
						f = request.getParameter("street");
						g = request.getParameter("apt");
						h = request.getParameter("city");
						i = request.getParameter("state");
						j = request.getParameter("zip");

						if(util.registerUser(a, b, c, d, e,f,g,h,i,j)){
							out.println("<p style='color: green'>Thank you for creating an account!");
						}		
						else {
						out.println("<p style='color: red'>Invalid input provided!</p>");
							}

						
					}
					%>
					<br> <input class="btn btn-success" type="submit"
						value="Register">
				</form>
				<br> <a class="btn btn-primary text-center" href="Home.jsp">Back</a>
			</div>
			<div class="col-sm">Hi</div>
		</div>
	</div>
	<br>
	<footer class="p-3 mb-2 bg-dark text-white text-center">
		Copyright � Eccomerce App 2020 </footer>
</body>
</html>
<%@page import="com.ecommerce.models.User"%>
<%@page import="com.ecommerce.utility.UtilCls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	
	<meta charset="ISO-8859-1">
	<title>Update User</title>
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<style>	
		.update-customer-container {
			padding: 50px 200px;
		}

		.header-info {
			color: blue;
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

		<div class="update-customer-container" style="text-align: left">

			<h1 class="header-info">Update User Information:</h1>
			<br><br>

			<%
			UtilCls util = new UtilCls();
			//System.out.println(session.getAttribute("idToChange"));
			int x = (int)session.getAttribute("idToChange");
			//System.out.println(util.returnUser(x));
			User u = util.returnUser(x);
			
			%>
			<form>
			<label for="id">ID:</label> 
					<br>
					<input class="box-input hov" type="text" id="id" name="id" value=<%=u.getUid()%> disabled required>
					<br><br>

					<label for="name">Name:</label> 
					<br>
					<input class="box-input hov" type="text" id="name" name="name" value=<%=u.getName()%> required>
					<br><br> 

					<label for="email">Email:</label> 
					<br>
					<input class="box-input hov" type="text" id="email" name="email" value=<%=u.getEmail()%> disabled>
					<br><br> 

					<label for="phone">Phone Number:</label>
					<br> 
					<input class="box-input hov" type="text" id="phone" name="phone" value=<%=u.getPhone()%> required>
					<br><br>

					<label for="user">Username:</label> <br>
					<input class="box-input hov" type="text" id="user" name="user" value=<%=u.getUsername()%> required>
					<br><br>

					<label for="password">Password:</label> 
					<br>
					<input class="box-input hov" type="text" id="password" name="password" value=<%=u.getPassword()%> required>
					<br><br>

					<label for="role">Role:</label> 
					<br>
					<input class="box-input hov" type="text" id="role" name="role" value=<%=u.getRole()%> required>
					<br><br>

					<label for="street">Street Name:</label> 
					<br>
					<input class="box-input hov" type="text" id="street" name="street" value=<%=u.getStreet_name()%> required>
					<br><br>

					<label for="apt">Apt:</label> 
					<br>
					<input class="box-input hov" type="text" id="apt" name="apt" value=<%=u.getApt()%> required>
					<br><br>

					<label for="city">City:</label> 
					<br>
					<input class="box-input hov" type="text" id="city" name="city" value=<%=u.getCity()%> required>
					<br><br>

					<label for="state">State:</label> 
					<br>
					<input class="box-input hov" type="text" id="state" name="state" value=<%=u.getState()%> required>
					<br><br>

					<label for="zip">Zip Code:</label> 
					<br>
					<input class="box-input hov" type="text" id="zip" name="zip" value=<%=u.getZip()%> required>
					<br><br>
					
					<%

					/*		
					if(!((String)session.getAttribute("updateSuccess")).equals("null")){
						String bool = (String)session.getAttribute("updateSuccess");
						if(bool.equals("true")){
							out.println("<p style='color: green'>You have successfully updated the account info!");
							 session.setAttribute("updateSuccess","null");
						}
						else{
							out.println("<p style='color: red'>Invalid input provided!</p>");
							 session.setAttribute("updateSuccess", "null");
						}
					}*/
					
					if (request.getParameter("user") != null) {
						String a, b, c, d, e, f,g,h,i,j,k, l;
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
						k = request.getParameter("role");
						//l = request.getParameter("id");
						if(util.checkRole(k)){
							if(util.checkZip(j)){
								if(util.updateUser(a, b, c, d, e,f,g,h,i,j,k,x)){
									// String redirectURL = "http://localhost:8080/EcommerceTeamProject/updateCustomer.html";
									//CrunchifySpringMVCTutorial
									String redirectURL = "http://localhost:8080/eCommerceProject/admin/customerManagement";
									 response.sendRedirect(redirectURL);	
									
								}
							}
							else {
								out.println("<p style='color: red'>Zip code must be a number!</p>");
									}
						
						}
						else {
							out.println("<p style='color: red'>Role must be either admin or user!</p>");
								}

						
					}
					
					%>

				<br> 

				<input name="update" type="submit" value="Update">

			</form>

			<br> 

			<a href="admin/customerManagement">
				<button class="btn info">
		    		Back
		    	</button>
			</a>

		</div>

	</body>
</html>
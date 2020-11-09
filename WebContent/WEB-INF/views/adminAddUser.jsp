<%@page import="com.ecommerce.utility.UtilCls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add</title>
</head>
<body>
<h1>Add new User/Admin</h1>
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
				
				<br> <a class="btn btn-primary text-center" href="customerManagement.html">Back</a>
</body>
</html>
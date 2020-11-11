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
</head>
<body>
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
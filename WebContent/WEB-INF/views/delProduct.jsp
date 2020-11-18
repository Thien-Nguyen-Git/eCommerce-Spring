<%@page import="com.ecommerce.models.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.utility.UtilCls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<%
	UtilCls util = new UtilCls();
	%>
	<head>

		<meta charset="ISO-8859-1">
		<title>Delete Product</title>

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

	<form>
		Select the product to delete:<select name = "pname">
		<%
		List<Product> prodList = util.retProducts();
		for(Product p:prodList){
			out.println("<option value="+p.getPid() +">"+p.getProduct_name()+"</option>");
		}
		%>
		</select>
		<input type="submit" value="Delete">
	</form>
		<%
			if(request.getParameter("pname")!=null){
				String p = request.getParameter("pname");
				boolean status = util.delProduct(p);
				if(status){
					out.println("<label>Successfully Deleted Product</label>");
				}
				else{
					out.println("<label>Unsuccessful</label>");
				}
				
			}
		%>

	<br> 

	<a href="productManagement"><button class="btn info">Back</button></a>

	</body>
</html>
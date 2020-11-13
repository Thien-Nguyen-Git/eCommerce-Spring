<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thank You</title>
</head>
<body>
	<h1>Thank you for your purchase!!!</h1>
	
	<h3>Receipt</h3>
	<p>${ date }</p>
	<table>
		    <tr>
		    	<th>Product</th>
		    	<th>Description</th>
		    	<th>Price</th>
		    	<th></th>
		    </tr>
		    <c:forEach items="${cartItems}" var="item">
		    <tr>
		      	<td><c:out value="${item.product_name}" /></td>
		      	<td><c:out value="${item.description}" /></td>
		      	<td><c:out value="$ ${item.price}" /></td>
		   	</tr>
		   	</c:forEach>
		   	<tr>
		   		<th>Total</th>
		   		<td>${ total }</td>
		   	</tr>
		</table>
</body>
</html>
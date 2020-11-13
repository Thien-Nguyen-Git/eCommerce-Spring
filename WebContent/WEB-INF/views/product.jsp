<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product</title>
</head>
<body>
	<form action="cart" method="post">
		<table>
		    <tr>
		    	<th></th>
		    	<th>Product</th>
		    	<th>Description</th>
		    	<th>Category</th>
		    	<th>Price</th>
		    	<th></th>
		    </tr>
		    <tr>
		    	<td></td>
		      	<td>${product.product_name}</td>
		      	<td>${product.description}</td>
		      	<td>${product.category}</td>
		      	<td>${product.price}</td>
		      	<td>
		      		<input type="hidden" name="uid" value="<c:out value="${sessionScope.currentUser.uid}"/>" />
		      		<input type="hidden" name="pid" value="${product.pid}"/>
		      		<button type="submit">Add to Cart</button>
		      	</td>
		   	</tr>
		</table>
	</form>
	
	<a href="cart?uid=<c:out value="${sessionScope.currentUser.uid}"/>">Cart</a>
</body>
</html>
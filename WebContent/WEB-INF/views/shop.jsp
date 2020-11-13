<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shop</title>
</head>
<body>
	<h1>${ message }</h1>
	<p>${ cartMessage }</p>
		<table>
	  		<c:forEach items="${productList}" var="item">
	    	<tr>
	    		<th>Product</th>
	    		<th>Price</th>
	    		<th></th>
	    	</tr>
	    	<tr>
	      		<td><c:out value="${item.product_name}" /></td>
	      		<td><c:out value="$ ${item.price}" /></td>
	      		<td>
		      		<form action="shop/product" method="get">
		      		<input type="hidden" name="pid" value="${item.pid}"/><button type="submit">View</button>
		      		</form>
	      		</td>
	   		</tr>
	   		
	  		</c:forEach>
		</table>
		<a href="shop/cart?uid=<c:out value="${sessionScope.currentUser.uid}"/>">Cart</a>
</body>
</html>
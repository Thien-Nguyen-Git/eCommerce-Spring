<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
</head>
<body>
		<p>${message }<p>
		<table>
		    <tr>
		    	<th></th>
		    	<th>Product</th>
		    	<th>Price</th>
		    	<th></th>
		    </tr>
		    <c:forEach items="${cartItems}" var="item">
		    <tr>
		    	<td></td>
		      	<td><c:out value="${item.product_name}" /></td>
		      	<td><c:out value="$ ${item.price}" /></td>
		      	<td>
		      		<form action="cart/delete" method="post">
			      		<input type="hidden" name="uid" value="<c:out value="${sessionScope.currentUser.uid}"/>" />
			      		<input type="hidden" name="pid" value="${item.pid}"/>
		      		<button type="submit">X</button>
		      		</form>
		      	</td>
		   	</tr>
		   	</c:forEach>
		   	<tr>
		   		<th>Total</th>
		   		<td>${total }</td>
		   	</tr>
		</table>
		
		<form action="receipt" method="post">
			<input type="hidden" name="uid" value="<c:out value="${sessionScope.currentUser.uid}"/>" />
			<input type="hidden" name="cart_id" value="${cart_id}"/>
		    <button type="submit">Purchase</button>
		</form>
</body>
</html>
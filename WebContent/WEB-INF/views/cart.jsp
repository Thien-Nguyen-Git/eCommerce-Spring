
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>

		<meta charset="ISO-8859-1">
		<title>Cart</title>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

		<style>	
			.cart-total {
				padding: 50px 200px;
			}
		</style>

	</head>

	<body>

			<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand">Sword Shop Online</a>
				</div>

				<ul class="nav navbar-nav">
					<li class="active"><a href="http://localhost:8080/eCommerceProject/shop">Home</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="http://localhost:8080/eCommerceProject/login"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				</ul>
			</div>
		</nav>

		<div class="cart-total" style="text-align: left">
		
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

		</div>

	</body>

</html>
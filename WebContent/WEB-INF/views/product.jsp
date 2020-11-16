<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
	<head>

		<meta charset="ISO-8859-1">
		<title>Product</title>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

		<style>	
			.product-container {
                padding: 50px 200px;
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
			
			.add-cart {
                color: forestgreen;
            }
            .add-cart:hover {
                background: #228B22;
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

		<div class="product-container" style="text-align: left">

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
							<button type="submit" class="btn add-cart">Add to Cart</button>
						</td>
					</tr>
				</table>
			</form>
			
			<a href="cart?uid=<c:out value="${sessionScope.currentUser.uid}"/>">
				<button class="btn info">
					Cart
				</button>
			</a>

		</div>

	</body>

</html>
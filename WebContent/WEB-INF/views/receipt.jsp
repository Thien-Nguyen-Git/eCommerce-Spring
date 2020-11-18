<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>

		<meta charset="ISO-8859-1">
		<title>Thank You</title>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

		<style>	
			.receipt {
				padding: 50px 200px;
			}
	
			.header-info {
					color: blue;
			}

			/* #receipt-table {
                font-family: Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }
            
            #receipt-table td, #receipt-table th {
                border: 1px solid #ddd;
                padding: 8px;
            }
            
            #receipt-table .total-purchase:nth-child(even){background-color: #f2f2f2;}
            
            #receipt-table .total-purchase:hover {background-color: #ddd;}
            
            #receipt-table th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: center;
                background-color: #4CAF50;
                color: white;
            } */
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

		<div class="receipt" style="text-align: left">
		
			<h1 class="header-info">Thank you for your purchase!!!</h1>
			
			<h3>Receipt</h3>
			<p>${ date }</p>

			<table id="receipt-table">
				<tr class="total-purchase">
					<th>Product</th>
					<th>Description</th>
					<th>Price</th>
				</tr>
				<c:forEach items="${cartItems}" var="item">
				<tr class="total-purchase">
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

		</div>

	</body>
</html>
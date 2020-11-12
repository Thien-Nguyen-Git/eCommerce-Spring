<%@page import="com.ecommerce.models.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.utility.UtilCls"%>
<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		/*
			table {
			  table-layout: fixed ;
			  margin: auto;
			  width: 90% ;
			}
			th {
			  width: 25% ;
			  text-align: center;
			}
			td {
			  width: 25% ;
			  text-align: center;
			}
		*/
			
			.cart-container {
                padding: 50px;
            }
            #cart {
                font-family: Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }
            
            #cart td, #cart th {
                border: 1px solid #ddd;
                padding: 8px;
            }
            
            #cart tr:nth-child(even){background-color: #f2f2f2;}
            
            #cart tr:hover {background-color: #ddd;}
            
            #cart th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: center;
                background-color: #4CAF50;
                color: white;
            }
            
            /* button to add product */
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
		</style>
		
	</head>
	
	<body>
	
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="index.html">Sword Shop Online</a>
				</div>

				<ul class="nav navbar-nav">
					<li class="active"><a href="index.html">Home</a></li>
					<li><a href="product.html">Products</a></li>
					<!-- <li><a href="#">About Us</a></li>
					<li><a href="#">Contact Us</a></li> -->
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="register.html"><span class="glyphicon glyphicon-user"></span> Register</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
					<li><a href="admin.html"><span class="glyphicon glyphicon-king"></span> Admin</a></li>
				</ul>
			</div>
		</nav>
		
		<div class="cart-container" style="text-align: left">
		
			<table BORDER="1" id="cart">
			    <TR>
				    <TH>Product Id</TH>
				    <TH>Product Name</TH>
				    <TH>Description</TH>
				    <TH>Price</TH>
				  	<TH>Picture</TH>
			    </TR>
			    
			   
			<%
			UtilCls util = new UtilCls();
			List<Product> prodList =  util.retProducts();
			
			for (int i=0;i<prodList.size();i++) {
				out.println(" <tr>   <td>"+prodList.get(i).getPid()+"</td><td>"+prodList.get(i).getProduct_name()+"</td><td>"+prodList.get(i).getDescription()+"<td>"+prodList.get(i).getPrice()+"</td><td>");
				
				%>
				  <img width="200" height="200" src="data:image/jpeg;base64,<%= prodList.get(i).getPicture() %>" />
				  </td>
				  </tr>
				
				<%} %>
		    </table>
		    
	    </div>
	
	</body>
</html>
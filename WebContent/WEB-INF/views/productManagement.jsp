<%@page import="com.ecommerce.models.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.utility.UtilCls"%>
<%@ page buffer="3000kb" autoFlush="false" %>

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
	<title>Product Management</title>
	
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
			
			.product-container {
                padding: 50px 200px;
            }
            #products {
                font-family: Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }
            
            #products td, #products th {
                border: 1px solid #ddd;
                padding: 8px;
            }
            
            #products tr:nth-child(even){background-color: #f2f2f2;}
            
            #products tr:hover {background-color: #ddd;}
            
            #products th {
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
			
			.info-delete {
                color: red;
            }
            .info-delete:hover {
                background:red;
                color: white;
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
					<li class="active"><a href="http://localhost:8080/eCommerceProject/admin">Home</a></li>
					<li><a href="http://localhost:8080/eCommerceProject/admin/productManagement">Product Management</a></li>
					<li><a href="http://localhost:8080/eCommerceProject/admin/customerManagement">Customer Management</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="http://localhost:8080/eCommerceProject/login"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
					
				</ul>
			</div>
		</nav>
		
		<div class="product-container" style="text-align: left">
		
			<h1>Product Inventory Page</h1>
			<p>This is the product inventory page</p>

			<form>
		
			<table BORDER="1" id="products">
				<TR>
					<TH>Product Id</TH>
					<TH>Product Name</TH>
					<TH>Description</TH>
					<TH>Price</TH>
					<TH>Picture</TH>
					<TH>Edit</TH>
				</TR>
				
			
				<%
				UtilCls util = new UtilCls();
				List<Product> prodList =  util.retProducts();
				
				for (int i=0;i<prodList.size();i++) {
					out.println(" <tr>   <td>"+prodList.get(i).getPid()+"</td><td>"+prodList.get(i).getProduct_name()+"</td><td>"+prodList.get(i).getDescription()+"<td>"+prodList.get(i).getPrice()+"</td><td>");
					
				%>
				<img width="200" height="200" src="data:image/jpeg;base64,<%= prodList.get(i).getPicture() %>" />
				</td>
				<%
				// out.println("<td><button type='submit' name="+prodList.get(i).getPid()+" value="+prodList.get(i).getPid()+">Delete</td>");
				out.println("<td><button type='submit' name="+prodList.get(i).getPid()+" value="+prodList.get(i).getPid()+">Edit</button></td>");
				%>
				</tr>
				
				<%} %>
			</table>

			</form>

			<%
				//checking if edit button is clicked
				for (int i=0;i<prodList.size();i++) {
					if (request.getParameter(Integer.toString(prodList.get(i).getPid())) != null){
						util.test(request.getParameter(Integer.toString(prodList.get(i).getPid())));
						session.setAttribute("pidToChange", prodList.get(i).getPid());
						String redirectURL = "http://localhost:8080/eCommerceProject/admin/updateProduct";
						response.sendRedirect(redirectURL);
					}
				}
			%>
			
			<a href="addProduct"><button class="btn info">Add Product</button></a>
			<a href="delProduct"><button class="btn info-delete">Delete Product</button></a>
		
		</div>
		
	    <br> 
	    
	</body>
</html>
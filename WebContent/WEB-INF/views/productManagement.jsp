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
<style>
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
</style>
</head>
<body>
<h1>Product Inventory Page</h1>
<p>This is the product inventory page</p>
<form  method="post" >
<table BORDER="1">
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
  <img width="150" height="150" src="data:image/jpeg;base64,<%= prodList.get(i).getPicture() %>" />
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
        <br> <a href="addProduct"><button>Add Product</button></a>
        <br> <a href="delProduct"><button>Delete Product</button></a>
</body>
</html>
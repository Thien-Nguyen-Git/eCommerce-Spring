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
<title>Product List</title>
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
<table BORDER="1">
    <TR>

    <TH>Product Id</TH>
    <TH>Product Name</TH>
    <TH>Description</TH>
     <TH>Price</TH>
      <TH>Picture</TH>
    </TR>
    
   
<%
DriverManager.registerDriver(new com.mysql.jdbc.Driver());
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/teamecommercedb", "root", "root");

String sql = "Select * from product";

Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(sql);

while(rs.next()) {
	out.println(" <tr>   <td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"<td>temp price</td><td>");
	//out.println("<div>"+rs.getInt(1)+ " "+rs.getString(2)+ " "+rs.getString(3)+" "+rs.getBlob(6)+" </div>");
	//Blob blob = rs.getBlob(6);
	//byte[] byteArray = blob.getBytes(1,(int)blob.length());
	byte[] temp = rs.getBytes("picture");
	String encode = Base64.getEncoder().encodeToString(temp);
	request.setAttribute("imgBase", encode);
	//response.setContentType("image/jpg");
	//OutputStream o = response.getOutputStream();
	//out.println(" <img src=\"data:image/jpg;base64,"+encode +"}\" />");
	
%>
  <img width="200" height="200" src="data:image/jpeg;base64,<%= encode %>" />
  </td>
  </tr>

 <!--  <img src="data:image/png;base64,<%= encode %>" /> -->
  <%} %>
    </table>
    <br> <a href="addProduct"><button>Add Product</button></a>
</body>
</html>
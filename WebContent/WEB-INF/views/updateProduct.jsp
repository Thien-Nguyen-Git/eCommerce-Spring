<%@page import="com.ecommerce.models.Product"%>
<%@page import="com.ecommerce.utility.UtilCls"%>
<%@ page buffer="900kb" autoFlush="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%
//redirects to index page if you try to access page w/o logging in
if(session.getAttribute("uname")==null){
	response.sendRedirect("login");
}

UtilCls util = new UtilCls();
if(session.getAttribute("uname")!=null){
	String loggedInUser = (String)session.getAttribute("uname");
	if(util.checkRoleSession(loggedInUser).equals("admin")){
		
	}
	else{
		response.sendRedirect("http://localhost:8080/eCommerceProject/home");
	}
}

%>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
</head>
<body>
Update Product Information:
<%

System.out.println(session.getAttribute("pidToChange"));
int x = (int)session.getAttribute("pidToChange");
System.out.println(util.retProductById(x));
Product p = util.retProductById(x);

%>
<form method="post">
<label for="id">ID:</label> 
					<br>
					<input type="text" id="id" name="id" value=<%=p.getPid()%> disabled required><br><br> 
					<label for="name">Product Name:</label> 
					<br>
					<input type="text" id="name" name="name" value= "<%=p.getProduct_name()%>" size="50" required>
					<br><br> 
					<label for="desc">Description:</label> 
					<br>
					<input type="text" id="desc" name="desc" value="<%=p.getDescription()%>" size="50" required>
					<br><br> 
					
					<label for="category">Category:</label> 
					<br>
					<input type="text" id="category" name="category" value=<%=p.getCategory()%> required>
					<br><br> 
					
					<label for="price">Price:</label> <br>
					<input type="number" id="price" name="price" step=".01" value=<%=p.getPrice()%> required><br> <br>
					<label for="amt">Stock Amt:</label> <br>
					<input type="number" id="amt" name="amt" value=<%=p.getStock_amt()%> required><br> <br>
					<img width="150" height="150" src="data:image/jpeg;base64,<%= p.getPicture() %>" />
					<br> <br>
					<%
					
					if (request.getParameter("update") != null) {
						String a, b, c, d, e, f;
						a = request.getParameter("id");
						b = request.getParameter("name");
						c = request.getParameter("desc");
						d = request.getParameter("category");
						e = request.getParameter("price");
						f = request.getParameter("amt");
						
						if(util.updateProduct(x, b, c, d, e,f)){
							String redirectURL = "http://localhost:8080/eCommerceProject/admin/productManagement";
							 response.sendRedirect(redirectURL);	
							
						}}
						%>
					<input type="submit" name="update" value="Update" />
					</form>
					<br> <a href="productManagement">Back</a>
</body>
</html>
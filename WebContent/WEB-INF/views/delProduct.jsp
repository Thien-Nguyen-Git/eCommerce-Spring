<%@page import="com.ecommerce.models.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.utility.UtilCls"%>
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
<title>Delete Product</title>
</head>
<body>
<form>
Select the product to delete:<select name = "pname">
<%
List<Product> prodList = util.retProducts();
for(Product p:prodList){
	out.println("<option value="+p.getPid() +">"+p.getProduct_name()+"</option>");
}
%>
</select>
<input type="submit" value="Delete">
</form>
<%
	if(request.getParameter("pname")!=null){
		String p = request.getParameter("pname");
		boolean status = util.delProduct(p);
		if(status){
			out.println("<label>Successfully Deleted Product</label>");
		}
		else{
			out.println("<label>Unsuccessful</label>");
		}
		
	}
%>
<br> <a href="productManagement">Back</a>
</body>
</html>
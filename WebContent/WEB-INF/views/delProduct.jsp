<%@page import="com.ecommerce.models.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.ecommerce.utility.UtilCls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%
UtilCls util = new UtilCls();
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
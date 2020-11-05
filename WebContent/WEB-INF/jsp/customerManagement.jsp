<%@page import="com.ecommerce.model.User"%>
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
<title>Insert title here</title>
</head>
<body>
<table border=1>
<tr><th>Name</th><th>Email</th><th>Phone</th><th>Username</th><th>Edit</th></tr>
<%
			List<User> userList = util.retLogins();
			for (User u : userList) {
				out.println("<tr><td>" + u.getName() + "</td><td>" + u.getEmail()+ "</td><td>"+u.getPhone()+ "</td><td>" + u.getUsername()
						+ "</td><td><a href=dynamicTest.html?user=" + u.getUsername()
						+ "><button class=\"btn btn-info\" >Edit</button></a></td>");
			}
		%>
</table>
</body>
</html>
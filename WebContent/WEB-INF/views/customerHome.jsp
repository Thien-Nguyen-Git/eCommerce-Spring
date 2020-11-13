<%@page import="com.ecommerce.utility.UtilCls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
	<p>Customer Page<p>
	<%
	UtilCls util = new UtilCls();
	String qstr = request.getQueryString();
	System.out.println(qstr);
	if(qstr==null){
		if(session.getAttribute("uname")==null){
			response.sendRedirect("login");
		}
		else{
			if(util.checkRoleSession((String)session.getAttribute("uname")).equals("admin")){
				response.sendRedirect("admin");
			}
			else{
				out.println("Welcome "+ (String)session.getAttribute("uname"));
			}
			
		}
	}
	else{
		qstr = qstr.replace("uname=", " ").trim();
		qstr = qstr.replace("+", " ");
		//out.println("<div> Hello user "+qstr+" </div>");
		session.setAttribute("uname", qstr);
		out.println("Welcome "+ (String)session.getAttribute("uname"));
		
	}
	
	%> | 
	<a class="nav-link" href="login"><button>Log Out</button></a>
</body>
</html>
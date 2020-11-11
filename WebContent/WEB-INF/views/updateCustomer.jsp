<%@page import="com.ecommerce.models.User"%>
<%@page import="com.ecommerce.utility.UtilCls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
</head>
<body>
Update User Information:
<%
UtilCls util = new UtilCls();
//System.out.println(session.getAttribute("idToChange"));
int x = (int)session.getAttribute("idToChange");
//System.out.println(util.returnUser(x));
User u = util.returnUser(x);

%>
<form>
<label for="id">ID:</label> 
					<br>
					<input type="text" id="id" name="id" value=<%=u.getUid()%> disabled required>
<br> <br>
					<label for="name">Name:</label> 
					<br>
					<input type="text" id="name" name="name" value=<%=u.getName()%> required>
					<br><br> 
					<label for="email">Email:</label> 
					<br>
					<input type="text" id="email" name="email" value=<%=u.getEmail()%> disabled>
					<br><br> 
					<label for="phone">Phone Number:</label>
					<br> 
					<input type="text" id="phone" name="phone" value=<%=u.getPhone()%> required>
					<br> <br>
					<label for="user">Username:</label> <br>
					<input type="text" id="user" name="user" value=<%=u.getUsername()%> required>
					<br>
					<br>
					<label for="password">Password:</label> <br>
					<input type="text" id="password" name="password" value=<%=u.getPassword()%> required><br>
					<br>
					 <label for="role">Role:</label> <br>
					<input type="text" id="role" name="role" value=<%=u.getRole()%> required><br> <br>
					  <label for="street">Street Name:</label> <br>
					<input type="text" id="street" name="street" value=<%=u.getStreet_name()%> required><br> <br>
					<label for="apt">Apt:</label> <br>
					<input type="text" id="apt" name="apt" value=<%=u.getApt()%> required><br> <br>
					<label for="city">City:</label> <br>
					<input type="text" id="city" name="city" value=<%=u.getCity()%> required><br> <br>
					<label for="state">State:</label> <br>
					<input type="text" id="state" name="state" value=<%=u.getState()%> required><br> <br>
					<label for="zip">Zip Code:</label> <br>
					<input type="text" id="zip" name="zip" value=<%=u.getZip()%> required><br> <br>
					<%
			/*		
			if(!((String)session.getAttribute("updateSuccess")).equals("null")){
						String bool = (String)session.getAttribute("updateSuccess");
						if(bool.equals("true")){
							out.println("<p style='color: green'>You have successfully updated the account info!");
							 session.setAttribute("updateSuccess","null");
						}
						else{
							out.println("<p style='color: red'>Invalid input provided!</p>");
							 session.setAttribute("updateSuccess", "null");
						}
					}*/
					
					if (request.getParameter("user") != null) {
						String a, b, c, d, e, f,g,h,i,j,k, l;
						a = request.getParameter("name");
						b = request.getParameter("email");
						c = request.getParameter("phone");
						d = request.getParameter("user");
						e = request.getParameter("password");
						f = request.getParameter("street");
						g = request.getParameter("apt");
						h = request.getParameter("city");
						i = request.getParameter("state");
						j = request.getParameter("zip");
						k = request.getParameter("role");
						//l = request.getParameter("id");
						if(util.checkRole(k)){
							if(util.checkZip(j)){
								if(util.updateUser(a, b, c, d, e,f,g,h,i,j,k,x)){
									// String redirectURL = "http://localhost:8080/EcommerceTeamProject/updateCustomer.html";
									//CrunchifySpringMVCTutorial
									String redirectURL = "http://localhost:8080/eCommerceProject/admin/customerManagement";
									 response.sendRedirect(redirectURL);	
									
								}
							}
							else {
								out.println("<p style='color: red'>Zip code must be a number!</p>");
									}
						
						}
						else {
							out.println("<p style='color: red'>Role must be either admin or user!</p>");
								}

						
					}
					
					%>
					<br> <input name="update" type="submit"
						value="Update">
</form>
<br> <a class="btn btn-primary text-center" href="admin/customerManagement">Back</a>
</body>
</html>
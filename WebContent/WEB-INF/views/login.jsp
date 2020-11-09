<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style><%@include file="/WEB-INF/css/login.css"%></style>
<title>Login</title>
</head>
<body>
	<form action="login" method="post">

			<div class="error">${errorMessage}</div>
			<div class="message">${message}</div>
			<br>
			
			<table style="text-align: center">
				<tr>
					<td><input type="text" name="username" placeholder="username" required/></td>
				</tr>
				<tr>
					<td><input type="password" name="password" placeholder="password" required/></td>
				</tr>
				<tr>
					<td><input type="submit" value="LOGIN"/></td>
				</tr>
				<tr>
					<td><p>Don't have an account? </p><a href="register">Register here</a></td>
				</tr>
			</table>
		</form>
</body>
</html>
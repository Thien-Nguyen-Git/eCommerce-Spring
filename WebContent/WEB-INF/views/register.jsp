<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
	<form action="register" method="post">
			<div class="error">${errorMessage}</div>
			<br>
			<table style="text-align: center">
				<tr>
					<td>Name </td>
					<td><input type="text" name="name" required></td>
				</tr>
				<tr>
					<td>Username </td>
					<td><input type="text" name="username" required/></td>
				</tr>
				<tr>
					<td>Password </td>
					<td><input type="password" name="password" required 
					pattern="(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,}" 
					title="Must contain at least one number, one uppercase, one lowercase letter, and at least 8 or more characters"/></td>
				</tr>
				<tr>
					<td>Email </td>
					<td><input type="text" name="email" required 
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"/></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Register"/></td>
				</tr>
				<tr>
					<td></td>
					<td><p>Already have an account?</p><a href="login">Login here</a></td>
				</tr>
			</table>
		</form>
</body>
</html>
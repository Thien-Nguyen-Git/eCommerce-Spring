<!DOCTYPE html>

<html>

	<head>
	<title>Spring MVC Tutorial by Crunchify - Hello World Spring MVC
	Example</title>
		<style type="text/css">
			/* Add a black background color to the top navigation */
			.topnav {
			  background-color: #333;
			  overflow: hidden;
			}
			
			/* Style the links inside the navigation bar */
			.topnav a {
			  float: left;
			  color: #f2f2f2;
			  text-align: center;
			  padding: 14px 16px;
			  text-decoration: none;
			  font-size: 17px;
			}
			
			/* Change the color of links on hover */
			.topnav a:hover {
			  background-color: #ddd;
			  color: black;
			}
			
			/* Add a color to the active/current link */
			.topnav a.active {
			  background-color: #4CAF50;
			  color: white;
			}
			
			table, th, td {
				border: 1px solid black;
				border-collapse: collapse;
				text-align: center;
			}
			
		</style>
	</head>

	<body>
	
		<div class="topnav">
		  <a class="active" href="#home">Home</a>
		  <a href="#news">News</a>
		  <a href="#contact">Contact</a>
		  <a href="#about">About</a>
		</div>
		
		${message}
		
		<br>
		<br>
		<div
			style="font-family: verdana; padding: 10px; border-radius: 10px; font-size: 12px; text-align: center;">
	 
			Spring MCV Tutorial by <a href="https://crunchify.com">Crunchify</a>.
			Click <a href="https://crunchify.com/category/java-tutorials/"
				target="_blank">here</a> for all Java and <a
				href='https://crunchify.com/category/spring-mvc/' target='_blank'>here</a>
			for all Spring MVC, Web Development examples.<br>
		</div>
		
		<br>
		<br>
		
		<table style="width:100%">
		  <tr>
		    <th>Name</th>
		    <th>Email</th>
		    <th>Phone</th>
		    <th>Username</th>
		    <th>Enabled</th>
		  </tr>
		  <tr>
		    <td>user1</td>
		    <td>user1@mail.com</td>
		    <td>555-555-5555</td>
		    <td>the user 1</td>
		    <td>true</td>
		  </tr>
		  <tr>
		    <td>user2</td>
		    <td>user2@mail.com</td>
		    <td>555-555-5555</td>
		    <td>the user 2</td>
		    <td>true</td>
		  </tr>
		</table>

	</body>
</html>
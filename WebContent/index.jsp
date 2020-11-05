<html>
<head>
<title>eCommerce Web Page</title>
<style type="text/css">
	body {
		background-image: url('https://cdn.crunchify.com/bg.png');
	}
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
</style>
</head>
<body>
	<div class="topnav">
	  <a class="active" href="#home">Home</a>
	  <a href="#news">News</a>
	  <a href="#contact">Contact</a>
	  <a href="#about">About</a>
	</div>
	<br>
	<div style="text-align: center">
		<h2>
			Testing default page for eCommerce<br> <br>
		</h2>
		<h3>
			<a href="welcome.html">Click here to See Welcome Message... </a>(to
			check Spring MVC Controller... @RequestMapping("/welcome"))
		</h3>
		<a href="register.html">Click here to register an account</a>
	</div>
</body>
</html>
<html>
	<head>
		<title>eCommerce Web Page</title>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <style>
            .admin-container {
                padding: 50px;
            }

            .btn-press {
                border: none;
                background-color: inherit;
                /* padding: 14px 28px;
                font-size: 16px; */
                cursor: pointer;
                display: inline-block;
                color: blue;
            }

            .btn-press:hover {
                background: blue;
                color: white;
            }

            .highlight {
                color: blue;
            }
        </style>

	</head>
	
	<body>
		
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="index.html">Sword Shop Online</a>
				</div>

				<ul class="nav navbar-nav">
					<li><a href="index.html">Home</a></li>
					<li><a href="product.html">Products</a></li>
					<!-- <li><a href="#">About Us</a></li>
					<li><a href="#">Contact Us</a></li> -->
				</ul>
				  
                <ul class="nav navbar-nav navbar-right">
					<li><a href="register.html"><span class="glyphicon glyphicon-user"></span> Register</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
					<li class="active"><a href="admin.html"><span class="glyphicon glyphicon-king"></span> Admin</a></li>
				</ul>
			</div>
		</nav>

        <br>
        
        <div class="admin-container" style="text-align: left">
            
			<h1>Administration Page</h1>
            <h3>This is the administrator page!</h3>

            <hr>

            <h2>Welcome: name | <button class="btn-press">Logout</button></h2>
            <h3><span class="highlight">Product Inventory</span></h3>
            <p>Here you can view, check and modify the product inventory!</p>

            <br>
            <br>
            
            <h3><span class="highlight">Customer Management</span></h3>
            <p>Here you can view the customer information!</p>

		</div>
	</body>
	
</html>
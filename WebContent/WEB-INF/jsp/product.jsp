<html>
	<head>
		<title>eCommerce Web Page</title>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <style>
            .product-container {
                padding: 50px;
            }

            #products {
                font-family: Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }
            
            #products td, #products th {
                border: 1px solid #ddd;
                padding: 8px;
            }
            
            #products tr:nth-child(even){background-color: #f2f2f2;}
            
            #products tr:hover {background-color: #ddd;}
            
            #products th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: center;
                background-color: #4CAF50;
                color: white;
            }

            /* button to add product */
            .btn {
                border: none;
                background-color: inherit;
                padding: 14px 28px;
                font-size: 16px;
                cursor: pointer;
                display: inline-block;
            }
            .info {
                color: dodgerblue;
            }
            .info:hover {
                background: #2196F3;
                color: white;
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
					<li class="active"><a href="product.html">Products</a></li>
					<!-- <li><a href="#">About Us</a></li>
					<li><a href="#">Contact Us</a></li> -->
				</ul>
				  
                <ul class="nav navbar-nav navbar-right">
					<li><a href="register.html"><span class="glyphicon glyphicon-user"></span> Register</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
					<li><a href="admin.html"><span class="glyphicon glyphicon-king"></span> Admin</a></li>
				</ul>
			</div>
		</nav>

        <br>
        
        <div class="product-container" style="text-align: left">
            
			<h2>Product Inventory Page</h2>
            <h3>This is the product inventory page:</h3>
            
            <table id="products">
                <tr>
                    <th>Proto Thumb</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Condition</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>

                <tr>
                    <td>image</td>
                    <td>sword</td>
                    <td>medieval</td>
                    <td>1000 years used</td>
                    <td>$1000</td>
                    <td>edit</td>
                </tr>
                <tr>
                    <td>image</td>
                    <td>sword</td>
                    <td>samurai</td>
                    <td>500 years used</td>
                    <td>$500</td>
                    <td>edit</td>
                </tr>
            </table>

            <a href="add_product.html">
                <button class="btn info">
                    Add Product
                </button>
            </a>

		</div>
	</body>
	
</html>
<!doctype html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>elexTore</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
	<script src="themes/1/js-image-slider.js" type="text/javascript"></script>
	<script type="text/javascript" src="JS/javascript.js"></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.5-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.5-dist/css/bootstrap-theme.css">	
</head>

<body>
<div id="container">

   <div class="header">
		
			<div class="logo">

			</div>
			<div class="links">
			
				<ul>
					<li><a href="signup.jsp" class="acolor" style="color:#30A2DE" >Sign Up</a></li>
					<li><a href="login.jsp" class="acolor" style="color:#30A2DE">Log In</a></li>
					<li><a href="/elextore/OrderPage.jsp" class="acolor" style="color:#30A2DE">Checkout</a></li>
					<li><a href="viewOrders.jsp" class="acolor" style="color:#30A2DE">Your Orders</a></li>
					<li><b><i><a style="color:#1F4255"  href="">Welcome </a></i></b></li>
					
					<li><a href="/elextore/LogOutServlet" class="acolor" style="color:#30A2DE">Log Out</a></li>
					
				</ul>
				
				<div class="cart" onclick="window.location ='/elextore/OrderPage.jsp';">
				
				<div class="cart_full" onclick="window.location ='/elextore/OrderPage.jsp';">
				
				
				</div>
			
			</div>
		</div>
		&nbsp

		<div class="navigatation">
			<ul>
				<li><a href="/elextore/index.jsp">Home</a></li>
				

				<li><a href="aboutus.jsp">About Us</a></li>

				<li><a href="/elextore/contactus.jsp">Contact Us</a></li>
			</ul>
			
			
			
			
			
			<div class="search" style="right:50px">
			
			<div class="right-inner-addon " >
    <i class="icon-search"></i>
    <input type="search"
           class="form-control" 
           placeholder="Search" />
           <button>search</button>	
          
</div>
		 		
			</div>


<div class="search" style="float:right">
			</div>


		</div>
		<br><br><br><br><br><br><br>
		<div id="sliderFrame">
					<div id="slider">
					<a href="images/mainpage/image1.jpg" target="_blank">
						<img src="images/mainpage/image1.jpg" alt="Welcome to elexTore.com" />
					</a>
					<img src="images/mainpage/image2.jpg" alt="" />
					<img src="images/mainpage/image3.jpg" alt="" />
					</div>
		</div>
		<br><br>

    <div id="body">		

	<section id="content">
<div class="well">
   <div class="row">
           <div class="col-lg-4"><h3>Product Details</h3>
		   <img src = "images/computer/acer.jpeg" width = "200" height = "200" alt = "Microsoft - Xbox - Black"></div>
		   
            <div class="col-lg-6" style="border:2px solid grey">
            <div class="sku-model"><ul><li class="model-number"><span class="sku-label">Model:
				</span> <span id="model-value" itemprop="model">7UV-00077</span></li><li class="sku-id">
				<span class="sku-label">SKU:</span> <span id="sku-value" itemprop="productID">9008182</span>
				</li><li class="release-date"><span class="sku-label">Release Date:</span> <span id="release-date-value">11/22/2013</span>
				</li></ul></div>
				<div><button type="button" class="btn btn-primary">Buy</button><br></br>
				<button type="button" class="btn btn-primary">Add to Cart</button><br></br>
				<button type="button" class="btn btn-primary">Write Reviews</button><br></br>
				<button type="button" class="btn btn-primary">View Reviews</button></div>
            </div>
           
   </div>
</div>
	   
	
	    </section>
        
   		<div class="footer">
				
				<p>elexTore powered by Sabya Mitesh Deepansha Snehal Nikhil</p>
				
				</div>

</body>

</html>
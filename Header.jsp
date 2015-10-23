<%@page import="mybean.UserBean" %>
<html>
<TITLE>elexTore</TITLE>
<head>

<link rel="stylesheet" type="text/css" href="css/style.css">
<link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
<script src="themes/1/js-image-slider.js" type="text/javascript"></script>
 <script type="text/javascript" src="JS/javascript.js"></script>

<link href="css/generic.css" rel="stylesheet" type="text/css" />
<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.5-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.5-dist/css/bootstrap-theme.css">	
 -->
</head>


<body onload='init()'>
	<%
	String cartItems="";
	try{
		cartItems = session.getAttribute("cartItems").toString();
		if (cartItems == null){
			session.setAttribute("cartItems","0");
			cartItems = "0";
		}
	}
	catch(Exception e){
		cartItems = "0";
	}
	UserBean usrBean=null;
	String userName="";
	try{
		usrBean = (UserBean)session.getAttribute("usrbean");

		if (usrBean == null){
			userName = "Guest";
		}
		else{
			userName=usrBean.getFirstName();
			
		}
	}
	catch(Exception e){
		cartItems = "0";
	}
	
	%>
	<div id="container">
	
		<div class="header">
		
			<div class="logo">

			</div>
			<div class="links">
			
				<ul>
					<li><a href="signup.jsp" class="acolor" style="color:#30A2DE" >Registration</a></li>
						<%if(userName.equals("Guest")){%>
					<li><a href="login.jsp" class="acolor" style="color:#30A2DE">Log In</a></li>
					<%}%>
					<li><a href="/elextore/OrderPage.jsp" class="acolor" style="color:#30A2DE">Checkout</a></li>
					<li><a href="viewOrders.jsp" class="acolor" style="color:#30A2DE">View Orders</a></li>
					<li><b><i><a style="color:#1F4255"  href="">Welcome <%= userName%></a></i></b></li>
					<%if(!(userName.equals("Guest"))){%>
					<li><a href="/elextore/LogOutServlet" class="acolor" style="color:#30A2DE">Log Off</a></li>
					<%}%>
				</ul>
				
				<% if(cartItems.equals("0")) { %>
				
				<div class="cart" onclick="window.location ='/elextore/OrderPage.jsp';">
				
				<% } else { %>
				
				<div class="cart_full" onclick="window.location ='/elextore/OrderPage.jsp';">
				
				<% } %>
				
				</div>
				<p><%=cartItems%></p>
			
			</div>
		</div>
		&nbsp
		<div class="navigatation">
			<ul>
				<li><a href="/elextore/index.jsp">Home</a></li>
				<li><a href="aboutus.jsp">About</a></li>
				<li><a href="/elextore/contactus.jsp">Contacts</a></li>
			</ul>
			
			
			
			
			
			<div class="search" style="right:50px">
			<!-- <form name='autofillform' action='autocomplete'> -->
			<div class="right-inner-addon " >
    <i class="icon-search"></i>
    <input type="search"
           class="form-control" 
           placeholder="Search" />
           <button>search</button>	
          
</div>
		 		<!-- <input type='text' size='40' id='complete-field'  onkeyup='doCompletion()'>
				<input type="submit"  value="" >
				 --><!-- <table id="complete-table"> 
				</table> -->
				
			<!-- </form> -->
			</div>


<div class="search" style="float:right">
			<!-- <form name='autofillform' action='autocomplete'> -->
			
				
          

		 	<!-- <input type='text' size='40' id='complete-field'  onkeyup='doCompletion()'>
				<input type="submit"  value="" >
				 --><!-- <table id="complete-table"> 
				</table> -->
				
			<!-- </form> -->
			</div>


		</div>
		<br>
		
			<TABLE BORDER="0" WIDTH="100%">
			<tr>
				<td ALIGN="LEFT" WIDTH="10%" style="padding-left:20px">
				
				<H3><img src="images/products.png" alt="" /></H3>
				<a href="Products.jsp?category=casuals" class="products" >Appliances</a>
				<br><br>
				<a href="Products.jsp?category=Equipments" class="products" >TV & Home Theater</a>
				<br><br>
				<a href="Products.jsp?category=footwear" class="products" >Computers & Tablets</a>
				<br><br>
				<a href="Products.jsp?category=men" class="products" >Cameras & Camcorders</a>
				<br><br>
				<a href="Products.jsp?category=women" class="products" >Audio</a>
				<br><br>
							
				</td>
				
				<td ALIGN="center" WIDTH="80%">
				
				<div id="sliderFrame">
					<div id="slider">
					<a href="images/mainpage/image1.jpg" target="_blank">
						<img src="images/mainpage/image1.jpg" alt="Welcome to elexTore.com" />
					</a>
					<img src="images/mainpage/image2.jpg" alt="" />
					<img src="images/mainpage/image3.jpg" alt="" />
					</div>
				</div>
				</td>
				
			</tr>
			</table>
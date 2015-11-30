<%@page import="mybean.UserBean" %>
<html>
<TITLE>elexTore</TITLE>
<head>

<link rel="stylesheet" type="text/css" href="css/style.css">
<link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
<script src="themes/1/js-image-slider.js" type="text/javascript"></script>
 <script type="text/javascript" src="JS/javascript.js"></script>

<link href="css/generic.css" rel="stylesheet" type="text/css" />
</head>

<body onload='init()'; background="images/mainpage/image2.jpg">
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
			<div class="headertop_desc">
			<div class="call">
				 <p><span>Need help?</span> call us <span class="number">1-22-3456789</span></span></p>
			</div>
			<div class="account_desc">
				<ul>
					<li><a href="signup.jsp" class="acolor" style="color:#30A2DE" >Sign Up</a></li>
						<%if(userName.equals("Guest")){%>
					<li><a href="login.jsp" class="acolor" style="color:#30A2DE">Log In</a></li>
					<%}%>
					<li><a href="/elextore/OrderPage.jsp" class="acolor" style="color:#30A2DE">Checkout</a></li>
					<li><a href="viewOrders.jsp" class="acolor" style="color:#30A2DE">Your Orders</a></li>
					<li><b><i><a style="color:#1F4255"  href="">Welcome <%= userName%></a></i></b></li>
					<%if(!(userName.equals("Guest"))){%>
					<li><a href="/elextore/LogOutServlet" class="acolor" style="color:#30A2DE">Log Out</a></li>
					<%}%>
				</ul>
			</div>
			</div>
		<div class="header_top">
			<div class="header_top">
			<div class="logo">
			</div>
			<div class="links">
			<ul></ul>
				
				<% if(cartItems.equals("0")) { %>
				
				<div class="cart" onclick="window.location ='/elextore/OrderPage.jsp';">
				
				<% } else { %>
				
				<div class="cart_full" onclick="window.location ='/elextore/OrderPage.jsp';">
				
				<% } %>
				
				</div>
				<p><%=cartItems%></p>
			
			</div>
		</div>
		</div>
		&nbsp

		<div class="navigatation">
			<ul>
				<li><a href="/elextore/index.jsp">Home</a></li>
				<li><a href="/elextore/aboutus.jsp">About Us</a></li>
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

<div>


<aside class="sidebar">		
<div>
<span class="title-text"><strong>Top Dell Brands</strong></span>
<div class="nav-section-cat-list"> 
<li><a href="/dell" title="Dell" data-tracking-id="Top Brands_Dell">Alienware 15</a></li>
<li><a href="/lenovo" title="Dell" data-tracking-id="Top Brands_Dell">Latitude 14</a></li> 
<li><a href="/hp" title="Dell" data-tracking-id="Top Brands_Dell">Dell Chrombook 11</a></li>
<li><a href="/laptops/samsung~brand/pr?sid=tyy,4io" title="Dell" data-tracking-id="Top Brands_Dell">Dell isnpiron 13 7000 series</a></li> 
<li><a href="/asus" title="Dell" data-tracking-id="Top Brands_Asus">Dell inspiron 14</a> </li>
<li><a href="/laptops/apple~brand/pr?sid=tyy,4io" title="Dell" data-tracking-id="Top Brands_Dell">Dell Precision M3800</a></li>
<li><a href="/laptops/nokia~brand/pr?sid=tyy,4io" title="Dell" data-tracking-id="Top Brands_Dell">Dell XPS 15 Touch</a></li>
<li><a href="/laptops/sony~brand/pr?sid=tyy,4io" title="Dell" data-tracking-id="Top Brands_Dell">Dell XPS 13 Touch</a></li>

 </div> 
 
 <div>
 <span class="title-text"><strong>Price</strong></span></div> 
 <div class="nav-section-cat-list"> 
 <li><a  href="/laptops/" title="$ 300 and Below" data-tracking-id="Price_$ 300 and Below">$ 300 and Below</a></li> 
 <li><a  href="/laptops/" title="$ 300 - $ 500" data-tracking-id="Price_$ 300 - $ 500">$ 300 - $ 500</a></li> 
 <li><a  href="/laptops/" title="$ 500 - $ 700" data-tracking-id="Price_$ 500 - $ 700">$ 500 - $ 700</a> </li>
 <li><a  href="/laptops/" title="$ 700 - $ 900" data-tracking-id="Price_$ 700 - $ 900">$ 700 - $ 900</a> </li>
 <li><a  href="/laptops/" title="$ 900 - $ 1100" data-tracking-id="Price_$900 - $ 1100">$ 900 - $ 1100</a> </li>
 <li><a  href="/laptops/" title="$ 1100 and Above" data-tracking-id="Price_$ 1100 and Above">$ 1100 and Above</a></li>
 </div>
 </div>
 </aside>

        <div style="position: absolute; top: 400px; left: 300px; ">
            <table>
			<tr>
			<td>
			<img src="images/dellinspiron3542.jpg"  width="200" height="200"/>
			</td>
			</tr>
			<tr><td><a>Dell Inspiron 3542 Notebook</a></td></tr>
            <tr><td><Button  style="width:100; height:50">Buy</Button>
			<Button  style="width:100; height:50">Add to Cart</Button></td></tr>
			</table>
		</div>
		
		<div style="position: absolute; top: 400px; left: 600px; ">
            <table>
			<tr>
			<td>
			<img src="images/delllatitude14.jpg"  width="200" height="200"/>
			</td>
			</tr>
			<tr><td><a>Dell Latitude 14</></td></tr>
             <tr><td><Button  style="width:100; height:50">Buy</Button>
			<Button  style="width:100; height:50">Add to Cart</Button></td></tr>
			
			</table>
		</div>
		
		<div style="position: absolute; top: 400px; left: 900px; ">
            <table>
			<tr>
			<td>
			<img src="images/dellinspiron13 7000series.jpg"  width="200" height="200"/>
			</td>
			</tr>
			<tr><td><a>Dell Inspiron 13 7000 series</a></td></tr>
             <tr><td><Button  style="width:100; height:50">Buy</Button>
			 <Button  style="width:100; height:50">Add to Cart</Button></td></tr>
			</table>
		</div>
		
		<div style="position: absolute; top: 700px; left: 300px; ">
            <table>
			<tr>
			<td>
			<img src="/images/dellalienware15.jpg"  width="200" height="200"/>
			</td>
			</tr>
			<tr><td><a>Alienware 15</a></td></tr>
             <tr><td><Button  style="width:100; height:50">Buy</Button>
			<Button  style="width:100; height:50">Add to Cart</Button></td></tr>
			</table>
		</div>
		
		<div style="position: absolute; top: 700px; left: 600px; ">
            <table>
			<tr>
			<td>
			<img src="images/dellprecisionM3800.jpg"  width="200" height="200"/>
			</td>
			</tr>
			<tr><td><a>Dell Precision M3800</a></td></tr>
             <tr><td><Button  style="width:100; height:50">Buy</Button>
			<Button  style="width:100; height:50">Add to Cart</Button></td></tr>
			</table>
		</div>
		
		<div style="position: absolute; top: 700px; left: 900px; ">
            <table>
			<tr>
			<td>
			<img src="images\dellxps15.jpg"  width="200" height="200"/>
			</td>
			</tr>
			<tr><td><a>Dell XPS 15 Touch</a></td></tr>
             <tr><td><Button  style="width:100; height:50">Buy</Button>
			<Button  style="width:100; height:50">Add to Cart</Button></td></tr>
			</table>
		</div>

		</body>
		
 </html>
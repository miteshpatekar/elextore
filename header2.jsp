<%@page import="mybean.UserBean" %>
<html>
<TITLE>elexTore</TITLE>
<head>

<link rel="stylesheet" type="text/css" href="css/style.css">
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
		</div>
		</div>
		</body>
		</html>
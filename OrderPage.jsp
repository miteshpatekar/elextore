<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- 
Simple example of jsp:useBean and manipulating properties
with jsp:setProperty and jsp:getProperty and
with explicit Java code in scriptlets and expressions. 

Taken from Core Servlets and JavaServer Pages 2nd Edition
from Prentice Hall and Sun Microsystems Press,
http://www.coreservlets.com/.
(C) 2003 Marty Hall; may be freely used or adapted.
-->

<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="mybean.*" %>
<%@page import="java.text.*" %>


			<%@include file="Header.jsp"%>
			<HEAD><TITLE><%= title %></TITLE></HEAD>co
                <BODY BGCOLOR="#FDF5E6">

					<div class="row">
   <div class="col-xs-4 description">
   <div class="row"><div class="col-xs-6 media">
   
   </div><div class="col-xs-6 details"><div class="row">
     <div class="row">
   <div class="col-xs-12"></div></div></div></div></div>
  <div class="col-xs-12">
  <form class="form-horizontal" role="form">
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Name:</label>
    <div class="col-sm-9">
      <input type="email" class="form-control" id="email" placeholder="Enter name">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Address:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" id="pwd" placeholder="Enter address">
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Phone Number:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" id="pwd" placeholder="Enter phone number">
    </div>
  </div>
     <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Credit Card:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" id="pwd" placeholder="Enter credit card">
    </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Date:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" id="pwd" placeholder="Enter Date">
    </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">CVV:</label>
    <div class="col-sm-10"> 
      <input type="password" class="form-control" id="pwd" placeholder="Enter CVV">
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
     <button type="button" class="btn btn-primary">Check Out</button>
    </div>
  </div>
</form>
	</div>		
      <%} else {
			session.setAttribute("cartItems",itemsOrdered.size());
        %>
   
    
	<%@include file="Header.jsp"%>
		<HEAD><TITLE><%= title %></TITLE></HEAD>
                <BODY BGCOLOR="#FDF5E6">
              	<div class="orders">
					<h2>Order Items in your cart</h2> 
				
		
		  <div class="order"> 
		  
		  
			<img src=" <%=order.getImagePath()%> " alt="Smiley face" height="150" width="50"> 
			<div class="orderdetail">
			<h1 style="color:green"> <%=formatter.format(order.getTotalCost())%> </h1>
			<p> <b>Order Id: <%=order.getItemID()%> </b></p>
			<p> <b>Order Description : </b><%=order.getShortDescription()%></p>
			<FORM>
					<INPUT TYPE="HIDDEN" NAME="itemID" VALUE=<%=order.getItemID()%>>
					<INPUT  class="updatecount" TYPE="TEXT" NAME="numItems" VALUE=<%=order.getNumItems()%>>
             <SMALL>
             <INPUT TYPE="SUBMIT" VALUE="Update Order">
             </SMALL>
			 </FORM> </div>
			 </div>
			 
			 
	  
		   
		 <%@include file="footer.jsp"%>
      </BODY></HTML>
    

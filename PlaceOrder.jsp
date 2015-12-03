<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@include file="Header.jsp"%>



<H1 ALIGN="CENTER">Add your personal details for this order</H1>
<FORM ACTION="submitOrder.jsp" 
      METHOD="Get">
  <HR>
  <TABLE id="order_form">
  <%
  if(userName.equals("Guest") || userBean==null){
  %>
  
	<TR><TD>First Name:</TD><TD> <INPUT TYPE="TEXT" NAME="firstName"></TD></TR>
	<TR><TD>Last Name:</TD><TD> <INPUT TYPE="TEXT" NAME="lastName"></TD></TR>
	<TR><TD>Email Id:</TD><TD> <INPUT TYPE="TEXT" NAME="email"</TD></TR>
	<TR><TD>Shipping Address:</TD><TD><TEXTAREA NAME="address" ROWS='3' COLS='40'></TEXTAREA></TR>
	<%}
	else{
	
	%>
	
	<TR><TD>First Name:</TD><TD> <INPUT TYPE="TEXT" NAME="firstName" value=<%=userBean.getFirstName()%>></TD></TR>
	<TR><TD>Last Name:</TD><TD> <INPUT TYPE="TEXT" NAME="lastName" value=<%=userBean.getLastName()%>></TD></TR>
	<TR><TD>Email Id:</TD><TD> <INPUT TYPE="TEXT" NAME="email" value=<%=userBean.getEmail() %>></TD></TR>
	
	<TR><TD>Shipping Address:</TD><TD><TEXTAREA NAME="address" ROWS='3' COLS='40' ><%=userBean.getShippingAddress()%></TEXTAREA></TR>
	<%}%>
	
  <TR><TD>Credit Card Number:</TD><TD><INPUT TYPE="PASSWORD" NAME="cardNum"></TD></TR>
  <TR><TD>Date:</TD><TD><INPUT TYPE="text" NAME="validity"></TD></TR>
  <TR><TD>CCV:</TD><TD><INPUT TYPE="PASSWORD" NAME="ccv"></TD></TR>
  <TR></TR><TR></TR><TR></TR><TR></TR><TR></TR><TR></TR><TR></TR><TR></TR>
  <TD></TD><TD><INPUT align='right' class="btn btn-success" TYPE="SUBMIT" VALUE="Submit Order"></TD></TABLE>
</FORM>
</BODY>
<%@include file="footer.jsp" %>
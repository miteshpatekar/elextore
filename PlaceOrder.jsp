<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@include file="header2.jsp"%>
<HTML>
<HEAD>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
  <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script>
$(function() {
    $( "#datepicker" ).datepicker();
});
</script>
<script type="text/javascript">

function validateInfo(){
	
	var x = document.forms["userForm"]["email"].value;
	var y= document.forms["userForm"]["cardNum"].value;
	var z= document.forms["userForm"]["ccv"].value;
	var isGoodMatch = y.match(/^[0-9\s(-)]*$/);
	var isMatch = z.match(/^[0-9\s(-)]*$/);
		var atpos = x.indexOf("@");
		var dotpos = x.lastIndexOf(".");
	if (!isGoodMatch) {
        alert("The Card Number contains invalid characters.");
        return false;
    }	
	else if(document.userForm.firstName.value==""){
		alert("Please Enter First Name: ");
		return false;
	}
	else if(document.userForm.lastName.value==""){
		alert("Please Enter Last Name: ");
		return false;	
	}
	else if(x==""){
		alert("Please Enter Email: ");
		return false;
	}
	else if (atpos< 1 || dotpos<atpos+2 || dotpos+2>=x.length){
		alert("Not a valid e-mail address");
        return false;
	}
	else if(document.userForm.address.value==""){
		alert("Please Enter Address: ");
		return false;	
	}
	else if(y==""){
		alert("Please Enter Credit Card Details: ");
		return false;	
	}
	else if(z==""){
		alert("Please Enter CCV: ");
		return false;	
	}
	else if (!isMatch) {
        alert("Please Enter valid CCV number:");
        return false;
    }
	
	else{
		document.userForm.submit();
		return true;
	}
	
}

</script>
<%
 MongoClient mongo = new MongoClient("52.11.50.218", 27017);
Boolean isCouponExist=false;
int discount=0;
double total1=0;
String error="";
           HttpSession s=request.getSession();                        
            int total=(Integer)s.getAttribute("total");

			DB db = mongo.getDB("Elextore");
			DBCollection collection = db.getCollection("couponCodes");

            String couponCode=request.getParameter("couponCode");
System.out.println("enterre@@@@@@@"+couponCode );
       try{


         if(couponCode!=null)
         {
            //if(couponCode.equals("couponCode"))
           // {
            	System.out.println("enterre@@@@@@@");
			BasicDBObject whereQuery = new BasicDBObject();
			whereQuery.put("couponCode", couponCode);
			//BasicDBObject whereQuery1 = new BasicDBObject();
			DBCursor cursor = collection.find(whereQuery);
			while(cursor.hasNext()) {
				isCouponExist=true; 
				BasicDBObject obj = (BasicDBObject) cursor.next();	
				 String discount1= obj.get("discount").toString();
				 discount=Integer.parseInt(discount1);
				 System.out.println("enterre@@@@@@@" + discount+" "+ total);
				}

				if(isCouponExist)
				{
					 total1=(total*discount)/100;
					 System.out.println("Final$$$$$" + total1);
					s.setAttribute("total",total1);
				}
				else
				{
					error="Coupon doesnt exists";
				}
           // }
        }
    }catch(Exception e)
    {}
        %>
    
</HEAD>
<BODY>
<H1 ALIGN="CENTER">Add your personal details for this order</H1>
<form action="PlaceOrder.jsp" method="get">
	<h3>Total Price =<%=total%> </h3>
	<INPUT TYPE="TEXT" NAME="couponCode">
	<input type="submit" class="btn btn-success" value="Apply Code">
</form>

<FORM NAME="userForm" ACTION="submitOrder.jsp" onsubmit="return validateInfo()" METHOD="POST">
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
	
	<TR><TD>Shipping Address:</TD><TD><TEXTAREA NAME="address" ROWS='3' COLS='40' ></TEXTAREA></TR>
	<%}%>
	
  <TR><TD>Credit Card Number:</TD><TD><INPUT TYPE="TEXT" NAME="cardNum"></TD></TR>
<TR><TD>Date: </TD><TD><INPUT TYPE="Date" NAME="date"></TD><TD>
  
  <TR><TD>CCV:</TD><TD><INPUT TYPE="TEXT" NAME="ccv"></TD></TR>
  <TR></TR><TR></TR><TR></TR><TR></TR><TR></TR><TR></TR><TR></TR><TR></TR>
  <TD></TD><TD><INPUT align='right' class="btn btn-success" name="button" TYPE="SUBMIT" VALUE="Submit Order">
  
  </TD></TABLE>
</FORM>

</BODY>
<%@include file="footer.jsp" %>
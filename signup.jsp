<%@include file="header2.jsp" %>

<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="mybean.*" %>
<%@page import="java.text.*" %>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
<script src="themes/1/js-image-slider.js" type="text/javascript"></script>
 <script type="text/javascript" src="JS/javascript.js"></script>

<link href="css/generic.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

function validateInput(){
	
	var x = document.forms["signupForm"]["email"].value;
		var atpos = x.indexOf("@");
		var dotpos = x.lastIndexOf(".");
		
	if(document.signupForm.first_name.value==""){
		alert("Please Enter First Name: ");
		return false;
	}
	else if(document.signupForm.last_name.value==""){
		alert("Please Enter Last Name: ");
		return false;	
	}
	else if(document.signupForm.password.value==""){
		alert("Please Enter PassWord: ");
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
	else{
		document.signupForm.submit();
		return true;
	}
	
}

</script>
	
	<br>
				<div id="container">
				<div id="wrapper">
				<div id="sliderFrame">

        <form action="/sports4hawks/AddUser" name="signupForm" >
            <fieldset align="center">
                <legend>Register Form</legend>
                <div>
					<div class="small">First Name: </div>
                    <input type="text" name="first_name" placeholder="First Name"/>
                </div>
                <div>
					<div class="small">Last Name: </div>
                    <input type="text" name="last_name" placeholder="Last Name "/>
                </div>
                <div>
					<div class="small">Password: </div>
                    <input type="password" name="password" placeholder="Password"/>
                </div>
                <div>
					<div class="small">Email: </div>
                    <input type="text" name="email" placeholder="Email"/>
                </div>
                <div> 
                <input type="button" name="button" value="Register" onclick="return validateInput()"  />
                <div id="slider">
					<a href="images/mainpage/image1.jpg" target="_blank">
					<img src="images/mainpage/images1.jpg" alt="Welcome to elexTore.com" />
					</a>
					<img src="images/mainpage/images2.jpg" alt="" />
					<img src="images/mainpage/images3.jpg" alt="" />
					</div>
            </fieldset>  

        </form>


		</div>
    </div>

    
				</td>
			
			</tr>
			
			</div>
	
	</div>
</body>
</html>

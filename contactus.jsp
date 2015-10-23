<%@include file="header2.jsp" %>
		<br>
		
			<TABLE BORDER="0" WIDTH="100%">
			<tr>
				<td ALIGN="LEFT" WIDTH="10%">
				
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
				

				
				<td>
				
				
				<div id="wrapper">
        <form action="SendEmail" method="post" name="contactus" >
            <fieldset>
                <legend>Contact Us</legend>
				
				<div>
					<div class="small">First Name: </div>
                    <input type="text" name="firstname" placeholder="First Name"/>
                </div>
				
				<div>
					<div class="small">Last Name: </div>
                    <input type="text" name="lastname" placeholder="Last Name"/>
                </div>
                <div>
					<div class="small">Email ID: </div>
                    <input type="text" name="email_id" placeholder="Emaid Address"/>
                </div>
                <div>
					<div class="small">Password : </div>
                    <input type="password" name="pass" placeholder="Password of your Email Id "/>
                </div>
                <div>
					<div class="small">Title : </div>
                    <input type="text" name="subject" placeholder="Enter your Title"/>
                </div>
                
                <div>
					
                    <div class="small">Shipping Address: </div>
                    <textarea name="body" placeholder="Write your Query"></textarea>
                </div>    
                <input type="submit" value="Send"/>
            </fieldset>    
        </form>
    </div>
	<h3 align="left"> Click on SEND Button to send query/request to admin </h3>
				</td>
			</tr>
			</table
	</div>
</body>
</html>

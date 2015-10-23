
<%@page import="mybean.CatalogItem" %>
<%@page import="myclasses.Catalog" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>

<%

	
	String filePath=request.getRealPath("Data/ProductCatalog.txt");
	Catalog catalog= new Catalog();
	HashMap catalogItems= catalog.getProductsItems();
	try
      {
		 File f=new File(filePath);  
		 
		FileOutputStream fileOut =new FileOutputStream(f);
		ObjectOutputStream fout = new ObjectOutputStream(fileOut);
        fout.writeObject(catalogItems);
         fout.close();
         fileOut.close();
         System.out.printf("Serialized data is saved in file ");
      }catch(IOException i)
      {
          i.printStackTrace();
      }
	
	
%>

<%@include file="Header.jsp"%>

			
			<div class="itemgrid">
				<h3>Featured Products</h3>
				
				<div class="items" style="margin-left:20px">
					<ul>

				
                <li>
                <img src="images/mainpage/image4.jpg" alt="No Image found for this product" width="250" height="238">
                <h3>Whirlpool Washing Machine</h3>
                <p><b>$800 <a href="/elextore/OrderPage.jsp?itemID=4"> Add To Cart </a></b></p>
                </li>
                <li>
                <img src="images/mainpage/image5.jpg" alt="No Image found for this product" width="250" height="238">
                <h3>Samsung LED TV</h3>
                <p><b>$999 <a href="/elextore/OrderPage.jsp?itemID=5"> Add To Cart </a></b></p>
                </li>
                <li>
                <img src="images/mainpage/image6.jpg" alt="No Image found for this product" width="250" height="238">
                <h3>Apple MacBook Pro</h3>
                <p><b>$1999 <a href="/elextore/OrderPage.jsp?itemID=6"> Add To Cart </a></b></p>
                </li>
                <li>
                <img src="images/mainpage/image7.jpg" alt="No Image found for this product" width="250" height="238">
                <h3>Google Nexus 6</h3>
                <p><b>$600 <a href="/elextore/OrderPage.jsp?itemID=7"> Add To Cart </a></b></p>
                </li>
				

				
				</ul>
				
					
				</div>
				
				<div class="footer">
				
				<p>elexTore powered by Sabya Mitesh Deepansha Snehal Nikhil</p>
				
				</div>
				
			</div>
		

	</div>
	



</body>


</html>

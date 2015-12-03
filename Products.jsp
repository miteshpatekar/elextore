 
<%@include file="Header.jsp"%>

<%
   String productName = "";
    String imageLocation = " ";
    int productPrice = 0;
  
          MongoClient mongo = new MongoClient("52.11.50.218", 27017);
                        
            DB db = mongo.getDB("Elextore");
            DBCollection collection = db.getCollection("products");
            BasicDBObject whereQuery = new BasicDBObject();
            String category=request.getParameter("category");
            
            DBCursor cursor = collection.find();
%>

<body>
<div class="well">
    <div class="row">
			<div class="col-lg-2">
            <div class="col-lg-2">Filter by Brand Name:
            	<div class="input-group">
      				<span class="input-group-addon">
       				<input type="checkbox" aria-label="...">
        			<a href="/dell" title="Dell" data-tracking-id="Top Brands_Dell">Alienware 15</a>
      				</span>   
    			</div>
    			<div class="input-group">
      				<span class="input-group-addon">
       				<input type="checkbox" aria-label="...">
        			<a href="/lenovo" title="Dell" data-tracking-id="Top Brands_Dell">Latitude 14</a>
      				</span>   
    			</div>
    			<div class="input-group">
      				<span class="input-group-addon">
       				<input type="checkbox" aria-label="...">
        			<a href="/hp" title="Dell" data-tracking-id="Top Brands_Dell">Dell Chrombook 11</a>
      				</span>   
    			</div>
				<div class="input-group">
      				<span class="input-group-addon">
       				<input type="checkbox" aria-label="...">
        			<a href="/hp" title="Dell" data-tracking-id="Top Brands_Dell">Dell inspiron 13</a>
      				</span>   
    			</div>
				<div class="input-group">
      				<span class="input-group-addon">
       				<input type="checkbox" aria-label="...">
        			<a href="/hp" title="Dell" data-tracking-id="Top Brands_Dell">Dell inspiron 14</a>
      				</span>   
    			</div>
				<div class="input-group">
      				<span class="input-group-addon">
       				<input type="checkbox" aria-label="...">
        			<a href="/hp" title="Dell" data-tracking-id="Top Brands_Dell">Dell Precision M3800</a>
      				</span>   
    			</div>
				<div class="input-group">
      				<span class="input-group-addon">
       				<input type="checkbox" aria-label="...">
        			<a href="/hp" title="Dell" data-tracking-id="Top Brands_Dell">Dell XPS 15 </a>
      				</span>   
    			</div>
				<div class="input-group">
      				<span class="input-group-addon">
       				<input type="checkbox" aria-label="...">
        			<a href="/hp" title="Dell" data-tracking-id="Top Brands_Dell">Dell XPS 13 </a>
      				</span>   
    			</div>
			
			<div class="col-lg-2">Filter by Price:
            	<div class="input-group">
      				<span class="input-group-addon">
       				<input type="checkbox" aria-label="...">
        			<a  href="/laptops/" title="$ 300 and Below" data-tracking-id="Price_$ 300 and Below">$ 300 and Below</a>
      				</span>   
    			</div>
    			<div class="input-group">
      				<span class="input-group-addon">
       				<input type="checkbox" aria-label="...">
        			<a  href="/laptops/" title="$ 300 - $ 500" data-tracking-id="Price_$ 300 - $ 500">$ 300 - $ 500</a>
      				</span>   
    			</div>
    			<div class="input-group">
      				<span class="input-group-addon">
       				<input type="checkbox" aria-label="...">
        			<a  href="/laptops/" title="$ 500 - $ 700" data-tracking-id="Price_$ 500 - $ 700">$ 500 - $ 700</a>
      				</span>   
    			</div>
				<div class="input-group">
      				<span class="input-group-addon">
       				<input type="checkbox" aria-label="...">
        			<a  href="/laptops/" title="$ 700 - $ 900" data-tracking-id="Price_$ 700 - $ 900">$ 700 - $ 900</a>
      				</span>   
    			</div>
				<div class="input-group">
      				<span class="input-group-addon">
       				<input type="checkbox" aria-label="...">
        			<a  href="/laptops/" title="$ 900 - $ 1100" data-tracking-id="Price_$900 - $ 1100">$ 900 - $ 1100</a>
      				</span>   
    			</div>
				<div class="input-group">
      				<span class="input-group-addon">
       				<input type="checkbox" aria-label="...">
        			<a  href="/laptops/" title="$ 1100 and Above" data-tracking-id="Price_$ 1100 and Above">$ 1100 and Above</a>
      				</span>   
    			</div>
				
			</div>
			</div>
			</div>
             <div class="col-lg-10" style="border-left:2px solid grey">
             	<h3 >Products <%=category%></p>

             		<div class="itemgrid">
				<h2>Featured Products</h2>
				
				<div class="items" style="margin-left:20px">
				<ul>		
         <%
     while(cursor.hasNext()) {

                BasicDBObject obj = (BasicDBObject) cursor.next();

           
                    Object orderId=(Object)obj.get("_id");
             //  System.out.println(obj.get("Manufacturer")+"----");
               String str=(String)obj.get("category");
           if(str.equals(category))
           {
 

%>
		<a href='productDetails.jsp?productId=<%=orderId.toString()%>'>
                <li>
                <img src='<%=obj.get("imagePath")%>' alt="No Image found for this product" width="250" height="238">
                <h4><%=obj.get("name")%></h4>
                <p><b>$<%=obj.get("price")%> <a href='cart.jsp?productId=<%=orderId.toString()%>'> Add To Cart </a></b></p>
                </li>
                </a>
                <%}%>
               <!--  <li>
                <img src="images/dellinspiron13 7000series.jpg" alt="No Image found for this product" width="250" height="238">
                <h4>Dell Inspiron13 7000series</h4>
                <p><b>$500 <a href="/elextore/OrderPage.jsp?itemID=5"> Add To Cart </a></b></p>
                </li>
                <li>
                <img src="images/dellalienware15.jpg" alt="No Image found for this product" width="250" height="238">
                <h4>Alienware 15</h4>
                <p><b>$1999 <a href="/elextore/OrderPage.jsp?itemID=6"> Add To Cart </a></b></p>
                </li>
				<li>
                <img src="images/dellprecisionM3800.jpg" alt="No Image found for this product" width="250" height="238">
                <h4>Dell Precision M3800</h4>
                <p><b>$1500 <a href="/elextore/OrderPage.jsp?itemID=5"> Add To Cart </a></b></p>
                </li>
                <li>
                <img src="images/dellxps15.jpg" alt="No Image found for this product" width="250" height="238">
                <h4>Dell XPS 15 Touch</h4>
                <p><b>$1400 <a href="/elextore/OrderPage.jsp?itemID=5"> Add To Cart </a></b></p>
                </li>
                <li>
                <img src="images/dellxps13.jpg" alt="No Image found for this product" width="250" height="238">
                <h4>Dell XPS 13 Touch</h4>
                <p><b>$1200 <a href="/elextore/OrderPage.jsp?itemID=5"> Add To Cart </a></b></p>
                </li>
                <li>
                <img src="images/dellinspiron14.jpg" alt="No Image found for this product" width="250" height="238">
                <h4>Dell Inspiron 14</h4>
                <p><b>$799 <a href="/elextore/OrderPage.jsp?itemID=5"> Add To Cart </a></b></p>
                </li>
                <li>
                <img src="images/delllatitude14.jpg" alt="No Image found for this product" width="250" height="238">
                <h4>Dell Latitude</h4>
                <p><b>$599 <a href="/elextore/OrderPage.jsp?itemID=5"> Add To Cart </a></b></p>
                </li> -->
                <% }%>
				</ul>
				
				</div>
				</div>

             </div>
            
    </div>
</div>
<body>
<%@include file="footer.jsp" %>
				 
	
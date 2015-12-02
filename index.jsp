<%@page import="beans.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>

<%@include file="Header.jsp"%>

<%! 
HashMapProducts hmp;
public void setProducts(){
     HashMap<Integer,Product> hmap ;
     MongoClient mongo=new MongoClient("52.11.50.218", 27017);  
                 DB db = mongo.getDB("Elextore");
                
            // for adding storeManager user signup
            Map<String, Object> commandArguments = new BasicDBObject();
            DBCollection products = db.getCollection("products");


            BasicDBObject whereQuery = new BasicDBObject();
            //whereQuery.put("Name", "XBox One");
            DBCursor cursor = products.find();
            int flag1=0;
            while(cursor.hasNext()) {
                flag1=1;      
                cursor.next();          
                }

                if(flag1==0)
                {

                 hmp=new HashMapProducts();
                    hmp.setHashMapProduct();
                    hmap=hmp.getHashMapProduct();
                    Iterator<Integer> productIterator=hmap.keySet().iterator(); 

                    while(productIterator.hasNext())
                    {
                        Integer id=productIterator.next();
                        Product p=hmap.get(id);  
                        //commandArguments.put("Id", p.Id);
                        commandArguments.put("name", p.getName());
                        commandArguments.put("retailerName", p.getRetailerName());
                        commandArguments.put("category", p.getCategory());
                        commandArguments.put("price", p.getPrice());  
                         commandArguments.put("description", p.getDescription());
                        commandArguments.put("imageUrl", p.getImageUrl());  
                        commandArguments.put("isActive", p.getIsActive()); 
                        commandArguments.put("isOnSale", p.getIsOnSale());
                        BasicDBObject doc = new BasicDBObject(commandArguments);
                    products.insert(doc);
                    }

                              
                    
                }

}
%>



<%! 



public void setAdmins()
{
        MongoClient mongo=new MongoClient("52.11.50.218", 27017);  
                 DB db = mongo.getDB("Elextore");
                
            // for adding storeManager user signup
            Map<String, Object> commandArguments = new BasicDBObject();
            DBCollection users = db.getCollection("users");


            BasicDBObject whereQuery = new BasicDBObject();
            whereQuery.put("username", "storeadmin");
            DBCursor cursor = users.find(whereQuery);
            int flag1=0;
            while(cursor.hasNext()) {
                flag1=1;      
                cursor.next();          
                }

                if(flag1==0)
                {
                    commandArguments.put("email", "storemanager@elextore.com");
                    commandArguments.put("fName", "storeadmin");
                    commandArguments.put("lName", "admin");
                    commandArguments.put("password", "sa123");
                    commandArguments.put("role", "storeManager");           
                    BasicDBObject doc = new BasicDBObject(commandArguments);
                    users.insert(doc);
                }
            


            Map<String, Object> commandArguments1 = new BasicDBObject();
            BasicDBObject whereQuery1 = new BasicDBObject();
            whereQuery1.put("username", "salesadmin");
            DBCursor cursor1 = users.find(whereQuery1);
            int flag2=0;
            while(cursor1.hasNext()) {
                flag2=1;    
                cursor1.next();             
                }

                if(flag2==0)
                {
                    commandArguments1.put("email", "salesman@elextore.com");
                    commandArguments1.put("fName", "salesadmin");
                     commandArguments1.put("lName", "admin");
                    commandArguments1.put("password", "sa123");
                    commandArguments1.put("role", "salesMan");      
                    BasicDBObject doc1 = new BasicDBObject(commandArguments1);
                    users.insert(doc1);
                }
}
%>

<%
setAdmins();
setProducts();

                  %>



			<div class="categories">
			<div class="itemgrid">
				<h2>Featured Products</h2>
				
				<div class="items" style="margin-left:20px">
				<ul>

				
                <li>
                <img src="images/mainpage/image4.jpg" alt="No Image found for this product" width="250" height="238">
                <h4>Whirlpool Washing Machine</h4>
                <p><b>$800 <a href="/elextore/OrderPage.jsp?itemID=4"> Add To Cart </a></b></p>
                </li>
                <li>
                <img src="images/mainpage/image5.jpg" alt="No Image found for this product" width="250" height="238">
                <h4>Samsung LED TV</h4>
                <p><b>$999 <a href="/elextore/OrderPage.jsp?itemID=5"> Add To Cart </a></b></p>
                </li>
                <li>
                <img src="images/mainpage/image6.jpg" alt="No Image found for this product" width="250" height="238">
                <h4>Apple MacBook Pro</h4>
                <p><b>$1999 <a href="/elextore/OrderPage.jsp?itemID=6"> Add To Cart </a></b></p>
                </li>
                </ul>

				</div>
				</div>

				</td>


			</tr>

			</TABLE>
			<%@include file="footer.jsp"%>				
			</div>
	</div>
</body>
</html>

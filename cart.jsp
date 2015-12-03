<%@include file="Header.jsp" %>

<%
        MongoClient mongo = new MongoClient("52.11.50.218", 27017);
        String from=request.getParameter("from");
        
        String productId="";
        int total=0;
        
        HttpSession s=request.getSession();
       // String username=(String)s.getAttribute("userName");
       // String role=(String)s.getAttribute("role");
        System.out.println("user"+userName);
        if(userName==null)
        {
            response.sendRedirect("signin.jsp");
        }
        List<Cart> list= (List<Cart>) s.getAttribute("list");
         total=(Integer)s.getAttribute("total");
        if(list==null){
                list =new ArrayList<>();
            }
        String deleteCartItem=request.getParameter("deleteCartItem");
        if(from==null){
            if(deleteCartItem==null){
                productId=   request.getParameter("productId");
                System.out.println("user&&&&&&&&&"+productId);
            }     
        }
        if(deleteCartItem!=null)
         {
            if(deleteCartItem.equals("deleteCartItem"))
            {
                    System.out.println("DELEELE");
                    String cartId= request.getParameter("cartId");                          
        
                        for(int i=0;i<list.size();i++)
                        {
                            Cart c=list.get(i);
                            if(c.getId().equals(cartId))
                            {
                                list.remove(i);
                                total=total-c.getPrice();
                            }
                        }

            }
        }


            DB db = mongo.getDB("Elextore");
            DBCollection collection = db.getCollection("products");
            BasicDBObject whereQuery = new BasicDBObject();
             
            DBCursor cursor = collection.find();
         while(cursor.hasNext()) 
            {
                 BasicDBObject obj = (BasicDBObject) cursor.next();

           
                    Object productIdm=(Object)obj.get("_id");

                    String id=productIdm.toString();
                    String name=(String)obj.get("name");
                    int price=(int)obj.get("price");
                    String imageUrl=(String)obj.get("imageUrl");
                    //System.out.println("^^^^^****"+id+name+price+productId);
                    if(from==null){
                    System.out.println("^^^^^****"+id+name+price+productId);
                if(id.equals(productId))
                {   
                      Cart c= new Cart();
                      c.setId(productId);
                      c.setName(name);
                      c.setPrice(price);
                      c.setImageUrl(imageUrl);
                      c.setQuantity(1);
                      total=total+(c.getPrice()*c.getQuantity());
                      list.add(c);
                    System.out.println("SIZEEEE^^^^^**** "+list.size());
                     s.setAttribute("list",list); 
                     s.setAttribute("total",total);              
                }
                }
            }
                  
                  %>

<body>
<div class="well">
    <div class="row">
            
            <h3 >Cart Items</p>

            <div class="row">
                <div class="col-lg-12">
                     <table class="table table-striped">
                        <tr>
                        <th>Name</th>
                    <th>Image</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Action</th>

                        </tr>
        <%
            for(Cart cart : list){
                %>
                        <tr>
                            <td><%=cart.getName()%></td>
                            <td><img src=' <%=cart.getImageUrl()%>' alt="No Image found for this product" width="250" height="238"></td>
                            <td><input type="text" value="1"></input></td>
                            <td>$<%=cart.getPrice()%></td>
                            <td>
                            <form class = 'submit-button' method = 'get' action = 'cart.jsp'>
                                <input type='hidden' name = 'cartId' value = '<%=cart.getId()%>'>
                                <input type='submit' class="btn btn-danger" name="deleteCartItem" value = 'deleteCartItem'>
                            </form>
                            </td>
                        </tr>
                        <%  }
          %>
                         
                    </table>

                </div>
               
            </div>

            <div class="row">
                <div class="col-lg-8"> </div>
                <div class="col-lg-4"> 
                    <h2>Total : $ <%=total%></h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8"> </div>
                <div class="col-lg-4"> 
                    <form class = 'submit-button' method = 'get' action = 'PlaceOrder.jsp'>
            <input type='submit' class="btn btn-success" name = 'submit' value = 'Check Out'>
            </form>
               <!--  <button type="button" class="btn btn-success"><a href="OrderPage.jsp"></a>Checkout</button> -->
                </div>
            </div>
    </div>
</div>
<body>
<%@include file="footer.jsp" %>
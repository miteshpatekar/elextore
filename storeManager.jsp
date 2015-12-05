<%@include file="Header.jsp" %>



<%
        HttpSession s=request.getSession();
        String username=userBean.getEmail();
        //String role=userBean.getRole();
        String selectedCategory = "";
        DB db = InitServlet.getInstance().getMongoDBObject();
        String deleteProduct=request.getParameter("deleteProduct");
    
        DBCollection collection = db.getCollection("products");
        BasicDBObject whereQuery = new BasicDBObject();
         if(deleteProduct!=null)
         {
            if(deleteProduct.equals("deleteProduct"))
            {
                String productId= request.getParameter("productId");
                ObjectId objid =new ObjectId(productId);
                whereQuery.put("_id", objid);              
                collection.remove(whereQuery);
                response.sendRedirect("productsInfo.jsp");
            }
          }
              
           
            DBCursor cursor = collection.find(whereQuery);

            DBCollection collection1 = db.getCollection("Categories");
            BasicDBObject whereQuery1 = new BasicDBObject();
            DBCursor cursor1 = collection1.find();


%>
<body>
<div class="well">
    <div class="row">
            
            <div class="row">
                <div class="col-lg-10"><h3 >Products List</p> </div>
                <div class="col-lg-2"> 
                <form class = 'submit-button' method = 'get' action = 'addProduct.jsp'>
                    <button type="button" class="btn btn-success">Add Product</button>
                    </form>
                    <form class = 'submi' method = 'get' action = 'storeManager.jsp'>
                    <select id="categoriesDropDown" onchange="this.form.submit()">
                        <%
                            while(cursor1.hasNext())
                            {
                                BasicDBObject obj1 = (BasicDBObject) cursor1.next();
                               //Integer id=productIterator.next();

                               String category=(String)obj1.get("Category");%>
                               <option value="category"><%=category%></option>

                            <%}%>
                        %>
                    </select>
                    </form>

                </div>
            </div>
            

            <div class="row">
                <div class="col-lg-12">
                     <table class="table table-striped">
                        <tr>
                        <th>Name</th>
                    <th>Image</th>
                    <th>Price</th>
                    <th>Retailer</th>
                    <th>Action</th>
                    <th>Action</th>
                        </tr>
 <%
                 if(request.getParameter("categoriesDropDown")!=null)
                    selectedCategory = request.getParameter("categoriesDropDown");
                 while(cursor.hasNext()) {
                    BasicDBObject obj = (BasicDBObject) cursor.next();
                   // int productId=(int)obj.get("_id");
                    Object productId=(Object)obj.get("_id");
                    String name= (String)obj.get("name");
                    String retailerName= (String)obj.get("retailerName");
                    int price=(Integer)obj.get("price");
                    String imgUrl=(String)obj.get("imageUrl");
                   // BasicDBList itemsList = (BasicDBList) obj.get("items");

              %>
                        <tr>
                            <td><%=name%></td>
                            <td><img src='<%=imgUrl%>' alt="No Image found for this product" width="250" height="238"></td>                         
                            <td><%=price%></td>
                            
                            <td><%=retailerName%></td>
                            <td>
                                <form class = 'submit-button' method = 'get' action = 'productsUpdate.jsp'>
                                <input type='hidden' name = 'productId' value = '<%=productId.toString()%>'>
                                <button type="button" class="btn btn-success">Update</button>
                                </form>
                            </td>
                            <td>
                                <form class = 'submit-button' method = 'get' action = 'productsAdmin.jsp'>
                                <input type='hidden' name = 'productId' value = '<%=productId.toString()%>'>
                                <button type="button" class="btn btn-danger">Remove</button>
                                </form>
                            </td>

                        </tr>
                        
                        <%}%>
                    </table>

                </div>
               
            </div>

            
            
    </div>
</div>
<body>
<%@include file="footer.jsp" %>
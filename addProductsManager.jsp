<%@include file="Header.jsp" %>

<%
    HttpSession s=request.getSession();
    String username=userBean.getEmail();
    //String role=userBean.getRole();
    String selectedCategory = "";
    DB db = InitServlet.getInstance().getMongoDBObject();

    DBCollection collection1 = db.getCollection("Categories");
    BasicDBObject whereQuery1 = new BasicDBObject();
    DBCursor cursor1 = collection1.find();

    String productName = "";
    String retailerName = "";
    Double productPrice = 0.0;
    String productDescription = "";
    String productCategory = "";
    boolean onsale = false;
    boolean rebate = false;
    String buttonText = "Add Product";
    String productId = "";
    if(request.getParameter("op") != null && request.getParameter("op").equals("update"))
    {
        buttonText = "Update Product";
        DBCollection collection = db.getCollection("products");
        productId = request.getParameter("productId");
        ObjectId objProductId =new ObjectId(productId);
        BasicDBObject whereQuery = new BasicDBObject();
        whereQuery.put("_id", objProductId);
        DBCursor cursor = collection.find(whereQuery);
        while(cursor.hasNext()) {
                BasicDBObject obj = (BasicDBObject) cursor.next();
                productName = (String)obj.get("name");
                retailerName = (String)obj.get("retailerName");
                productCategory = (String)obj.get("category");
                productDescription = (String)obj.get("description");
                Double d = new Double(obj.get("price").toString());
                productPrice = d;
                onsale = (Boolean)obj.get("isOnSale");
                //rebate = (Boolean)obj.get("rebate");
            }
    }

%>
    <body>
        <%
        String success = request.getParameter("success");
        if(success != null && success != "")
            out.println(success);
         %>
        <form class ='submit-button' method='get' action='servlets/AddProductsServlet'>
            <div class="row">
                <div class="col-lg-8">
                     <table class="table table-striped">
                        <tr>
                            <th>Product Name :</th>
                            <td><input type="text" name="name" placeholder="Enter Product Name" value="<%=productName%>"/></td>
                            <td><input type="hidden" name="productId" value="<%=productId%>"/></td>
                        </tr>
                        <tr>
                            <th>Retailer Name :</th>
                            <td><input type="text" name="retailer" placeholder="Enter Retailer Name" value="<%=retailerName%>"/></td>
                        </tr>
                        <tr>
                            <th>Product Category :</th>
                            <td>
                                <select id="categoriesDropDown" name="categorylist">
                                    <%
                                        while(cursor1.hasNext())
                                        {
                                           BasicDBObject obj1 = (BasicDBObject) cursor1.next();
                                           String category=(String)obj1.get("Category");
                                           if(category.equals(productCategory)){%>
                                                <option value="category" selected="selected"><%=category%></option>
                                           <%}else{%>
                                                <option value="category"><%=category%></option>

                                            <%}
                                        }%>
                                    %>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>Product Price :</th>
                            <td><input type="number" name="price" placeholder="Enter Product Price" value="<%=productPrice%>"/></td>
                        </tr>
                        <tr>
                            <th>Product Description :</th>
                            <td><input type="text" name="description" placeholder="Enter Product Description" value="<%=productDescription%>"/></td>
                        </tr>
                        <tr>
                            <th>Product Rebate :</th>
                            <td><input type="checkbox" name="rebate" value="<%=rebate%>"></td>
                        </tr>
                        <tr>
                            <th>Product On Sale :</th>
                            <td><input type="checkbox" name="onsale" value="<%=onsale%>"></td>
                        </tr>
                     </table>
                </div>
            </div>
            <button type="submit" class="btn btn-success" name="addUpdateButton" value="<%=buttonText%>"><%=buttonText%></button>
        </form>
    </body>
<%@include file="footer.jsp" %>
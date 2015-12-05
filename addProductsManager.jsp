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
                            <td><input type="text" name="name" placeholder="Enter Product Name"/></td>
                            <td><input type="hidden" name="op" value="add"/></td>
                        </tr>
                        <tr>
                            <th>Retailer Name :</th>
                            <td><input type="text" name="retailer" placeholder="Enter Retailer Name"/></td>
                        </tr>
                        <tr>
                            <th>Product Category :</th>
                            <td>
                                <select id="categoriesDropDown" name="categorylist">
                                    <%
                                        while(cursor1.hasNext())
                                        {
                                           BasicDBObject obj1 = (BasicDBObject) cursor1.next();
                                           String category=(String)obj1.get("Category");%>
                                           <option value="category"><%=category%></option>

                                        <%}%>
                                    %>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>Product Price :</th>
                            <td><input type="number" name="price" placeholder="Enter Product Price"/></td>
                        </tr>
                        <tr>
                            <th>Product Description :</th>
                            <td><input type="text" name="description" placeholder="Enter Product Description"/></td>
                        </tr>
                        <tr>
                            <th>Product Rebate :</th>
                            <td><input type="checkbox" name="rebate" value="Rebate"></td>
                        </tr>
                        <tr>
                            <th>Product On Sale :</th>
                            <td><input type="checkbox" name="onsale" value="OnSale"></td>
                        </tr>
                     </table>
                </div>
            </div>
            <button type="submit" class="btn btn-success">Add Product</button>
        </form>
    </body>
<%@include file="footer.jsp" %>
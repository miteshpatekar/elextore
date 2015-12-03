<%@include file="Header.jsp" %>

<%
MongoClient mongo = new MongoClient("52.11.50.218", 27017);     
        HttpSession s=request.getSession();
       
        Boolean isCancelled=false;         

        DB db = mongo.getDB("Elextore");
        String cancelOrder=request.getParameter("cancelOrder");
        System.out.println("Order 0----- "+cancelOrder);
         if(cancelOrder!=null)
         {
            if(cancelOrder.equals("cancelOrder"))
            {

                String orderId= request.getParameter("orderId");
                String stat= request.getParameter("delivery");
                if(stat.equals("Delivered"))
                {
                  isCancelled=true;
                }
                else
                {
                  ObjectId objid =new ObjectId(orderId);
                    DBCollection orders = db.getCollection("orders");
                    BasicDBObject newDocument = new BasicDBObject();
                    newDocument.append("$set", new BasicDBObject().append("isCancelled", "yes"));
                            newDocument.append("$set", new BasicDBObject().append("status", "Cancelled"));
                    BasicDBObject searchQuery = new BasicDBObject().append("_id", objid);

                    orders.update(searchQuery, newDocument);
                }
                
                    }
            }
              
           
            DBCollection collection = db.getCollection("orders");
            BasicDBObject whereQuery = new BasicDBObject();
            whereQuery.put("userId", userBean.getId());
            //BasicDBObject whereQuery1 = new BasicDBObject();
            //whereQuery.put("password", pwd);
            DBCursor cursor = collection.find(whereQuery);
            DBCollection collection1 = db.getCollection("products");
            //BasicDBObject whereQuery1 = new BasicDBObject();       
            DBCursor cursor1 = collection1.find();


                  %>
<body>
<div class="well">
    <div class="row">
             <%
          if(isCancelled==true)
          {%>
         <h2>Order cannot be cancelled</h2>

         <% }
         %>
            <div class="row">
                <div class="col-lg-10"><h3 >My Orders List</p> </div>
                <div class="col-lg-2"> 
                
                </div>
            </div>
            

            <div class="row">
                <div class="col-lg-12">
                     <table class="table table-striped">
                        <tr>
                        <th>Name</th>
                    <th>Image</th>
                    <th>Date</th>
                    <th>Status</th>
                    <th>Action</th>
                    <th>Action</th>
                        </tr>
                          <%
  while(cursor.hasNext()) {
                    BasicDBObject obj = (BasicDBObject) cursor.next();
                    Object orderId=(Object)obj.get("_id");
                    BasicDBList itemsList = (BasicDBList) obj.get("items");

              %>
                <% 
                    for (int i = 0; i < itemsList.size(); i++) {%>

                        <tr>

<%
           while(cursor1.hasNext())
            {
            BasicDBObject obj1 = (BasicDBObject) cursor1.next();
               //Integer id=productIterator.next();
               Object pid=(Object)obj1.get("_id");
               String pName=(String)obj1.get("name");
                String imageUrl=(String)obj1.get("imageUrl");
              // System.out.println("77777### "+pName+ " "+pid+" "+itemsList.get(i));
                if(pid.toString().equals(itemsList.get(i)))
                {

                %>
                   <td><%=pName%></td>
                   <td><img src='<%=imageUrl%>' alt="No Image found for this product" width="250" height="238"></td>
                         
              <%  }
                
            }
            cursor1 = collection1.find();
%>

<td>
                   <%=obj.get("date")%>
                </td>
<td>
                <%=obj.get("status")%>
                </td>
<%
    String iscan=(String)obj.get("status");
                if(iscan.equals("Cancelled"))
                { 
                %>
                     <td>
                   Cancelled
                </td>
               <%
                }else
                {
                %>
                    <td>
                   <form class = 'submit-button' method = 'get' action = 'myOrders.jsp'>
                   <input type='hidden' name = 'delivery' value = '<%=iscan%>'>
                   <input type='hidden' name = 'orderId' value = '<%=orderId.toString()%>'>
                <input type='submit' class="btn btn-danger" name = 'cancelOrder' value = 'cancelOrder'>
                </form>
                </td>
              <%
                }
                %>
            </tr>
 <%
  }
}
%>
                                                   
                 
                    </table>

                </div>
               
            </div>

            
            
    </div>
</div>
<body>
<%@include file="footer.jsp" %>
<%@include file="Header.jsp"%>

<%
 MongoClient mongo = new MongoClient("52.11.50.218", 27017);
        String address = request.getParameter("address");
           String cardno = request.getParameter("cardNum");
            String validity = request.getParameter("validity");
            String ccv = request.getParameter("ccv");

          HttpSession s=request.getSession();
                            
            List<Cart> list= (List<Cart>) s.getAttribute("list");
            int total=(Integer)s.getAttribute("total");
           // Map<String, Object> products = new BasicDBObject();
            List<String> cartList = new ArrayList<>();
            
           
            for(Cart cart : list){
   cartList.add(cart.getId());
        
           }

        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
       //get current date time with Date()
      Date date = new Date();
       //System.out.println(dateFormat.format(date));

            DB db = mongo.getDB("Elextore");
            // If the collection does not exists, MongoDB will create it for you
            Map<String, Object> commandArguments = new BasicDBObject();
            DBCollection myOrders = db.getCollection("orders");
            commandArguments.put("userId", userBean.getId());
            commandArguments.put("total", total);
            //String[] roles = { "readWrite" };
            commandArguments.put("items", cartList);
            commandArguments.put("status", "Progress");
            commandArguments.put("isCancelled", "no");
            commandArguments.put("address", address);
            commandArguments.put("cardNumber", cardno);
            commandArguments.put("validity", validity);
            commandArguments.put("ccv", ccv);
           commandArguments.put("date", dateFormat.format(date));
            
            //commandArguments.put("product", product);
            BasicDBObject doc = new BasicDBObject(commandArguments);
            myOrders.insert(doc);
            
            list.clear();
            total=0;
            s.setAttribute("list",list);
            s.setAttribute("total",total);
            Object id = (Object)doc.get( "_id" );
                  date.setTime(date.getTime() + 15 * 1000 * 60 * 60 * 24);
                  %>
<body>
<H1 ALIGN="CENTER">Order Placed successfully</H1>
<H3 ALIGN="CENTER">Your Order Id = <%=id.toString()%></H1>
</BODY>
<%@include file="footer.jsp" %>
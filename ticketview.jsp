<%@include file="Header.jsp" %>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap-3.3.5-dist/css">

<% { %>
	<%
	MongoClient  mongoClient = new MongoClient("52.11.50.218", 27017);

			
			String searchField = "firstname";
		
			String firstname = request.getParameter("firstname");
				String lastname=request.getParameter("lastname");	
			//Get the product selected
			
			// if database doesn't exists, MongoDB will create it for you
			DB db = mongoClient.getDB("Elextore");
			
			DBCollection productDB = db.getCollection("ticket");
			
			// Find and display 
			BasicDBObject searchQuery = new BasicDBObject();
			searchQuery.put(searchField, lastname);

			DBCursor cursor = productDB.find(searchQuery);
			
			
						
			out.println("<html>");
			out.println("<TITLE>elexTore</TITLE>");
			out.println("<body>");
			out.println("<h1> Tickets for:"+ firstname+ "</h1>");
			
		
			out.println("<br><br><hr>");
			
			if(cursor.count() == 0){
				out.println("There are no tickets for this user.");
			}else{
			
				out.println("<table>");
			
				String firstname = "";
				String lastname = "";
				String email_id = "";
				String query = ""; 

			
				
				while (cursor.hasNext()) {
					//out.println(cursor.next());
					BasicDBObject obj = (BasicDBObject) cursor.next();				
					
					out.println("<tr>");
					out.println("<td> First Name: </td>");
					firstname = obj.getString("firstname");
					out.println("<td>" +firstname+ "</td>");
					out.println("</tr>");
	
					
					out.println("<tr>");
					out.println("<td> Last Name: </td>");
					lastname = obj.getString("lastname").toString();
					out.println("<td>" +rating+ "</td>");
					out.println("</tr>");
					
					out.println("<tr>");
					out.println("<td> Email Id: </td>");
					email_id = obj.getString("email_id");
					out.println("<td>" +email_id+ "</td>");
					out.println("</tr>");

					out.println("<tr>");
					out.println("<td> Query: </td>");
					query = obj.getString("query");
					out.println("<td>" +query+ "</td>");
					out.println("</tr>");
				}
			}	
				out.println("</table>");
				out.println("</body>");
				out.println("</html>");
			
		
	%>


<%}%>
<%@include file="footer.jsp" %>
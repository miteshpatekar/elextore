package servlets;

import java.util.Date;
import java.util.Calendar;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.io.*;
import javax.servlet.*;
import java.util.Random;
import javax.servlet.http.*;
import java.util.*;
import com.mongodb.MongoClient;
import com.mongodb.MongoException;
import com.mongodb.WriteConcern;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;
import com.mongodb.DBCursor;
import com.mongodb.ServerAddress;
import servlets.*;


public class AddProductsServlet extends HttpServlet {
    MongoClient mongoClient;

    public void init() throws ServletException{
        // Connect to Mongo DB
        mongoClient = new MongoClient("52.11.50.218", 27017);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op = request.getParameter("op");
        if (op.equals("add")) {
            String productName = request.getParameter("name");
            Double productPrice = Double.parseDouble(request.getParameter("price"));
            String retailer = request.getParameter("retailer");
            String category = request.getParameter("categorylist");
            String productDescription = request.getParameter("description");
            boolean rebateValue = request.getParameter("rebate") != null;
            boolean onsaleValue = request.getParameter("onsale") != null;

            DB db = mongoClient.getDB("Elextore");

            // If the collection does not exists, MongoDB will create it for you
            Map<String, Object> commandArguments = new BasicDBObject();
            DBCollection productDB = db.getCollection("products");
            commandArguments.put("name", productName);
            commandArguments.put("retailerName", retailer);
            commandArguments.put("category", category);
            commandArguments.put("price", productPrice);
            commandArguments.put("description", productDescription);
            commandArguments.put("rebate", rebateValue);
            commandArguments.put("isOnSale", onsaleValue);
            commandArguments.put("isActive", true);
            BasicDBObject doc = new BasicDBObject(commandArguments);
            productDB.insert(doc);
            request.getRequestDispatcher("/addProductsManager.jsp?success=Product Added Successfully..!").forward(request, response);
        }
        else if(op.equals("delete"))
        {
            ObjectID productID = request.getParameter("productId");

            request.getRequestDispatcher("/addProductsManager.jsp?success=Product Deleted Successfully..!").forward(request, response);
        }
    }
}
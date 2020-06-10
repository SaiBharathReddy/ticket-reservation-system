<%-- 
    Document   : busbbokdata
    Created on : 27-Oct-2019, 7:20:53 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
String cname=request.getParameter("cname"); 
String bid=request.getParameter("bid");
String bsource=request.getParameter("bsource");
String bdestination=request.getParameter("bdestination");

String bdate=request.getParameter("bdate");
String btime=request.getParameter("btime");

String select[] = request. getParameterValues("u");
session.setAttribute("cname",cname);
session.setAttribute("bid",bid);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/busbooking","root","root");
Statement st=con.createStatement();
  try{         
   int j=select.length;
   out.println(j);
           for(int i=0; i < select.length ; i++)
           {          
               
             
                          
          st.executeUpdate(" insert into bookbus(cname,bid,bsource,bdestination,bdate,btime,seatno,price) values ('"+cname+"','"+bid+"','"+bsource+"','"+bdestination+"','"+bdate+"','"+btime+"','"+select[i]+"','"+370+"');");
          
           
           }
           if(j>0)
           {
           
           response.sendRedirect("payt.jsp");
           }}
           
           catch(Exception r){
          // out.println(r);
          response.sendRedirect("bookseat.html");
           }
        
        
        %>
        
        
    </body>
    
    
    
</html>

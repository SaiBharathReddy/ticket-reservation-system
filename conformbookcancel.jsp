<%-- 
    Document   : conformbookcancel
    Created on : 01-Nov-2019, 11:52:50 AM
    Author     : HP
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body style="background-color: black;color:white;font-size: 30px">
         <%
             String bid=(String)session.getAttribute("bid");
             String s=(String)session.getAttribute("seat");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/busbooking","root","root");
            PreparedStatement ps=con.prepareStatement("delete  from bookbus where bid=? and seatno=?");
            ps.setString(1,bid);
            ps.setString(2,s);
           
          
   
          int i=ps.executeUpdate();
            if(i>0)
            {
                out.print("BUS REMOVED SUCCESSFULLY..!");
            }
            
            %>
    </body>
</html>

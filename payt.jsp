<%-- 
    Document   : payt
    Created on : 28-Oct-2019, 12:29:39 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table{
                border-collapse: collapse;
               
               
            }
           
           
            </style>
    </head>
    <body bgcolor="pink">
     
        <%@page import="java.io.*" %>
        <%@page import="java.sql.*" %>
        <%
              String cname=(String)session.getAttribute("cname");
              String bid=(String)session.getAttribute("bid");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/busbooking","root","root");
       
    
         PreparedStatement ps=con.prepareStatement("select cname,sum(price) as total from bookbus where cname=? and bid=?");
            ps.setString(1,cname);
         ps.setString(2,bid);
         
            int to=0;
            String cnam="";
           ResultSet rs=ps.executeQuery();
           while(rs.next())
           {
           String cna=rs.getString("cname");
           int tot=rs.getInt("total");
            to=tot;
            cnam=cna;
          }
           PreparedStatement ps1=con.prepareStatement("insert into pay values(?,?)");
           ps1.setString(1,cnam);
           ps1.setInt(2,to);
           int i=ps1.executeUpdate();
        if(i>0)
        {
        response.sendRedirect("payt1.jsp");
        }
        
                
        %>
    </body>
</html>
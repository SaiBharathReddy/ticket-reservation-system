

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table{
                border-collapse: collapse;
                text-align:center;
                cellspacing:"1000px";
                cellpadding:"10";
                width:"800px";
                align: center;
                
               
            }
           
           
            </style>
    </head>
    <body bgcolor="pink">
        <%@page import="java.io.*" %>
        <%@page import="java.sql.*" %>
        <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/busbooking","root","root");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from addbus;");
       
       
        
        out.println("<table border=1 cellpadding=10 width=1000>");
        out.println("<tr>");
        out.println("<th>BID</th>"+"<th>SOURCE</th>"+"<th>DESTINATION</th>"+"<th>DATE</th>"+"<th>TIME</th>");
   
        out.println("</tr>");
        out.println("<tr>");
       
        out.println("<br>");
        while(rs.next())
        {
         
           
     
      out.println("<td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"
              +rs.getString(5)+"</td>");          
            out.println("</tr>");
        }
       
        out.println("</table>");
        %>
    </body>
</html>

	
	
	


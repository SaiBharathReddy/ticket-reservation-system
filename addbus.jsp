


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
    
    <body style="background-color: black;color:white;font-size: 30px">
        <% 
String busid=request.getParameter("busid"); 
String source=request.getParameter("source");
String destination=request.getParameter("destination");
String bdate=request.getParameter("date");
String btime=request.getParameter("time");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/busbooking","root","root");
PreparedStatement ps=con.prepareStatement("insert into addbus values(?,?,?,?,?);");
ps.setString(1,busid);
ps.setString(2,source);
ps.setString(3,destination);
ps.setString(4,bdate);
ps.setString(5,btime);
int i=ps.executeUpdate();
if(i>0)
{

out.print("bus added successfully");
        }
        else{
        out.print("bus not added!");
        }
    
    

%>

    </body>
</html>

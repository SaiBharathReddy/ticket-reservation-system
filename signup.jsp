

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
    
    <body>
        <% 
            
String uname=request.getParameter("uname"); 
String email=request.getParameter("email");
String phnum=request.getParameter("ph");
String address=request.getParameter("address");

String password=request.getParameter("pass");
String repaswrd=request.getParameter("repas");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/busbooking","root","root");
PreparedStatement ps=con.prepareStatement("insert into usersignup values(?,?,?,?,?)");
ps.setString(1,uname);
ps.setString(2,email);
ps.setString(3,phnum);
ps.setString(4,address);
ps.setString(5,password);

int i=ps.executeUpdate();
if(i>0)
{
    out.print("success");
response.sendRedirect("userlogin.html");
        }
        else{
        out.print("insert unsuccessful.!");
        }
    
    

%>

    </body>
</html>

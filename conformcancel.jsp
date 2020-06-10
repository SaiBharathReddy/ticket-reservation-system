<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body style="background-color: black;color:white;font-size: 30px">
         <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/busbooking","root","root");
            PreparedStatement ps=con.prepareStatement("delete from addbus where bid=?");
            ps.setString(1,request.getParameter("bid"));
           
   
          int i=ps.executeUpdate();
            if(i>0)
            {
                out.print("BUS REMOVED SUCCESSFULLY..!");
            }
            
            %>
    </body>
</html>

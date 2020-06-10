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
            body{
                background-image:url("pay2.jpg");
                background-size:cover;
                
            }
            table,th{
                border-collapse: collapse;
                text-align:center;
                cellspacing:"1000px";
                cellpadding:"10";
                width:"800px";
                align: center;
                color:"black";
                
               
            }
            input[type=submit]{
	width:100%;
	box-sizing:border-box;
	padding:10px 0;
	margin-top:30px;
	outline:none; 
	border:none;
	background:#60adde;
	opacity:0.7;
	border-radius:20px;
	font-size:20px;
	color:#fff;}
            input[type=submit]:hover{
	background-color:#003366;
	opacity:0.7;
}
           input[type=text]{
	width:100%;
	box-sizing:border-box;
	padding:12px 5px;
	background:rgba(0,0,0,0.10);
	outline:none;
	border:none;
	border-bottom:1px dotted #fff;
	color:#fff;
	border-radius:5px;
	margin:5px;
	font-weight:bold;
	
}
#a{width:100%;
	box-sizing:border-box;
	padding:12px 5px;
	background:black;
	outline:none;
	border:none;
	border-bottom:1px dotted #fff;
	color:white;
	border-radius:5px;
	margin:5px;
	font-weight:bold;
}
 input[type=number]{
	width:100%;
	box-sizing:border-box;
	padding:12px 5px;
	background:black;
	outline:none;
	border:none;
	border-bottom:1px dotted #fff;
	color:white;
	border-radius:5px;
	margin:5px;
	font-weight:bold;
	
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
        PreparedStatement ps=con.prepareStatement("select cname,sum(total) as ftotal from pay where cname=? group by cname;");
        
            
            ps.setString(1,cname);
          //  ps.setString(2,bid);
            ResultSet rs=ps.executeQuery();
    out.println("<form method=post action=payment/index.html>");
        out.println("<table  cellpadding=10 width=1000>");
        out.println("<tr>");
        out.println("<td>");
        out.println("<th style='color:red;font-size:30px'>NAME</th>");
        out.println("</td>");
        out.println("<td>");
        out.println("<th style='color:red;font-size:30px'>TOTAL-AMOUNT</th>");
        out.println("</td>");
        
        out.println("</tr>");
        
          out.println("<br>");
        out.println("<tr>");
        
      
        while(rs.next())
        {
        out.println("<td>"+"</td>");
         out.println("<td>"+"<input type=text name=cname value="+rs.getString(1)+" id=a readonly>"+"</td>");
         out.println("<td>"+"</td>");
         out.println("<td>"+"<input type=number name=ftotal value="+rs.getInt(2)+" readonly=readonly>"+"</td>");
       }  
       out.println("<br>");
       out.println("</tr>");
       out.println("</table>");
      out.println("<input type=submit name=b value=Procced-To-Pay>");          
            
       
        
        out.println("</form>");
        %>
    </body>
</html>
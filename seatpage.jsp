<%-- 
    Document   : seatpage
    Created on : 27-Oct-2019, 2:58:40 PM
    Author     : HP
--%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="seats.css">

 <style>
            body{
                background-image:url("pixx.jpg");
                background-size:cover;
                
            }
            table{
                border-collapse: collapse;
                text-align:center;
                cellspacing:"1000px";
                cellpadding:"10";
                width:"800px";
                align: center;
                
               
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
input[type=number]{
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

           
            </style>


</head>



<body>
    <%@page import="java.io.*" %>
        <%@page import="java.sql.*" %>
    <%


        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/busbooking","root","root");
        PreparedStatement ps=con.prepareStatement("select bid,btime from addbus where bsource=? and bdestination=? and bdate=?");
         ps.setString(1,request.getParameter("cname"));    
        ps.setString(1,request.getParameter("bsource"));
            ps.setString(2,request.getParameter("bdestination"));
          ps.setString(3,request.getParameter("bdate"));
          ps.setString(3,request.getParameter("bid"));
          
          
            String cname=request.getParameter("cname");
            String bsource=request.getParameter("bsource");
          String bdestination=request.getParameter("bdestination");
          String bdate=request.getParameter("bdate");
          String bid=request.getParameter("bid");
          String btime=request.getParameter("btime");
            
            ResultSet rs=ps.executeQuery();
out.println("<form name=m  method=post  action=./busbbokdata.jsp>");
        out.println("<table  cellpadding=10 width=1000>");
        out.println("<tr>");
        
        out.println("<td>");
        out.println("<div class=plane>");
       out.println("<div class=cockpit>");
    out.println("<img src=a.png style=padding-top:180px;padding-left:100px; >");
   out.println("</div>");
   out.println("<div class=fuselage>");
    
   out.println("</div>");
   out.println("<ol class=fuselage>");
     out.println("<li class=row row--1>");
       out.println("<ol class=seats type=A>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=1A name=u value=1 >");
           out.println("<label for=1A>1</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=1B name=u value=2 >");
           out.println("<label for=1B>2</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=1C name=u value=3 >");
           out.println("<label for=1C>3</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox  id=1D name=u value=4>");
           out.println("<label for=1D>4</label>");
         out.println("</li>");
       
       out.println("</ol>");
     out.println("</li>");
     out.println("<li class=row row--2>");
       out.println("<ol class=seats type=A>");
          out.println("<li class=seat>");
           out.println("<input type=checkbox id=2A name=u value=5>");
           out.println("<label for=2A>5</label>");
         out.println("</li>");
         out.println("<li class=seat>");
            out.println("<input type=checkbox id=2B name=u value=6>");
           out.println("<label for=2B>6</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=2C name=u value=7>");
           out.println("<label for=2C>7</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=2D name=u value=8>");
           out.println("<label for=2D>8</label>");
         out.println("</li>");
        
       out.println("</ol>");
     out.println("</li>");
     out.println("<li class=row row--3>");
       out.println("<ol class=seats type=A>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=3A name=u value=9>");
           out.println("<label for=3A>9</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=3B name=u value=10 >");
           out.println("<label for=3B>10</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=3C name=u value=11 >");
           out.println("<label for=3C>11</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=3D name=u value=12>");
           out.println("<label for=3D>12</label>");
         out.println("</li>");
        
       out.println("</ol>");
     out.println("</li>");
     out.println("<li class=row row--4>");
       out.println("<ol class=seats type=A>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=4A name=u value=13>");
           out.println("<label for=4A>13</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=4B name=u value=14>");
           out.println("<label for=4B>14</label>");
         out.println("</li>");
         out.println("<li class=seat >");
           out.println("<input type=checkbox id=4C name=u value=15>");
           out.println("<label for=4C>15</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=4D name=u value=16>");
           out.println("<label for=4D>16</label>");
         out.println("</li>");
        
       out.println("</ol>");
     out.println("</li>");
     out.println("<li class=row row--5>");
       out.println("<ol class=seats type=A>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=5A name=u value=17>");
           out.println("<label for=5A>17</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=5B name=u value=18>");
           out.println("<label for=5B>18</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=5C name=u value=19>");
           out.println("<label for=5C>19</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=5D name=u value=20>");
           out.println("<label for=5D>20</label>");
         out.println("</li>");

       out.println("</ol>");
     out.println("</li>");
     out.println("<li class=row row--6>");
       out.println("<ol class=seats type=A>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=6A name=u value=21>");
           out.println("<label for=6A>21</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=6B name=u value=22>");
           out.println("<label for=6B>22</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=6C name=u value=23>");
           out.println("<label for=6C>23</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=6D name=u value=24>");
           out.println("<label for=6D>24</label>");
         out.println("</li>");
        out.println("</ol>");
     out.println("</li>");
     out.println("<li class=row row--7>");
       out.println("<ol class=seats type=A>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=7A name=u value=25>");
           out.println("<label for=7A>25</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=7B name=u value=26>");
           out.println("<label for=7B>26</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=7C name=u value=27>");
           out.println("<label for=7C>27</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=7D name=u value=28>");
           out.println("<label for=7D>28</label>");
         out.println("</li>");
      out.println("</ol>");
     out.println("</li>");
     out.println("<li class=row row--8>");
       out.println("<ol class=seats type=A>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=8A name=u value=29>");
           out.println("<label for=8A>29</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=8B name=u value=30>");
           out.println("<label for=8B>30</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=8C name=u value=31>");
           out.println("<label for=8C>31</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=8D name=u value=32>");
           out.println("<label for=8D>32</label>");
         out.println("</li>");
         out.println("</ol>");
     out.println("</li>");
     out.println("<li class=row row--9>");
       out.println("<ol class=seats type=A>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=9A name=u value=33>");
           out.println("<label for=9A>33</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=9B name=u value=34>");
           out.println("<label for=9B>34</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=9C name=u value=35>");
           out.println("<label for=9C>35</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=9D name=u value=36>");
           out.println("<label for=9D>36</label>");
         out.println("</li>");

       out.println("</ol>");
     out.println("</li>");
     out.println("<li class=row row--10>");
       out.println("<ol class=seats type=A>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=10A name=u value=37>");
           out.println("<label for=10A>37</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=10B name=u value=38>");
           out.println("<label for=10B>38</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=10C name=u value=39>");
           out.println("<label for=10C>39</label>");
         out.println("</li>");
         out.println("<li class=seat>");
           out.println("<input type=checkbox id=10D name=u value=40>");
           out.println("<label for=10D>40</label>");
         out.println("</li>");
        
       out.println("</ol>");
     out.println("</li>");
   out.println("</ol>");
   out.println("<div class=fuselage>");
    
   out.println("</div>");
 out.println("</div>");
 out.println("<input type=submit value=BOOK>");
 
 out.println("</td>");
 out.println("</tr>");
 out.println("<br>");
 out.println("<tr>");
 out.println("<td>");
       out.println("<input type=text name=cname value='"+cname+"' readonly=readonly>");
       out.println("<input type=text name=bsource value='"+bsource+"' readonly=readonly>");
       out.println("<input type=text name=bdestination value='"+bdestination+"' readonly=readonly>");
       out.println("<input type=text name=bdate value='"+bdate+"' readonly=readonly>");
       out.println("<input type=number name=bid value='"+bid+"' readonly=readonly>");
       out.println("<input type=text name=btime value='"+btime+"' readonly=readonly>");
       
       out.println("</td>");
       out.println("</tr>");
        
%>
</body>
</html>

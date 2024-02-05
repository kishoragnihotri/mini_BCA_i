<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update details</title>
<link rel="stylesheet" type="text/css" href="indexstyle/style.css" />

</head>
<body>
<%@page import="java.sql.*" %>
<%
try
{
String userid=request.getParameter("userid");
if(userid==null){response.sendRedirect("singin.html");}
String name=request.getParameter("username");
String mobile=request.getParameter("mobile");
String password=request.getParameter("password");

//int id=Integer.parseInt(str_id);
//String name=request.getParameter("name");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ramiz","ramiz");
PreparedStatement ps=con.prepareStatement("UPDATE userdb SET name = ?,mobile=?,password=?  WHERE id = ?");;
ps.setString(1,userid);
ps.setString(2,name);

ps.setString(3,password);
ps.setString(4,mobile);
ps.executeUpdate(); %>
<center><h1 style="font-size:150px;color:yellow;"><% out.println("Date Update Successfully"); %></h1></center>

 <% 
out.println("<a href='veiwdetail.jsp'>view detail</a>");
}
catch(Exception e){}

%>       |<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="footer"style="height:70px;margin-top:20px;background:black"> TriMax	&copy; &nbsp;2018-2019&nbsp;<br>
            <a style="color:white ;font-size:20px;"  href="advertisement.html">Post-Add</a>-|-
             <a style="color:white ;font-size:20px;" href="index.html">Home</a>-|-
             <a style="color:white ;font-size:20px;" href="contect.html">
             Contect-Us</a>-|-
 <a style="color:white ;font-size:20px;" href="privacy.html">Our privacy Scheme
</a>-|- <a style="color:white; font-size:20px;" href="infrastructure.html">Infrastructure</a>-|-
 <a style="background:white;font-size:27px;" href="aboutus.html">TriMax </a>
</div>


</body>
</html>
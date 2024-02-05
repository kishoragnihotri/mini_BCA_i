<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>your password</title>
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />


</head>
<body>
<%@page import="java.sql.*" %>
<%
try
{
	
	
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ramiz","ramiz");
	  Statement statement = con.createStatement();
String id=request.getParameter("userid");
      ResultSet resultset = statement.executeQuery("select * from userdb where id = '" + id + "'") ; 

      if(!resultset.next()) {
          out.println("Sorry, could not find that Userid. <a style='color:black;' href='singin.html'>sing in</a>");
      } else {
  %>

  <TABLE BORDER="1">
      <TR>
         <TH>UserID</TH>
         <TH>Name</TH>
         <TH>mobile</TH>
         <TH>password</TH>
         
     </TR>
     <TR>
         <TD> <%= resultset.getString(1) %> </TD>
         <TD> <%= resultset.getString(2) %> </TD>
         <TD> <%= resultset.getString(3) %> </TD>
         <TD><h1> <%= resultset.getString(4) %></h1> </TD>
        
     </TR>
 </TABLE>
 <BR>
 <%

     } out.println("<a href='singin.html'>SingIN</a>");
}catch(Exception e){} 
 %>

<div id="copyright" class="container">
	<p>&copy; 2018-2019 TimeSeverzOMSMS All rights reserved. | About-Us <a href="aboutus.html">TimeSeverzOMSMS</a> | Career <a href="career.html" rel="nofollow">Jobs</a>.</p>
		| Client of <a href="client.html">TimeSeverzOMSMS</a> | You'r<a href="feeback.html">FeedBack</a> |
		<a href="career.html" accesskey="4" title="">Careers</a> ||<a style="color:yellow;" href="advertisement.html">Post Add</a>
</div>

</body>
</html>
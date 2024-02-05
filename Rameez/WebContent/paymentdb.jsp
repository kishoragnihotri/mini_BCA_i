<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import="java.sql.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

<title>The Payment</title>
</head>
<body>

<%
try {
	
	//make session here then it show the detail according to userid.
	//String id=request.getParameter("userid");
	//String password=request.getParameter("password");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ramiz","ramiz");
	Statement statement = con.createStatement();
 
	//String id=(String)session.getAttribute("id");
	
	//	out.println(" :-"+id);
	      ResultSet resultset = statement.executeQuery("select * from payment");// where userid = '" + id + "'") ; 

	      /*if(!resultset.next()) {
	          out.println("Sorry, could not find that Userid. ");
	          out.println("PLZ LOGIN FIRST :");
	  		out.println("<a href='clientsingin.html'>SING-IN</a>");

	      } */while(resultset.next()) {
	  %>

	  <TABLE BORDER="1">
	      <TR>
	         <TH>UserName</TH>
	         <TH>Amount</TH>
	         <TH>text</TH>
	         
	         
	     </TR>
	     <TR>
	         <TD> <%= resultset.getString(1) %> </TD>
	         <TD> <%= resultset.getString(2) %> </TD>
	         <TD> <%= resultset.getString(3) %> </TD>
	        
	     </TR>
	 </TABLE>
	 <BR>
	  <% 
}}
catch(Exception e){}

%><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	 


<div id="copyright" class="container">
	<p>&copy; 2018-2019 TimeSeverzOMSMS All rights reserved. | About-Us <a href="aboutus.html">TimeSeverzOMSMS</a> | Career <a href="career.html" rel="nofollow">Jobs</a>.</p>
		| Client of <a href="client.html">TimeSeverzOMSMS</a> | You'r<a href="feeback.html">FeedBack</a> |<a style="color:yellow;" href="logout.jsp">Log-Out</a>
		<a href="career.html" accesskey="4" title="">Careers</a> ||<a style="color:yellow;" href="advertisement.html">Post Add</a>
</div>

</body>
</html>
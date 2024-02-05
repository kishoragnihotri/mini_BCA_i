<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Sucessful</title>
</head>
<body>
<%@page import="java.sql.*"%>

<%
Connection con=null;
try {
	
	String id=request.getParameter("firstname");
	if(id==null){response.sendRedirect("advertisement.html");}
	//String mob=request.getParameter("mobile");
	String add=request.getParameter("subject");
	String rs=request.getParameter("rs");

		Class.forName("oracle.jdbc.driver.OracleDriver");
	 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ramiz","ramiz");
	PreparedStatement pstmt=con.prepareStatement("insert into payment values(?,?,?)");
	pstmt.setString(1,id);
	pstmt.setString(2,rs);
	
	pstmt.setString(3, add);
	//pstmt.setString(4, mob);
	int k=pstmt.executeUpdate();
    out.println("<center><h1 style='color:Green;font-size:100px;'>Congratulation :) your Add will we posted SOON...</h1><center> "+k);
    out.println("<h1><a href='index.html'>Home page</a></h1>");


	}

catch(Exception e){}

%>
|<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="copyright" class="container">
	<p>&copy; 2018-2019 TimeSeverzOMSMS All rights reserved. | About-Us <a href="aboutus.html">TimeSeverzOMSMS</a> | Career <a href="career.html" rel="nofollow">Jobs</a>.</p>
		| Client of <a href="client.html">TimeSeverzOMSMS</a> | You'r<a href="feedback.html">FeedBack</a> |<a style="color:yellow;" href="logout.jsp">Log-Out</a>
		<a href="career.html" accesskey="4" title="">Careers</a> ||<a style="color:yellow;" href="advertisement.html">Post Add</a>
</div>
</body>
</html>
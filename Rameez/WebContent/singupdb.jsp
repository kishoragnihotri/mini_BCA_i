<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />


<title>Sucessful</title>
</head>
<body>
<%@page import="java.sql.*"%>

<%
Connection con=null;
try {
	
	String id=request.getParameter("userid");
	if(id==null){response.sendRedirect("singup.html");}
	String username=request.getParameter("username");
	String mob=request.getParameter("mobile");
	String password1=request.getParameter("password1");

	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ramiz","ramiz");
	PreparedStatement pstmt=con.prepareStatement("insert into userdb values(?,?,?,?)");
	pstmt.setString(1,id);
	pstmt.setString(2,username);
	
	pstmt.setString(3, mob);
	pstmt.setString(4, password1);
	int k=pstmt.executeUpdate();
    out.println("<center><h1 style='color:Green;font-size:100px;'>Congratulation :) you are successfull joined us</h1><center> "+k);
    out.println("<h1><a href='index.html'>Home page</a></h1>");


	}

catch(Exception e){}

%>
|<div id="wrapper2">
	<div id="tools">
		<div class="title">
			<h2>Tools </h2>
		</div>
		<ul class="tools">
						<li><a href="singin.html" class="icon icon-key"></a></li>
			<li><a href="singup.html" class="icon icon-wrench"></a></li>
			
			<li><a href="index.html" class="icon icon-filter"></a></li>
			<li><a href="empsingin.html" class="icon icon-lock"></a></li>
		</ul>
	
	</div>
</div>
<div id="copyright" class="container">
	<p>&copy; 2018-2019 TimeSeverzOMSMS All rights reserved. | About-Us <a href="aboutus.html">TimeSeverzOMSMS</a> | Career <a href="career.html" rel="nofollow">Jobs</a>.</p>
		| Client of <a href="client.html">TimeSeverzOMSMS</a> | You'r<a href="feeback.html">FeedBack</a> |
		<a href="veiwdetail.jsp" accesskey="4" title="">VeiwProfile</a> ||<a style="color:yellow;" href="advertisement.html">Post Add</a>
</div>
</body>
</html>
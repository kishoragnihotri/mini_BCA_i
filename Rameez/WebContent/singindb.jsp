<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome :)</title>
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
<%@page import="java.sql.*" %>
<%
Connection con=null;
try {
	
	
	//String password=request.getParameter("password");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ramiz","ramiz");
	//out.println(" connection stablished <br><br>");
	String id=request.getParameter("userid");
	if(id==null){response.sendRedirect("singin.html");}
	String password1=request.getParameter("password");

	//out.println("<h1>userid-: "+id+"</h1><br><h2>password-: "+password1+"</h2>");
	 PreparedStatement pstmt=con.prepareStatement("select  * from userdb where id=? and password=?");
	pstmt.setString(1,id);
	pstmt.setString(2,password1);
	ResultSet rs=pstmt.executeQuery();
	//out.println(rs);
	if(rs.next()){
		session.setAttribute("id",id);
		out.println("<p><br>Welcome:) <h1 style='color:green;''> "+id+"</h1></p>");
out.println("<p><a style='color:black' href='index.html'>Index</a></p>");
out.println("<p><a style='color:black' href='updateprofile.jsp'>Update Your Profile</a></p>");
out.println("<p><a style='color:black' href='deleteaccount.jsp'>Delete Your Profile :(//////////////////</a></p>");

	}
    
else
{out.println("<br>Sorry User not found login again<br><a href='singin.html'>SingIN</a>");
}
	}

catch(Exception e){}

%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>




<div id="copyright" class="container">
	<p>&copy; 2018-2019 TimeSeverzOMSMS All rights reserved. | About-Us <a href="aboutus.html">TimeSeverzOMSMS</a> | Career <a href="career.html" rel="nofollow">Jobs</a>.</p>
		| Client of <a href="client.html">TimeSeverzOMSMS</a> | You'r<a href="feeback.html">FeedBack</a> |<a href="logout.jsp">Log-Out</a> |
		<a href="veiwdetail.jsp" accesskey="4" title="">VeiwProfile</a> ||<a style="color:yellow;" href="advertisement.html">Post Add</a>
</div>
</body>
</html>
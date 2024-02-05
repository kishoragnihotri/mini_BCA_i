<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome :)</title>
<link rel="stylesheet" type="text/css" href="indexstyle/style.css" />

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
	if(id==null){response.sendRedirect("empsingin.html");}
	String password1=request.getParameter("password");

	out.println("<h1>userid-: "+id+"</h1><br><h2>password-: "+password1+"</h2>");
	 PreparedStatement pstmt=con.prepareStatement("select  * from emp where empid=? and password=?");
	pstmt.setString(1,id);
	pstmt.setString(2,password1);
	ResultSet rs=pstmt.executeQuery();
	out.println(rs);
	if(rs.next()){
		session.setAttribute("id",id);
		out.println("<br>Welcome:) <h1 style='color:green;''> "+id+"</h1>");
out.println("<a href='index.html'>Index</a>");
out.println("<a style='color:blue;'href='adminuser.html'>Login As ADMIN..</a>");
	}
    
else
{out.println("<br>Sorry User not found login again<br><a href='clientsingin.html'>SingIN</a>");
}
	}

catch(Exception e){}

%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
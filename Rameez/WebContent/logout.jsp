<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
<% 
String s=(String)session.getAttribute("id");
if(s==null){out.println("Plz Login First<a style='color:green;font-size:40px;'href='singin.html'>SingIn</a>");}
else{session.invalidate();
out.println("<center><h1 style='font-size:150px;color:yellow;'>LogOut Successful :)</h1></center>");

} %>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="copyright" class="container">
	<p>&copy; 2018-2019 TimeSeverzOMSMS All rights reserved. | About-Us <a href="aboutus.html">TimeSeverzOMSMS</a> | Career <a href="career.html" rel="nofollow">Jobs</a>.</p>
		| Client of <a href="client.html">TimeSeverzOMSMS</a> | You'r<a href="feeback.html">FeedBack</a> |
		<a href="career.html" accesskey="4" title="">Careers</a> ||<a style="color:yellow;" href="advertisement.html">Post Add</a>
</div>
</body>
</html>
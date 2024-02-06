<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LoreonTechnologies- Home Page</title>
<link href="images/mylandmarklogo.png" rel="icon">
</head>
</head>
<body>
<h1 align="center">Welcome to Loreon Project.</h1>
<h1 align="center">We are developing and supporting quality  Software Solutions to millions of clients.
	           We are raising millions of IT Professionals.
	We offer  Training for DevOps with Linux and Cloud equipping IT Engineers for best performance.</h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
		
</h1>
	
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/myloreonlogo.png" alt="" width="150">
	</span>
	<span style="font-weight: bold;">
                Loreon Technology, 
		Lagos, Nigeria
		+234 8064 531 535,
		loreon.ilerioluwa@gmail.com
		<br>
		<a href="mailto:loreon.ilerioluwa@gmail.com">Mail to Loreon Technologies</a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </p>
<hr>
<hr>
<p align=center>Loreon Technologies - Consultant, Training and Software Development</p>
<p align=center><small>Copyrights 2021 by <a href="https://loreontech.com/">Loreon Technologies</a> </small></p>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String webinarid = request.getParameter("webinarid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "online_help_desk";
String userid = "root";
String password = "nara123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<html>
<head>
	
	<style>
	
		table{
		
			width: 30cm;
			background-color: #404040;
			margin-top: -18cm;
			margin-left: 10cm;
		}
		table,th,td{
			border: 3px solid blue;
			border-collapse: collapse;
		
		}
		th, td{
			padding: 10px;
			color: white;
		}
		body{
    		background-image: url("Images/Backgrounds/background image3.jpg");
    		background-repeat: repeat;
    		background-size: cover;
    	}
	
	</style>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Webinar Details</title>
	
</head>
<body>

	<div style="width: 9cm; height: 20cm; background-color: #1a1a1a; ">
		<img src="Images/logo/logo.jpg" style="width: 3cm; height: 3cm; border-radius: 50%; margin-left: 2.5cm; margin-top: 3cm">
		<br><br>
		<h1 style="color: white; font-family: sans-serif;">&nbsp; &nbsp;&nbsp;Student Help</h1>
		<h1 style="color: white; margin-left: 3cm; font-family: sans-serif;">Desk</h1>
		<br><br>
		
	</div>
	
	<table>
		<caption><h1><b>Webinar Details</b></h1></caption>
		<tr>
			<th>Webinar id</th>
			<th>Lecturer's first name</th>
			<th>Lecturer's last name</th>
			<th>Semester</th>
			<th>Email</th>
			<th>Date</th>
			<th>Module</th>
			<th>Description</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
	<%
	try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	statement=connection.createStatement();
	String sql ="select * from webinar";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
	%>
	<tr>
	<td><%=resultSet.getString("webinarid") %></td>
	<td><%=resultSet.getString("fname") %></td>
	<td><%=resultSet.getString("lname") %></td>
	<td><%=resultSet.getString("semester") %></td>
	<td><%=resultSet.getString("Lemail") %></td>
	<td><%=resultSet.getString("date") %></td>
	<td><%=resultSet.getString("module") %></td>
	<td><%=resultSet.getString("description") %></td>
	<td style="padding-left: 0.8cm"><a href="updateWebinar.jsp?webinarid=<%=resultSet.getString("webinarid")%>"><i class="fa fa-edit w3-xlarge" style="color: red;"></i></a></td>
	<td style="padding-left: 0.8cm"><a href="DeleteWebinar.jsp?webinarid=<%=resultSet.getString("webinarid")%>"><i class="fa fa-trash w3-xlarge" style="color: white;"></i></a></td>
	</tr>
	<%
	}
	connection.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	</table>
</body>
</html>
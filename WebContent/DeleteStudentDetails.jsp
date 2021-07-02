<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	
	<style>
		table{
			width: 18cm;
			margin-left: 13cm;
			margin-top: 2cm;
			height: 15cm;
		}
		table,th,td{
			border: 3px solid blue;
			border-collapse: collapse;
		
		}
		input[type=text], input[type=email], input[type=password]{
			width: 13cm;
			height: 1cm;
			border-color: blue;
		}
		select{
			width: 13cm;
			height: 1cm;
			border-color: blue;
		}
		td{
			padding-left: 0.3cm;
		}
		body{
		
			background-image: url("Images/Backgrounds/background image3.jpg");
    		background-repeat: repeat;
    		background-size: cover;
		}
	</style>
	
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<meta charset="ISO-8859-1">
	<title>Delete Student Details</title>
</head>
<body>


		<%
		
			int id = Integer.parseInt(request.getParameter("id"));
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String password = request.getParameter("password");
			String username = request.getParameter("username");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String specialization = request.getParameter("specialization");
			int semester = Integer.parseInt(request.getParameter("semester"));
		
		%>

		<div style="width: 9cm; height: 21cm; background-color: #1a1a1a; ">
			<img src="Images/logo/logo.jpg" style="width: 3cm; height: 3cm; border-radius: 50%; margin-left: 2.5cm; margin-top: 3cm">
			<br><br>
			<h1 style="color: white; font-family: sans-serif;">&nbsp; &nbsp;&nbsp;Student Help</h1>
			<h1 style="color: white; margin-left: 3cm; font-family: sans-serif;">Desk</h1>
			<br><br>
		
		</div>

		<form action="delete" method="post" style="margin-top: -20cm;">
		
			<table>
			
				<tr>
					<td>Student Id</td>
					<td><input type="text" name="id" value="<%= id%>" readonly></td>
				</tr>
				<tr>
					<td>Student's First Name</td>
					<td><input type="text" name="fname" value="<%= fname%>" readonly></td>
				</tr>
				<tr>
					<td>Student's Last Name</td>
					<td><input type="text" name="lname" value="<%= lname%>" readonly></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="text" name="password" value="<%= password%>" readonly></td>
				</tr>
				<tr>
					<td>User Name</td>
					<td><input type="text" name="username" value="<%= username%>" readonly></td>
				</tr>
				<tr>
					<td>Student Email</td>
					<td><input type="email" name="email" value="<%= email%>" readonly></td>
				</tr>
				<tr>
					<td>Phone</td>
					<td><input type="text" name="phone" value="<%= phone%>" readonly></td>
				</tr>
				<tr>
					<td>Specialization</td>
					<td><input type="text" name="phone" value="<%= specialization%>" readonly></td>
				</tr>
				<tr>
					<td>Semester</td>
					<td><input type="text" name="semester" value="<%= semester%>" readonly></td>
				</tr>
				
				
			</table>
			
			<input style="margin-left: 20cm; margin-top: 1cm; cursor: pointer; width: 5cm; height: 1cm; border-color: blue;" type="submit" name="submit" value="Delete My Details"> 
		</form>
</body>
</html>
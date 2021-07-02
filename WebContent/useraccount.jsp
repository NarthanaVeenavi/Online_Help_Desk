<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" type="text/css" href="CSS/UserAccount.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta charset="ISO-8859-1">
	<title>User Profile</title>
	<style>
		body{
		
			background-image: url("Images/Backgrounds/background image3.jpg");
    		background-repeat: repeat;
    		background-size: cover;
		}
	</style>
	
</head>
<body>

	<c:forEach var="stu" items="${stuDetails}">
	
	<c:set var="id" value="${stu.id}"/>
	<c:set var="fname" value="${stu.fname}"/>
	<c:set var="lname" value="${stu.lname}"/>
	<c:set var="password" value="${stu.password}"/>
	<c:set var="username" value="${stu.username}"/>
	<c:set var="email" value="${stu.email}"/>
	<c:set var="phone" value="${stu.phone}"/>
	<c:set var="specialization" value="${stu.specialization}"/>
	<c:set var="semester" value="${stu.semester}"/>
	
	<div style="width: 9cm; height: 35cm; background-color: #1a1a1a; ">
		<img src="Images/logo/logo.jpg" style="width: 3cm; height: 3cm; border-radius: 50%; margin-left: 2.5cm; margin-top: 3cm">
		<br><br>
		<h1 style="color: white; font-family: sans-serif;">&nbsp; &nbsp;&nbsp;Student Help</h1>
		<h1 style="color: white; margin-left: 3cm; font-family: sans-serif;">Desk</h1>
		<br><br>
		
	</div>
	
	<div class="page-content page-container" id="page-content" style="margin-left: 13cm; width: 23cm; height: 15cm; margin-top: -35cm;">
    <div class="padding">
        <div class="row container d-flex justify-content-center">
            <div class="col-xl-6 col-md-12">
                <div class="card user-card-full">
                    <div class="row m-l-0 m-r-0">
                        <div class="col-sm-4 bg-c-lite-green user-profile">
                            <div class="card-block text-center text-white">
                            	<h1 style="margin-left: 6.5cm; font-size: 50px">User Profile</h1>
                                <div class="m-b-25"> <img src="https://img.icons8.com/bubbles/100/000000/user.png" style="margin-left: 8cm;" class="img-radius" id="imgProfile" alt="User-Profile-Image"> </div>
                                <h3 class="f-w-600" style="margin-left: 6.5cm">${stu.fname}</h3>
                                <h3 class="f-w-600" style="margin-left: 10cm; margin-top: -1.24cm">${stu.lname}</h3>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="card-block">
                                <h3 class="m-b-20 p-b-5 b-b-default f-w-600">Information</h3>
                                <div class="row">
                                	
                                	<div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Student Id</p>
                                        <h6 class="text-muted f-w-400">${stu.id}</h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Password</p>
                                        <h6 class="text-muted f-w-400">${stu.password}</h6>
                                    </div>
                                    
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">User name</p>
                                        <h6 class="text-muted f-w-400">${stu.username}</h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Email</p>
                                        <h6 class="text-muted f-w-400">${stu.email}</h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Phone</p>
                                        <h6 class="text-muted f-w-400">${stu.phone}</h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Specialization</p>
                                        <h6 class="text-muted f-w-400">${stu.specialization}</h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Semester</p>
                                        <h6 class="text-muted f-w-400">${stu.semester}</h6>
                                    </div>
                                </div>
                                
                                <c:url value="UpdateStudentDetails.jsp" var="stuUpdate">
                                
                                	<c:param name="id" value="${id}"/>
                                	<c:param name="fname" value="${fname}"/>
                                	<c:param name="lname" value="${lname}"/>
                                	<c:param name="password" value="${password}"/>
                                	<c:param name="username" value="${username}"/>
                                	<c:param name="email" value="${email}"/>
                                	<c:param name="phone" value="${phone}"/>
                                	<c:param name="specialization" value="${specialization}"/>
                                	<c:param name="semester" value="${semester}"/>
                                
                                </c:url>
                                <a href="${stuUpdate}">
      							<input type="button" name="update" id="updatebutton" style="width: 5cm; height: 1cm; border-color: blue; border-radius: 5px;" value="Update My Details">
      							</a>
      							
      							<c:url value="DeleteStudentDetails.jsp" var="stuDelete">
                                
                                	<c:param name="id" value="${id}"/>
                                	<c:param name="fname" value="${fname}"/>
                                	<c:param name="lname" value="${lname}"/>
                                	<c:param name="password" value="${password}"/>
                                	<c:param name="username" value="${username}"/>
                                	<c:param name="email" value="${email}"/>
                                	<c:param name="phone" value="${phone}"/>
                                	<c:param name="specialization" value="${specialization}"/>
                                	<c:param name="semester" value="${semester}"/>
                                
                                </c:url>
      							
      							<a href="${stuDelete}">
      							<input type="button" name="delete" id="deletebutton" style="width: 5cm; height: 1cm; border-color: blue; border-radius: 5px;" value="Delete My Details">
      							</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</c:forEach>
</body>
</html>
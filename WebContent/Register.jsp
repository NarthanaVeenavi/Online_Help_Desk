<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link rel="stylesheet" href="CSS/Register.css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<meta charset="ISO-8859-1">
<style>
	body{
    		background-image: url("Images/Backgrounds/background image3.jpg");
    		background-repeat: repeat;
    		background-size: cover;
    	}
	
</style>
<title>Register</title>
</head>
<body>

	<div style="width: 9cm; height: 20cm; background-color: #1a1a1a; ">
		<img src="Images/logo/logo.jpg" style="width: 3cm; height: 3cm; border-radius: 50%; margin-left: 2.5cm; margin-top: 3cm">
		<br><br>
		<h1 style="color: white; font-family: sans-serif;">&nbsp; &nbsp;&nbsp;Student Help</h1>
		<h1 style="color: white; margin-left: 3cm; font-family: sans-serif;">Desk</h1>
		<br><br>
		
		<a href="login.jsp">
		<button id="logButton" style="margin-left: 2cm; cursor: pointer;" type="button">Login</button>
		</a>
	</div>

	<div class="container register" style="margin-left: 9.5cm; margin-top: -17.5cm; border-radius: 20px;">
                <div class="row">

                    <div class="col-md-9 register-right" style="margin-left: 5cm">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading" style="font-style: oblique;">Register as a Student</h3>
                                <form action="register" method="post" class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="First Name *" value="" name="fname" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Last Name *" value="" name="lname" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" pattern=".{8,}" title="Eight or more characters" class="form-control" placeholder="Set a New Password *" value="" name="password" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" pattern="IT19[0-9]{6}"  placeholder="User Name - ITXXXXXXXX *" value="" name="username" required>
                                        </div>
                         
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="Your Email *" value="" name=email required>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" maxlength="10" pattern="*(0).[0-9]{9}" class="form-control" placeholder="Your Phone *" value="" name="phone" required>
                                        </div>
                                        <div class="form-group">
                                            <select class="form-control" name="specialization" required>
                                                <option class="hidden" value=""  selected disabled>Please select your specialization</option>
                                                <option value="IT/DS/IM/SE">IT/DS/IM/SE</option>
                                                <option value="Information System Engineering">Information System Engineering</option>
                                                <option value="Network Engineering">Network Engineering</option>
                                            </select>
                                        </div>
                                        <div class="form-group"> 
                                            <input type="text" pattern="[1-2]{1}" class="form-control" placeholder="Enter semester as 1 or 2" value="" name="semester" required>
                                        </div>
                                        <input type="submit" class="btnRegister"  value="Register" name="submit">
                                       
                                    </div>
                                </form>
                            </div>
						
                    </div>
                </div>

            </div>
            
            </div>

</body>
</html>
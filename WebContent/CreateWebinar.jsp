<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>  
<html>  
<head>  
    <title>Create Webinar</title>  
    <style>
    	body{
    		background-image: url("Images/Backgrounds/background image3.jpg");
    		background-repeat: repeat;
    		background-size: cover;
    	}
    </style>
    <meta charset="utf-8" />  
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">  
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>     
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>   
   <script type="text/javascript">  
        (function () {  
            'use strict';  
            window.addEventListener('load', function () {  
                var form = document.getElementById('needs-validation');  
                form.addEventListener('submit', function (event) {  
                    if (form.checkValidity() === false) {  
                        event.preventDefault();  
                        event.stopPropagation();  
                    }  
                    form.classList.add('was-validated');  
                }, false);  
            }, false);  
        })();  
    </script>  
</head>  
<body>  

	<div style="width: 9cm; height: 20cm; background-color: #1a1a1a; ">
		<img src="Images/logo/logo.jpg" style="width: 3cm; height: 3cm; border-radius: 50%; margin-left: 2.5cm; margin-top: 3cm">
		<br><br>
		<h1 style="color: white; font-family: sans-serif;">&nbsp; &nbsp;&nbsp;Student Help</h1>
		<h1 style="color: white; margin-left: 3cm; font-family: sans-serif;">Desk</h1>
		<br><br>
		<i class="fa fa-bars" style="color: blue; margin-left: 2cm"></i>
		<h5 style="color: white; margin-left: 3cm; margin-top: -0.55cm"><a href="DisplayWebinar.jsp">Webinar List</a></h5>
		
	</div>
    <div style="margin-left: 9cm; margin-top: -18cm;" class="container py-5">  
        <div class="row">  
            <div class="offset-md-2 col-md-8 offset-md-2">  
                <div class="card" style="background-color: #1a1a1a;">  
                    <div class="card-header bg-primary text-white">  
                        <h4 class="card-title text-uppercase">Create Webinar</h4>  
                    </div>  
                    <div class="card-body">  
                        <form action="insert" method="post" id="needs-validation" novalidate>  
                            <div class="row">  
                                <div class="col-sm-6 col-md-6 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="firstname" style="color: white;">Lecturer's First Name</label>  
                                        <input type="text" id="firstname" placeholder="First Name" name="fname" class="form-control" aria-describedby="inputGroupPrepend" required />  
                                        <div class="invalid-feedback">  
                                            Please enter first name.  
                                        </div>  
                                    </div>  
                                </div>  
                                <div class="col-sm-6 col-md-6 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="lastname" style="color: white;">Lecturer's Last Name</label>  
                                        <input type="text" id="lastname" placeholder="Last Name" name="lname" class="form-control" aria-describedby="inputGroupPrepend" required />  
                                        <div class="invalid-feedback">  
                                            Please enter last name.  
                                        </div>  
                                    </div>  
                                </div>  
                            </div>  
                            <div class="row">  
                                <div class="col-sm-4 col-md-4 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="semester" style="color: white;">Semester</label>  
                                        <select name="semester" class="custom-select" required>  
                                            <option value="">Select Semester</option>  
                                            <option value="Y2S1 July">Y2S1 July</option>  
                                            <option value="Y2S1 February">Y2S1 February</option>  
                                        </select>  
                                        <div class="invalid-feedback">Please choose semester</div>  
                                    </div>  
                                </div>  
                                <div class="col-sm-4 col-md-4 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="email" style="color: white;">Lecturer's Email address</label>  
                                        <input type="email" class="form-control"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" id="email" name="Lemail" placeholder="email address" aria-describedby="inputGroupPrepend" required>  
                                        <div class="invalid-feedback">  
                                            Please provide a valid email.  
                                        </div>  
                                    </div>  
                                </div>  
                                <div class="col-sm-4 col-md-4 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="phonenumber" style="color: white;">Date</label>  
                                        <input type="datetime-local" class="form-control" id="date" name="date" placeholder="Date" aria-describedby="inputGroupPrepend" required>  
                                        <div class="invalid-feedback">  
                                            Please enter valid date.  
                                        </div>  
                                    </div>  
                                </div>  
                            </div>  
                            <div class="row">  
                                <div class="col-sm-12 col-md-12 col-xs-12">  
                                    <div class="form-group">  
                                        <label style="color: white;">Select module</label>                                          
                                    </div>  
                                    <div class="form-check-inline">  
                                        <div class="custom-control custom-radio ">  
                                            <input type="radio" class="custom-control-input" id="html" aria-describedby="inputGroupPrepend" name="module" value="SE" required>  
                                            <label class="custom-control-label" style="color: white;" for="html">SE</label>  
                                            <div class="invalid-feedback">Choose module</div>  
                                        </div>                                          
                                    </div>  
                                    <div class="form-check-inline">  
                                        <div class="custom-control custom-radio ">  
                                            <input type="radio" class="custom-control-input" id="javascript" aria-describedby="inputGroupPrepend" name="module" value="CN" required>  
                                            <label class="custom-control-label" style="color: white;" for="javascript">CN</label>  
                                            <div class="invalid-feedback">Choose module</div>  
                                        </div>  
                                    </div>  
                                    <div class="form-check-inline">  
                                        <div class="custom-control custom-radio ">  
                                            <input type="radio" class="custom-control-input" id="csharp" aria-describedby="inputGroupPrepend" name="module" value="OOP" required>  
                                            <label class="custom-control-label" style="color: white;" for="csharp">OOP</label>  
                                            <div class="invalid-feedback">Choose module</div>  
                                        </div>  
                                    </div>  
                                    <div class="form-check-inline">  
                                        <div class="custom-control custom-radio">  
                                            <input type="radio" class="custom-control-input" id="aspdotnet" aria-describedby="inputGroupPrepend" name="module" value="OSSA" required>  
                                            <label class="custom-control-label" style="color: white;" for="aspdotnet">OSSA</label>  
                                            <div class="invalid-feedback">Choose module</div>  
                                        </div>  
                                    </div>  
                                    <div class="form-check-inline">  
                                        <div class="custom-control custom-radio">  
                                            <input type="radio" class="custom-control-input" id="MVC" name="module" value="DMS" required>  
                                            <label class="custom-control-label" style="color: white;" for="MVC">DMS</label>  
                                            <div class="invalid-feedback">Choose module</div>  
                                        </div>  
                                    </div>                                    
                                </div>  
                            </div>  
                            <br>
                            <div class="row">  
                                <div class="col-sm-12 col-md-12 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="address" style="color: white;">Description</label><br>  
                                        <textarea class="form-control" style="color: black;" rows="3" id="address" aria-describedby="inputGroupPrepend" name="description" required></textarea>  
                                        <div class="invalid-feedback">please enter description</div>  
                                    </div>  
                                </div>  
                            </div>  
                            
                            <div class="row">  
                                <div class="col-sm-12 col-md-12 col-xs-12">  
                                    <div class="float-right">  
                                        <button class="btn btn-danger rounded-0" name="cancelbutton" type="reset">Cancel</button>  
                                        <button class="btn btn-primary rounded-0" name="submitButton" type="submit">Submit</button>  
                                    </div>                            
                                </div>  
                            </div>  
                        </form>  
                    </div>  
                </div>  
            </div>  
        </div>  
    </div>  
</body>  
</html>  
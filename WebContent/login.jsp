<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<style>
	
		#body1{
    		background-image: url("Images/Login/background image3.jpg");
    		background-repeat: repeat;
    		background-size: cover;
		}

		.loginbackground-content {
    		background-image: url("Images/Login/bp8.jpg");
   			background-size: cover;
    		margin: 5% auto 15% auto;
    		border: 1px solid gray;
    		width: 50%;
    		border-radius: 21px;
		}
	</style>
	<link rel="stylesheet" type="text/css" href="CSS/Login.css">
	<link rel="stylesheet" type="text/css" href="CSS/resetPassword.css">
	<title>Login</title>
</head>
<body id="body1">

	<div style="width: 9cm; height: 20cm; background-color: #1a1a1a;">
		<img src="Images/logo/logo.jpg" style="width: 3cm; height: 3cm; border-radius: 50%; margin-left: 2.5cm; margin-top: 3cm">
		<br><br>
		<h1 style="color: white; font-family: sans-serif;">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Student Help</h1>
		<h1 style="color: white; margin-left: 3cm; font-family: sans-serif;">Desk</h1>
		
	</div>
	
	<div id="div1" style="margin-top: -18cm; margin-left: 16cm; border-radius: 20px;">
            <h1 style="margin-top: 1cm; margin-left: 5cm; color: blueviolet; font-size: 35px;">Log In</h1>
            <hr style="border: 1px solid black;">
            <form id="loginform" method="POST" action="log">
                <label for="email"><b>User name</b></label><br>
                <input class="text1" type="text" name="uid" placeholder="Enter username"><br><br>

                <label for="password"><b>Password</b></label><br>
                <input class="text1" id="pwd" type="password" placeholder="Enter your password" name="pass"><br>

                <img id="eye1" style="margin-top: -1cm; margin-left: 8.1cm;" onclick="passwordVisibility()" class="eyereset" src="Images/Login/eye.jpg">
                <input style="margin-left: 3cm;" id="checkBox1"  onclick="enableButton()" type="checkbox">Remember me
                <input id="submitBu" style="margin-top: 1cm;" class="submitB" type="submit" name="submitButton" value="LOGIN" disabled>
                <script type="text/javascript" src="JS/Login.js"></script>
            </form>   
                        
            <hr style="border: 1px solid gray;">
            <a href="https://www.google.com/"><button class="loginwith" type="button">Login with google</button></a>
            <a href="https://www.google.com/"><img style="margin-top: 0.2cm;" class="icons" src="Images/Login/google.png"></a>
            <a href="https://www.facebook.com/"><button style="margin-top: 1cm;" class="loginwith" type="button">Login with facebook</button></a>
            <a href="https://www.facebook.com/"><img style="margin-top: 1.2cm;" class="icons" src="Images/Login/facebook.png"></a>
            <div style="margin-left: 15cm;">
            
                <div style="margin-left: -1cm;">
                    <p class="resetpara" onclick="document.getElementById('reset').style.display='block'" style="cursor: pointer; margin-left: -9cm; color: blue;"><u>Forgot Password?</u></p>
                    <div id="reset" class="loginbackground">
                        <form onsubmit="return checkPassword()" class="loginbackground-content animate" action="updatePass" method="post">
                          
                            <div class="imgposition">
                                <span onclick="document.getElementById('reset').style.display='none'" class="close">&times;</span>
                            </div>
                            <div class="container">
                            
                                <h2>Reset Password</h2>
                                <label for="uname"><b>Email Address :</b></label>
                                <input class="restuname" type="email" placeholder="Enter email" name="email" required autofocus>
    
                                <label for="psw1"><b>New Password :</b></label>
                                <input class="restuname" id="resetpw1" type="password" placeholder="Enter Password" name="psw1" required>
                                <div style="margin-left: 18.5cm;">
                                    <img class="eyereset" src="Images/Login/eye.jpg" onclick="pwVisibility()" style="margin-top: -1.27cm;">
                                </div>
    
                                <label for="psw1"><b>Confirm Password :</b></label>
                                <input class="restuname" id="resetpw2" type="password" placeholder="Re-enter Password" name="password" required>
                                <div style="margin-left: 18.5cm; margin-top: -1.27cm;">
                                    <img class="eyereset" src="Images/Login/eye.jpg" onclick="passwVisibility()">
                                </div>
    
                                <input type="checkbox" style="margin-left: 1cm; margin-top: 1.5cm;" id="rscheckBox" onclick="enablebutton()" name="remember">Remember Me
                                <div style="margin-top: 0cm;">
                                    <button class="rstbtn" id="resetbtn" style="margin-left: 14cm;  margin-top: -4cm;" name="reset" type="submit" disabled>Reset Password</button>
                                </div>    
                            </div>
                           
                        </form>
                        
                    </div>
                    <script type="text/javascript" src="JS/resetPassword.js"></script>
                </div>
        </div>
        </div>

</body>
</html>
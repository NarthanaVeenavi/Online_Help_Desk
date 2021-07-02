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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from webinar where webinarid="+webinarid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>    
<!DOCTYPE html>
<html>  
<head>  
    <title>Update Webinar</title>  
    <style>
    	body{
    		background-image: url("Images/Backgrounds/background image3.jpg");
    		background-repeat: repeat;
    		background-size: cover;
    	}
    </style>
    <meta charset="utf-8" />  
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">  
</head>  
<body>  

<div style="width: 9cm; height: 20cm; background-color: #1a1a1a; ">
		<img src="Images/logo/logo.jpg" style="width: 3cm; height: 3cm; border-radius: 50%; margin-left: 2.5cm; margin-top: 3cm">
		<br><br>
		<h1 style="color: white; font-family: sans-serif;">&nbsp; &nbsp;&nbsp;Student Help</h1>
		<h1 style="color: white; margin-left: 3cm; font-family: sans-serif;">Desk</h1>
		<br><br>
		
	</div>
    <div class="container py-5" style="margin-left: 10cm; margin-top: -20cm">  
        <div class="row">  
            <div class="offset-md-2 col-md-8 offset-md-2">  
                <div class="card">  
                    <div class="card-header bg-primary text-white">  
                        <h4 class="card-title text-uppercase">Update Webinar</h4>  
                    </div>  
                    <div class="card-body" style="background-color: #1a1a1a;">  
                        <form action="updateWeb" method="post" id="needs-validation"> 
                        
                        	<input type="hidden" name="webinarid" value="<%=resultSet.getString("webinarid") %>">
                        	
                        	<div class="row">  
                                <div class="col-sm-6 col-md-6 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="firstname" style="color: white">WebinarId</label>  
                                        <input type="text" id="firstname" name="webinarid" value="<%=resultSet.getString("webinarid") %>" class="form-control" readonly="readonly">  
                                        <div class="invalid-feedback">  
                                            Please enter webinar id  
                                        </div>  
                                    </div>  
                                </div>  
                        	</div>
                        
                        	<div class="row">  
                                <div class="col-sm-6 col-md-6 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="firstname" style="color: white">Lecturer's First Name</label>  
                                        <input type="text" id="firstname" name="fname" value="<%=resultSet.getString("fname") %>" class="form-control">  
                                        <div class="invalid-feedback">  
                                            Please enter first name.  
                                        </div>  
                                    </div>  
                                </div>  
                        	</div>
                            <div class="row">  
                                <div class="col-sm-6 col-md-6 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="firstname" style="color: white">Lecturer's Last Name</label>  
                                        <input type="text" id="firstname" name="lname" value="<%=resultSet.getString("lname") %>" class="form-control">  
                                        <div class="invalid-feedback">  
                                            Please enter first name.  
                                        </div>  
                                    </div>  
                                </div> 
                            </div>  
                         
                        		<div class="row">  
                                <div class="col-sm-4 col-md-4 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="semester" style="color: white">Semester</label>  
                                        <select  name="semester" class="custom-select" required>  
                                            <option value="">Select Semester</option>  
                                            <option value="Y2S1 July">Y2S1 July</option>  
                                            <option value="Y2S1 February">Y2S1 February</option>  
                                        </select>  
                                        <div class="invalid-feedback">Please choose semester</div>  
                                    </div>  
                                </div>  
                                <div class="col-sm-4 col-md-4 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="email" style="color: white">Lecturer's Email address</label>  
                                        <input type="email" class="form-control" id="email" value="<%=resultSet.getString("Lemail") %>" name="Lemail">  
                                        <div class="invalid-feedback">  
                                            Please provide a valid email.  
                                        </div>  
                                    </div>  
                                </div>  
                                <div class="col-sm-4 col-md-4 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="phonenumber" style="color: white">Date</label>  
                                        <input type="datetime-local"  class="form-control" value="<%=resultSet.getString("date") %>" id="date" name="date" required>  
                                        <div class="invalid-feedback">  
                                            Please enter valid date
                                        </div>  
                                    </div>  
                                </div>  
                            </div>  
                            
                            <div class="row">  
                                <div class="col-sm-12 col-md-12 col-xs-12">  
                                    <div class="form-group">  
                                        <label style="color: white">Select module</label>                                          
                                    </div>  
                                    <div class="form-check-inline">  
                                        <div class="custom-control custom-radio ">  
                                            <input type="radio" class="custom-control-input" id="html" aria-describedby="inputGroupPrepend" name="module" value="SE" required>  
                                            <label style="color: white" class="custom-control-label" for="html">SE</label>  
                                            <div class="invalid-feedback">Choose module</div>  
                                        </div>                                          
                                    </div>  
                                    <div class="form-check-inline">  
                                        <div class="custom-control custom-radio ">  
                                            <input type="radio" class="custom-control-input" id="javascript" aria-describedby="inputGroupPrepend" name="module" value="CN" required>  
                                            <label class="custom-control-label" style="color: white" for="javascript">CN</label>  
                                            <div class="invalid-feedback">Choose module</div>  
                                        </div>  
                                    </div>  
                                    <div class="form-check-inline">  
                                        <div class="custom-control custom-radio ">  
                                            <input type="radio" class="custom-control-input" id="csharp" aria-describedby="inputGroupPrepend" name="module" value="OOP" required>  
                                            <label class="custom-control-label" style="color: white" for="csharp">OOP</label>  
                                            <div class="invalid-feedback">Choose module</div>  
                                        </div>  
                                    </div>  
                                    <div class="form-check-inline">  
                                        <div class="custom-control custom-radio">  
                                            <input type="radio" class="custom-control-input" id="aspdotnet" aria-describedby="inputGroupPrepend" name="module" value="OSSA" required>  
                                            <label class="custom-control-label" style="color: white" for="aspdotnet">OSSA</label>  
                                            <div class="invalid-feedback">Choose module</div>  
                                        </div>  
                                    </div>  
                                    <div class="form-check-inline">  
                                        <div class="custom-control custom-radio">  
                                            <input type="radio" class="custom-control-input" id="MVC" name="module" value="DMS" required>  
                                            <label class="custom-control-label" style="color: white" for="MVC">DMS</label>  
                                            <div class="invalid-feedback">Choose module</div>  
                                        </div>  
                                    </div>                                    
                                </div>  
                            </div>  
                            <br>
                            <div class="row">  
                                <div class="col-sm-12 col-md-12 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="address" style="color: white">Description</label><br>  
                                        <input type="text" name="description" value="<%=resultSet.getString("description") %>" class="form-control">
                                        <div class="invalid-feedback">please enter description</div>  
                                    </div>  
                                </div>  
                            </div>  
                            
                            <div class="row">  
                                <div class="col-sm-12 col-md-12 col-xs-12">  
                                    <div class="float-right">  
                                
                                        <button class="btn btn-primary rounded-0" name="submitButton" type="submit">Update Details</button>  
                                    </div>                            
                                </div>  
                            </div>  
                        </form> 
                         <%
							}
							connection.close();
							} catch (Exception e) {
							e.printStackTrace();
							}
						%>
                    </div>  
                </div>  
            </div>  
        </div>  
    </div>   
</body>  
</html>  
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
    <title>Delete Webinar</title>  
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

	<div style="width: 9cm; height: 24cm; background-color: #1a1a1a; ">
		<img src="Images/logo/logo.jpg" style="width: 3cm; height: 3cm; border-radius: 50%; margin-left: 2.5cm; margin-top: 3cm">
		<br><br>
		<h1 style="color: white; font-family: sans-serif;">&nbsp; &nbsp;&nbsp;Student Help</h1>
		<h1 style="color: white; margin-left: 3cm; font-family: sans-serif;">Desk</h1>
		<br><br>
		
	</div>
	
    <div class="container py-5" style="margin-left: 10cm; margin-top: -24cm">  
        <div class="row">  
            <div class="offset-md-2 col-md-8 offset-md-2">  
                <div class="card" style="background-color: #1a1a1a;">  
                    <div class="card-header bg-primary text-white">  
                        <h4 class="card-title text-uppercase">Delete Webinar</h4>  
                    </div>  
                    <div class="card-body">  
                        <form action="deleteWeb" method="post" id="needs-validation"> 
                        
                        	<input type="hidden" name="webinarid" value="<%=resultSet.getString("webinarid") %>">
                        	
                        	<div class="row">  
                                <div class="col-sm-6 col-md-6 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="firstname" style="color: white;">WebinarId</label>  
                                        <input type="text" id="firstname" name="webinarid" value="<%=resultSet.getString("webinarid") %>" class="form-control" readonly="readonly">  
                                        <div class="invalid-feedback">  
                                            Please enter webinar name
                                        </div>  
                                    </div>  
                                </div>  
                        	</div>
                        
                        	<div class="row">  
                                <div class="col-sm-6 col-md-6 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="firstname" style="color: white;">Lecturer's First Name</label>  
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
                                        <label for="firstname" style="color: white;">Lecturer's Last Name</label>  
                                        <input type="text" id="firstname" name="lname" value="<%=resultSet.getString("lname") %>" class="form-control">  
                                        <div class="invalid-feedback">  
                                            Please enter Last name.  
                                        </div>  
                                    </div>  
                                </div> 
                            </div>  
                         
                        		<div class="row">  
                                <div class="col-sm-6 col-md-6 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="firstname" style="color: white;">Semester</label>  
                                        <input type="text" id="firstname" name="semester" value="<%=resultSet.getString("semester") %>" class="form-control">  
                                        <div class="invalid-feedback">  
                                            Please enter Semester 
                                        </div>  
                                    </div>  
                                </div>  
                        	</div>
                                <div class="row">  
                                <div class="col-sm-6 col-md-6 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="firstname" style="color: white;">Lecturer Email</label>  
                                        <input type="text" id="firstname" name="Lemail" value="<%=resultSet.getString("Lemail") %>" class="form-control">  
                                        <div class="invalid-feedback">  
                                            Please enter first name.  
                                        </div>  
                                    </div>  
                                </div>  
                        	</div>
                            
                            <div class="row">  
                                <div class="col-sm-6 col-md-6 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="firstname" style="color: white;">Date</label>  
                                        <input type="text" id="firstname" name="date" value="<%=resultSet.getString("date") %>" class="form-control">  
                                        <div class="invalid-feedback">  
                                            Please enter Date  
                                        </div>  
                                    </div>  
                                </div>  
                        	</div>
                            
                            <div class="row">  
                                <div class="col-sm-6 col-md-6 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="firstname" style="color: white;">Module</label>  
                                        <input type="text" id="firstname" name="module" value="<%=resultSet.getString("module") %>" class="form-control">  
                                        <div class="invalid-feedback">  
                                            Please enter Module  
                                        </div>  
                                    </div>  
                                </div>  
                        	</div> 
                            <br>
                            <div class="row">  
                                <div class="col-sm-12 col-md-12 col-xs-12">  
                                    <div class="form-group">  
                                        <label for="address" style="color: white;">Description</label><br>  
                                        <input type="text" name="description" value="<%=resultSet.getString("description") %>" class="form-control">
                                        <div class="invalid-feedback">please enter description</div>  
                                    </div>  
                                </div>  
                            </div>  
                            
                            <div class="row">  
                                <div class="col-sm-12 col-md-12 col-xs-12">  
                                    <div class="float-right">  
                                
                                        <button class="btn btn-primary rounded-0" name="submitButton" type="submit">Delete Webinar</button>  
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href='http://fonts.googleapis.com/css?family=Ubuntu:500' rel='stylesheet' type='text/css'>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
<script src="js/index.js"></script>
<title>Login Page</title>

<style>
body {
  
background:url('https://secure.static.tumblr.com/0b1146a8fca1447dbd00342a6f383700/3n7dnk5/qEsn3bnra/tumblr_static_tumblr_static_tumblr_static_black_background_wood_2560x1440_by_starlyz-d4n0342.jpg');

  margin:0px;
   background-repeat:no-repeat;

   background-size:cover;
  
font-family: 'Ubuntu', sans-serif;

}

h1, h2, h3, h4, h5, h6, a {

  margin:0; 
padding:0;

}

.register
 {
 
 margin:0 auto;
 
 max-width:500px;

}

.register-header {
 
 color:#fff;
 
 text-align:center;
 
 font-size:300%;

}

.register-header h1 {

   text-shadow: 0px 5px 15px #000;

}

.register-form {
 
 border:2px solid #999;

  background:#2c3e50;

  border-radius:10px;

  box-shadow:0px 0px 10px #000;

}

.register-form h3
 {
 
 text-align:left;

  margin-left:40px;

  color:#fff;

}

.register-form
 {

  box-sizing:border-box;

  padding-top:15px;
 
 margin:50px auto;
 
 text-align:center;

	overflow: hidden;

}

.register input[type="text"],
.register input[type="password"],

.register input[type="cpassword"]
 {
 
 width: 100%;

	max-width:400px;
 
 height:30px;

  font-family: 'Ubuntu', sans-serif;

  margin:10px 0;
 
 border-radius:5px;
 
 border:2px solid #f2f2f2;
 
 outline:none;
 
 padding-left:10px;

}

.register-form input[type="button"],
.register-form input[type="reset"]

 {
 
 height:30px;
 
 width:100px;
 
 background:#fff;
 
 border:1px solid #f2f2f2;
 
 border-radius:20px;

  color: slategrey;
 
 text-transform:uppercase;

  font-family: 'Ubuntu', sans-serif;
 
 cursor:pointer;

}

.login
{
  color:#f2f2f2;

  margin-left:-400px;

  cursor:pointer;
 
 text-decoration:underline;

}
</style>
</head>


<body>
<%@ include file="commonheader.jsp" %>



<div class="register">

  <div class="register-header">
 
   <h1>Register Here</h1>
 
 </div>
  
<div class="register-form">
<form:form action="/Register"  method="post" commandName="user" >

 <h3>User Name:</h3>
    
<form:input type="text" path="name" placeholder="User Name"/><br>
 
   <h3>E-mail:</h3>
    
<form:input type="text" path="id" placeholder="E-mail Address"/><br>

   <h3>Mobile:</h3>
    
<form:input type="text" path="mobile" placeholder="Mobile Number"/><br>
 
 
   <h3>Password:</h3>
 
   <form:input type="password" path="password"  placeholder="Password"/>
    
  <br>
  <input type="reset">
  
  <input type="button" value="submit" class="submit-button"/>
 
   <br>
    

 
 </form:form>  
 
 </div>
</div>

   


<%@ include file="commonfooter.jsp" %>



</body>
</html>
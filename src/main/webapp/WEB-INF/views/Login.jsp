<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
      <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
background:url('http://www.publicdomainpictures.net/pictures/130000/nahled/red-side-gradient-background.jpg');
 margin:0px;
  
   background-repeat:no-repeat;

   background-size:cover;
  
font-family: 'Ubuntu', sans-serif;

 }

h1, h2, h3, h4, h5, h6, a {

  margin:0; 
padding:0;

}

.login
 {
 
 margin:0 auto;
 
 max-width:500px;

}

.login-header {
 
 color:#fff;
 
 text-align:center;
 
 font-size:300%;

}

.login-header h1 {

   text-shadow: 0px 5px 15px #000;

}

.login-form {
 
 border:2px solid #999;

  background:#2c3e50;

  border-radius:10px;

  box-shadow:0px 0px 10px #000;

}

.login-form h3
 {
 
 text-align:left;

  margin-left:40px;

  color:#fff;

}

.login-form
 {

  box-sizing:border-box;

  padding-top:15px;
 
 margin:50px auto;
 
 text-align:center;

	overflow: hidden;

}

.login input[type="text"],
.login input[type="password"]
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

.login-form input[type="button"]
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

.sign-up
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
<br>${message}



<div class="login">

  <div class="login-header">
 
   <h1>Login</h1>
 
 </div>
  
<div class="login-form">
<c:url var="action" value="/Login"></c:url>
<form:form action="/Login"  method="post" commandName="user">

 
   <h3>UserID:</h3>
    
<form:input type="text" name="name"  path="name" placeholder="Name"/><br>
 
   <h3>Password:</h3>
 
   <form:input type="password" name="password" path="password" placeholder="Password"/>
  
  <br>
  
  <input type="submit" value="Login" class="login-button"/>
 
   <br>
    
<div class="login-button">
				<a href="Register">Get New Account</a>
</div>
    <br>
    </form:form>
 
   
 
 </div>
</div>

   



<%@ include file="commonfooter.jsp" %>



</body>
</html>
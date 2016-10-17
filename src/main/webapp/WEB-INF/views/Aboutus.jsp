<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About us </title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
  .nav-tabs li a {
      color: #777;
      }
      body {
  
background:url('http://www.publicdomainpictures.net/pictures/130000/nahled/red-side-gradient-background.jpg');

  margin:0px;
  
   background-repeat:no-repeat;

   background-size:cover;
  
font-family: 'Ubuntu', sans-serif;

}
.container{
height:450px;
}
  </style>
</head>
<body>
<%@ include file="commonheader.jsp" %>

<div class="container">
 <h3 class="text-center"><strong>About Us</strong></h3>  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Our Journey</a></li>
    <li><a data-toggle="tab" href="#menu1">Our Moto</a></li>
    <li><a data-toggle="tab" href="#menu2">Founder</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h2>How We Started</h2>
      <p>By the increasing  Fashion across the country and increase of the e-commerce across the net, we decided to provide an online Fashion store to the country </p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h2>Customer Satisfaction</h2>
      <p>We work hard to keep our customer happy. We are always here for help</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h2>MD Dawood Ibrahim,Founder</h2>
      <p>Success doesn't come to people who give up <strong>ThatGuy</strong> </p>
    
    <div class="col-sm-4">
      <p><strong>Name</strong></p><br>
      <img src="" alt="Random Name">
    </div>
    
    
    </div>
  </div>
  </div>
  <%@ include file="commonfooter.jsp" %>

</body>
</html>
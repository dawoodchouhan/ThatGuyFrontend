<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact us</title>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<style>
body {
  
background:url('http://www.publicdomainpictures.net/pictures/130000/nahled/red-side-gradient-background.jpg');

  margin:0px;
   background-repeat:no-repeat;

   background-size:cover;
  
font-family: 'Ubuntu', sans-serif;

}
 #googleMap {
      width: 100%;
      height: 400px;
      -webkit-filter: grayscale(100%);
      filter: grayscale(100%);
  }  
</style>
</head>
<body>

<%@ include file="commonheader.jsp" %>
<!-- Container (Contact Section) -->
<div id="contact" class="container">
  <h3 class="text-center">Contact us</h3>
  <p class="text-center"><em>we are always here to help</em></p>

  <div class="row">
    <div class="col-md-4">
     
      <p><span class="glyphicon glyphicon-map-marker"></span>Hyderabad,INDIA</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +91 8297052931</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: dawoodchauhan.93@gmail.com</p>
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="reset">Send</button>
        </div>
      </div>
    </div>
  </div>
  

  
  <%@ include file="commonfooter.jsp" %>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>That GUY</title>


<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
<style>
body { 
background: gray !important;
 }
.carousel-inner img {
      -webkit-filter: grayscale(20%);
      filter: grayscale(20%); /* make all photos black and white */ 
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  
  
  .carousel .item {
  height: 400px;
}

.item img {
    position: absolute;
    top: 0;
    left: 0;
    min-height: 400px;
}


  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }

 


</style>
</head>
<body>
<%@ include file="commonheader.jsp" %>


<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="https://megamallbucuresti.ro/wp-content/uploads/2016/06/ochelari3.jpg" alt="goggles" width="1200" height="70">
        <div class="carousel-caption">
          <h3>SHADES</h3>
          <p>To Give You Your Best Look</p>
        </div>      
      </div>

      <div class="item">
        <img src="http://www.luxreplica.co.uk/wp-content/uploads/2016/08/omega-speedmaster-fake-grey-leather-straps-800x400.jpg" alt="all brands" width="1200" height="70">
        <div class="carousel-caption">
          <h3>WATCHES</h3>
          <p>We got the best in class watches</p>
        </div>      
      </div>
    
      <div class="item">
        <img src="http://nebula.wsimg.com/obj/QjMzRDA1MUIyOTBGOTMyRDFEMDY6MGY5NTY3YmJlNmRkNzk5ZTEyNTQxNTI2Y2JjZDc3ZDY6Ojo6OjA=" alt="Audi" width="1200" height="70">
        <div class="carousel-caption">
          <h3>FAN of CAP'S?</h3>
          <p>Get that trendy look by our cap's</p>
        </div>      
      </div>
      
       <div class="item">
        <img src="http://static3.businessinsider.com/image/5202b8b1eab8ea4672000000-800-400/saint-laurent-2013-boat-shoe-1.jpg" alt="shoes" width="1200" height="70">
        <div class="carousel-caption">
          
          <p>Shoes and many more to grab</p>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
<br>
<br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">header1</div>
        <div class="panel-body"><img src="" class="img-responsive" style="width:100%; height:50pts;"  alt="Image"></div>
        <div class="panel-footer">name</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">header2</div>
        <div class="panel-body"><img src="" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">name</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">header3</div>
        <div class="panel-body"><img src="" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">name</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">header4</div>
        <div class="panel-body"><img src="" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">name</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">header5</div>
        <div class="panel-body"><img src=""class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">name</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">header6</div>
        <div class="panel-body"><img src="" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">name</div>
      </div>
    </div>
  </div>
</div><br><br>

     


<%@ include file="commonfooter.jsp" %>
</body>
</html>
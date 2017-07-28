<%@include file="header.jsp"%>
<%@ page isELIgnored="false" %>
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Bootstrap Navbar and Slider Overlay Text - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
   </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<br>
<br>
<br>
<div id="myCarousel" class="carousel slide">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="item active">
      <img src="https://rukminim1.flixcart.com/flap/1500/500/image/66864a.jpg?q=50" class="img-responsive">
      <div class="container">
        <div class="carousel-caption">
          </div>
      </div>
    </div>
    <div class="item">
      <img src="https://rukminim1.flixcart.com/flap/1500/500/image/cec044.jpg?q=50" class="img-responsive">
      <div class="container">
        <div class="carousel-caption">
          
        </div>
      </div>
    </div>
    <div class="item">
      <img src="https://rukminim1.flixcart.com/flap/1500/500/image/886334.jpg?q=50" class="img-responsive">
      <div class="container">
        <div class="carousel-caption">
          
        </div>
      </div>
    </div>
  </div>
 
  <!-- Controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <i class="glyphicon glyphicon-chevron-left"></i>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <i class="glyphicon glyphicon-chevron-right"></i>
  </a>  
</div>
<!-- /.carousel -->
<a href="login">Login</a>
<a href="Register">register</a>
</body>
</html>
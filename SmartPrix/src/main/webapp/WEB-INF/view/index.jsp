<%@include file="header.jsp"%>
<%@ page isELIgnored="false" %>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>SmartPrix</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css">
 <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,400,700&subset=latin-ext" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
   
  
</head>
<br>
<br>
<br>

<body  onload="myFunction()" style="margin:0;">
<div id="loader"></div>
<div style="display:none;" id="myDiv" class="animate-bottom">
<div id="myCarousel" class="carousel slide" >
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
</div>
<script>
var myVar;

function myFunction() {
    myVar = setTimeout(showPage,1000);
}

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
  document.getElementById("another").style.display="block";
}
</script>

 <div class="container">
    <div class="row animate-bottom">
        <div class="row">
            <div class="col-md-9">
                <h3>
                   Trending Android Products</h3>
            </div>
            <div class="col-md-3">
              
                <div class="controls pull-right hidden-xs">
                    <a class="left fa fa-chevron-left btn btn-success" href="#carousel-example"
                        data-slide="prev"></a><a class="right fa fa-chevron-right btn btn-success" href="#carousel-example" data-slide="next"></a>
                </div>
            </div>
        </div>
        <div id="carousel-example" class="carousel slide hidden-xs" data-ride="carousel">
            <div class="carousel-inner">
      
                <div class="item active">
                    <div class="row">
                      <c:forEach items="${productList}" var="c">
                        <div class="col-sm-3">
                        
                            <div class="col-item">
                                <div class="photo"  style="width:auto;height:200px">
                                    <img src="${pageContext.request.contextPath }/resources/images/${c.productID}.jpg" class="img-responsive" alt="${c.productName}" style="width:auto;height:150px" />
                                </div>
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-9">
                                            <h5>
                                               ${c.productName }</h5>
                                            <h5 class="price-text-color">
                                              &#8377;  ${c.productCost }</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                            <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                            </i><i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">Add to cart</a></p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="${pageContext.request.contextPath }/ProductDetail/${c.productID}" class="hidden-sm">More details</a></p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>
                              </c:forEach>
                         </div>
                      </div>
                   
                  </div>
               </div>
             </div>
        </div>
      
   </body>
</html>

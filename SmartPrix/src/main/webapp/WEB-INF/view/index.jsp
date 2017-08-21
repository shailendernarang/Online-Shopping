<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  
    <meta charset="utf-8">
    <title>SmartPrix</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css">
      <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<br>
<br>
<br>

<body background="https://www.ashercharles.com/wp-content/themes/v3/images/banner-main-large4.jpg">
<sec:authorize access="hasRole('ROLE_ADMIN')">
     			 <jsp:forward page="/admin/AdminCard"></jsp:forward>
</sec:authorize>
    			
<div class="navbar-wrapper animate-top">
  <div class="container">
    <div class="navbar navbar-inverse navbar-fixed-top">
      
        <div class="navbar-header">
        <a class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	      <span class="icon-bar"></span>
	      <span class="icon-bar"></span>
	      <span class="icon-bar"></span>
	    </a>
        <a class="navbar-logo" href="${pageContext.request.contextPath }/"><img style="margin-top:7px;margin-left:0px;" src="https://data3.smartprix.com/img/sprite/logo.png"/></a>
        </div>
        <div class="navbar-collapse collapse ">
          <ul class="nav navbar-nav">
            <li><a  href="${pageContext.request.contextPath }/">Home</a></li>
          <sec:authorize access="hasRole('ROLE_USER')">
            <li class="dropdown">
              <a href="${pageContext.request.contextPath }/BrandCard/" class="dropdown-toggle" data-toggle="dropdown">Mobiles <b class="glyphicon glyphicon-hand-down"></b></a>
              <ul class="dropdown-menu w3-hoverable" >
              <c:forEach items ="${categoryList}" var="c">
				
				<li> <a class="btn btn-default btn-xs" href="${pageContext.request.contextPath }/BrandCard/${ c.categoryID}" value="${ c.categoryID}" style="display:block;">&nbsp;${c.categoryName}&nbsp;</a>
</li>
			</c:forEach>
                
                
              </ul>
            </li>
            </sec:authorize>
     			
    		<sec:authorize access="isAnonymous()">
          <li class="dropdown">
              <a href="${pageContext.request.contextPath }/BrandCard/" class="dropdown-toggle" data-toggle="dropdown">Mobiles<b class="glyphicon glyphicon-menu-down"></b> </a>
              <ul class="dropdown-menu" >
             
              <c:forEach items ="${categoryList}" var="c">

				 <li style="margin-top:0px;margin-bottom: 3px;"> <a class="btn btn-default " href="${pageContext.request.contextPath }/BrandCard/${ c.categoryID}" value="${ c.categoryID}" style="display:block;">&nbsp;${c.categoryName}&nbsp;</a></li>

			</c:forEach>
                
                
              </ul>
            </li>
</sec:authorize>
          </ul>
          
          
          
      <ul class="nav navbar-nav navbar-right">
        <sec:authorize access="isAnonymous()">
              <li><a href="${pageContext.request.contextPath }/Login">Login <span class="glyphicon glyphicon-user"></span></a></li>
                 <li><a href="${pageContext.request.contextPath }/Register">Register <span class="glyphicon glyphicon-plus"></span></a></li>
 
   </sec:authorize>
   			<sec:authorize access="hasRole('ROLE_USER')"> 
         
              	<li> <a href="${pageContext.request.contextPath}/myCart/all"><span class="glyphicon glyphicon-shopping-cart"></span><span class="badge badge-pill badge-primary">${numberProducts }</span></a></li>
         
         </sec:authorize>
          <sec:authorize access="isAuthenticated()"> 
                       <li><a>Welcome ${pageContext.request.userPrincipal.name}</a></li>
                             <li><a href="${pageContext.request.contextPath }/LogOut">Logout <span class="sr-only">(current)</span></a></li>
         
         
         </sec:authorize>     
         
         
         
   
       </ul>
        </div>

    </div>
  </div><!-- /container -->
</div>

<div class="container">
        <div id="main_area">
                <!-- Slider -->
                <div class="row animate-bottom">
                    <div class="col-xs-12" id="slider">
                        <!-- Top part of the slider -->
                        <div class="row animate-bottom">
                            <div class="col-sm-12" id="carousel-bounding-box">
                                <div class="carousel slide" id="myCarousel">
                                    <!-- Carousel items -->
                                    <div class="carousel-inner">
                                        <div class="w3-animate-right active item" data-slide-number="0">
                                        <img src="https://rukminim1.flixcart.com/flap/1400/700/image/a689ee.jpg?q=50"></div>

                                        <div class="w3-animate-right item" data-slide-number="1">
                                        <img src="https://rukminim1.flixcart.com/flap/1400/700/image/cb6433.jpg?q=50"></div>

                                        <div class="w3-animate-right item" data-slide-number="2">
                                        <img src="https://rukminim1.flixcart.com/flap/1400/700/image/52cca6.jpg?q=50"></div>

                                        <div class="w3-animate-left item" data-slide-number="3">
                                        <img src="https://rukminim1.flixcart.com/flap/1400/700/image/8abcba.jpg?q=50"></div>
                                    </div><!-- Carousel nav -->
                                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>                                       
                                    </a>
                                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>                                       
                                    </a>                                
                                    </div>
                            </div>

                           </div>
                    </div>
                </div><!--/Slider-->

                <div class="row animate-bottom hidden-xs" id="slider-thumbs">
                        <!-- Bottom switcher of slider -->
                        <ul class="hide-bullets">
                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-0"><img src="https://rukminim1.flixcart.com/flap/500/500/image/a689ee.jpg?q=50"></a>
                            </li>

                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-1"><img src="https://rukminim1.flixcart.com/flap/300/300/image/cb6433.jpg?q=50"></a>
                            </li>

                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-2"><img src="https://rukminim1.flixcart.com/flap/300/300/image/52cca6.jpg?q=50"></a>
                            </li>

                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-3"><img src="https://rukminim1.flixcart.com/flap/500/500/image/8abcba.jpg?q=50"></a>
                            </li>

                        </ul>                 
                </div>
        </div>
</div>
<script type="text/javascript">
  jQuery(document).ready(function($) {
 
        $('#myCarousel').carousel({
                interval: 5000
        });
 
        $('#carousel-text').html($('#slide-content-0').html());
 
        //Handles the carousel thumbnails
       $('[id^=carousel-selector-]').click( function(){
            var id = this.id.substr(this.id.lastIndexOf("-") + 1);
            var id = parseInt(id);
            $('#myCarousel').carousel(id);
        });
 
 
        // When the carousel slides, auto update the text
        $('#myCarousel').on('slid.bs.carousel', function (e) {
                 var id = $('.item.active').data('slide-number');
                $('#carousel-text').html($('#slide-content-'+id).html());
        });
});
</script>
<%@include file="trending.jsp" %>

   </body>
</html>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  
    <meta charset="utf-8">
    <title>SmartPrix</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/2.ico"/>
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footerr.css">
    
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<br>
<br>
<br>

<body background="${pageContext.request.contextPath}/resources/images/new.jpg">
<div class="container">

 
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Contact Us</h4>
        </div>
        <div class="modal-body">
          <p>Our Details Are Provided UnderNeath!</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
     
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">About us</h4>
        </div>
        <div class="modal-body">
          <p>We Are The Leading E Commerce In Electronics Specialised In Mobiles ! We care About Your opinions</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  

<sec:authorize access="hasRole('ROLE_ADMIN')">
     			 <jsp:forward page="/admin/AdminCard"></jsp:forward>
</sec:authorize>
    			
<%@include file="header.jsp" %>
<div class="container">
        <div id="main_area">
                <!-- Slider -->
                <div class="row w3-animate-bottom">
                    <div class="col-sm-12 col-md-12" id="slider">
                       
                        <div class="row w3-animate-bottom">
                            <div class="col-sm-12" id="carousel-bounding-box">
                                <div class="carousel slide" id="myCarousel">
                                    
                                    <div class="carousel-inner">
                                        <div class="w3-animate-right active item" data-slide-number="0">
                                        <img src="https://rukminim1.flixcart.com/flap/1400/700/image/a689ee.jpg?q=50"></div>

                                        <div class="w3-animate-right item" data-slide-number="1">
                                        <img src="https://rukminim1.flixcart.com/flap/1400/700/image/cb6433.jpg?q=50"></div>

                                        <div class="w3-animate-right item" data-slide-number="2">
                                        <img src="https://rukminim1.flixcart.com/flap/1400/700/image/52cca6.jpg?q=50"></div>

                                        <div class="w3-animate-left item" data-slide-number="3">
                                        <img src="https://rukminim1.flixcart.com/flap/1400/700/image/8abcba.jpg?q=50"></div>
                                    </div>
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
                </div>

        </div>
</div>

<%@include file="trending.jsp" %>
<section>
<footer>
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-4 col-sm-6 footer-col">
        <div class="logofooter">SmartPrix</div>
        <p>Smart Prix is an Ecommerce Organisation.It Inculcates Every Aspects Of Your Choice And Deals In Electronics</p>
        <p><i class="fa fa-map-pin"></i> NIIT Connaught Place</p>
        <p><i class="fa fa-phone"></i> Phone (India) : +91 9650064979</p>
        <p><i class="fa fa-envelope"></i> E-mail : shailendernarang2@gmail.com</p>
        
      </div>
      
      <div class="col-md-4 col-sm-6 footer-col">
        <h6 class="heading7">LATEST POST</h6>
        <div class="post">
          <p>SmartPrix Just Extended Its Website For Budget Phones <span>August 23,2017</span></p>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 footer-col">
        
        <ul class="footer-social uli">
               <li class="lii"><a href="http://www.youtube.com/thetechbrat/" target="new_blank"><i class="fa fa-youtube social-icon youtube" aria-hidden="true"></i></a></li>
        
              <li class="lii"><a href="https://www.linkedin.com/in/shailender-narang-aaa618a8/" target="new_blank"><i class="fa fa-linkedin social-icon linked-in" aria-hidden="true"></i></a></li>
           <li class="lii"><a href="https://www.facebook.com/shailender.narang" target="new_blank"><i class="fa fa-facebook social-icon facebook" aria-hidden="true"></i></a></li>
           <li class="lii">  <a href="https://plus.google.com/u/0/112927653592812375007" target="new_blank" > <i class="fa fa-google-plus social-icon google" aria-hidden="true"></i></a></li>
         </ul>
      </div>
    </div>
  </div>
</footer>

<div class="copyright">
  <div class="container-fluid">
    <div class="col-md-6">
      <p><a  target="new_blank" href="http://www.youtube.com/thetechbrat/">© Subscribe to My Youtube Channel: THE TECH BRAT</a></p>
    </div>
    <div class="col-md-6">
      <ul class="bottom_uli uli">
        <li class="lii"><a href="http://www.lastminutetutorials.com">lastminutetutorials.com</a></li>
        <li class="lii"> <a data-toggle="modal" data-target="#myModal1">About Us</a></li>
        <li class="lii"> <a data-toggle="modal" data-target="#myModal">Contact Us</a></li>
      </ul>
    </div>
  </div>
</div>
</section>
   </body>
</html>

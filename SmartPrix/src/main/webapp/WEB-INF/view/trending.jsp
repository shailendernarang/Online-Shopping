<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/trending.css">
  <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/js/bootstrap.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">

  <!-- Modal -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Delivery Checker</h4>
        </div>
        <div class="modal-body">
          <p>Yuhuuuu! We Deliver to This Location!</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>

 
<section>
    <div class="container">
        <div class="row">
         <h3 class="text-center">Trending Android Products</h3>
         <c:forEach items="${productList}" var="c" begin="0" end="2">
        <div class="col-md-4" style="color:white">
             
         
      
          <div class="card card-01 w3-animate-left" >
          
          <img class="card-img-top" src="${pageContext.request.contextPath }/resources/images/${c.productID}.jpg"  alt="${c.productName}" align="middle" style="display: block;margin: 0 auto;width:max-width;height:150px">
          <div class="card-block">
            <span class="badge-box"><a href="${pageContext.request.contextPath }/myCart/addToCart/${c.productID}"><i class="fa fa-shopping-cart"></i></a></span>
            <h4 align="center" class="card-title" > ${c.productName }</h4>
            <h4  align="center" class="card-text"> &#8377; ${c.productCost }</h4>
            <a href="${pageContext.request.contextPath }/ProductDetail/${c.productID}" class="btn btn-default text-uppercase">More Details</a>
          
          
          </div>
            
        </div>
  
        </div>
         </c:forEach>
        </div>
        </div>
        
       
        
       <div class="container">
        <div class="row">
         
        <div class=" col-sm-4">
             
         
      
          <div style="background:linear-gradient(to bottom, #33ccff 0%, #006666 100%);" class="card card-01">
          
         
           <div class="inside-form">
            <h5 class="font_white text-center">SIGN IN</h5>
              <form method="POST" action="logg">
            <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-pencil "></i></span>
               <input type="text" class="form-control" name="name" placeholder="Username..."/>
               </div>
                  <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-pencil "></i></span>
  				<input type="password" class="form-control" name="password" placeholder="Password..."/>
  				 </div>
                                 <input type="submit" value="Let Me In!"class="btn btn-default btn-round btn-lg">
              
             </form>
          
         
            
        </div>
  
        </div>
        </div>
      <div class=" col-sm-4" style="color:white">
             
         
      
          <div style="background: linear-gradient(to bottom, #33ccff 0%, #cc0066 103%);"class="card card-01">
        	<div class="project project-default"> 	<div class="shape"> <div class="shape-text">
						top								
					</div>
					</div>
					</div>
          <img class="card-img-top img-responsive" src="http://www.pngall.com/wp-content/uploads/2016/04/Discount-PNG-Clipart.png"  alt="${c.productName}" align="middle" style="display: block;margin: 0 auto;width:max-width;height:150px">
          <div class="card-block">
            <h4 align="center" class="card-title">40% discount On Samsung Galaxy S8</h4>
            <p align="center "class="card-text">Use Coupon Code SMARTPRIX40</p>
            <a href="${pageContext.request.contextPath }/ProductDetail/612" class="btn btn-default text-uppercase">More Details</a>
          
          
          </div>
            
        </div>
  
        </div>
        
        <div class="col-sm-4">
             
         
      
          <div style="background:linear-gradient(to bottom, #33ccff 0%, #006666 100%);" class="card card-01">
          
         
           <div class="mar20 inside-form">
            <h5 class="font_white text-center">Check Delivery Pincode</h5>
                  <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-pencil "></i></span>
  				<input type="text" class="form-control" name="" placeholder="Enter PinCode"/>
  				 </div>
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2">Check</button>
  
        </div>
  
        </div>
        </div>
        </div>
        </div>
        
        <div class="container">
        <div class="row">
         <h3 class="text-center">Related Products</h3>
         <c:forEach items="${productList}" var="c" begin="4" end="7">
        <div class="col-md-3" style="color:white">
             
         
      
          <div class="card card-01">
          
          <img class="card-img-top" src="${pageContext.request.contextPath }/resources/images/${c.productID}.jpg"  alt="${c.productName}" align="middle" style="display: block;margin: 0 auto;width:max-width;height:150px">
          <div class="card-block">
            <span class="badge-box"><a href="${pageContext.request.contextPath }/myCart/addToCart/${c.productID}"><i class="fa fa-shopping-cart"></i></a></span>
            <h4 align="center" class="card-title" > ${c.productName }</h4>
            <h4  align="center" class="card-text"> &#8377; ${c.productCost }</h4>
            <a href="${pageContext.request.contextPath }/ProductDetail/${c.productID}" class="btn btn-default text-uppercase">More Details</a>
          
          
          </div>
            
        </div>
  
        </div>
         </c:forEach>
        </div>
        </div>
        
         </section>
</body>
</html>



<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/productdetail.css">
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  		<script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  	    <script src="http://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/js/bootstrap.js"></script>
    	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
    <title>eCommerce Product Detail</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">

  </head>

  <body>
	
	<div class="container-fluid" >
		<div class="card"style="background:white" >
			<div class="container-fluid">
							<img src="${pageContext.request.contextPath }/resources/images/${productList.productID}.jpg" style="width:400px;height:400px;"/>


					<div class="details col-md-6">
						<h3 class="product-title">${productList.productName }</h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">41 reviews</span>
						</div>
						<p class="product-description">${productList.productDesc }</p>
						<h4 class="price">Our price: <span>&#8377; ${productList.productCost }</span></h4>
						<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
						
						
						<div class="action">
							<a class="add-to-cart btn btn-default" href="${pageContext.request.contextPath}/myCart/addToCart/${productList.productID}">Add to cart</a>
						</div>
					</div>
				</div>
			</div>
		</div>
<div class="container-fluid" >
		<div class="row" >
		<h3 class="text-center">Users Also Bought</h3>
		
         <c:forEach items="${pro}" var="c" begin="2" end="6">
         
        
        <div class="col-md-4" style="color:black">
             
         
      
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
  </body>
   <%@include file="footer.jsp" %>
</html>



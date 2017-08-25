<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  	 <script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  	  <script src="http://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/js/bootstrap.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  	 
  
    <style>
    html {
    font-family: Lato, 'Helvetica Neue', Arial, Helvetica, sans-serif;
    font-size: 14px;
}

h5 {
    font-size: 1.28571429em;
    font-weight: 700;
    line-height: 1.2857em;
    margin: 0;
}

.card{box-shadow:2px 2px 20px rgba(0,0,0,0.3); border:none; margin-bottom:30px;}
.card-01 .card-block{position:relative; padding-top:40px;}
.card-01 .badge-box{position:absolute; top:-20px; left:50%; width:100px; height:100px;margin-left:-50px; text-align:center;}
.card-01 .badge-box i{background:#DFC717; color:#fff; border-radius:50%;  width:50px; height:50px; line-height:50px; text-align:center; font-size:20px;}
  .btn-default{background:#DFC717; color:#fff; font-weight:700; text-shadow:1px 1px 0 rgba(0,0,0,0.2); font-size:14px;}
    </style>
<title>Our Products</title>
</head>
<body>
    <%@include file="/WEB-INF/view/header.jsp"%>
    <br>
    <br>
    <br>
    
<div class="container">
      
       <div class="row">
            
           <c:forEach items="${productList}" var="c">
            <div class="col-sm-4">
              <div class="card card-01">
       			        <img style="display: block;margin: 0 auto;width:max-width;height:200px" class="card-img-top w3-animate-opacity" style="align-items:center;300px;height:200px;" src="${pageContext.request.contextPath }/resources/images/${c.productID}.jpg">

                    <div class="card-block">
                    <span class="badge-box"><a href="${pageContext.request.contextPath }/myCart/addToCart/${c.productID}"><i class="fa fa-shopping-cart"></i></a></span>
                      <h4 align="center" class="card-title"> ${c.productName }</h4>
                        <p  align="center" class="card-text">&#8377; ${c.productCost }.</p>
	
                    	<a href="${pageContext.request.contextPath }/ProductDetail/${c.productID}" class="btn btn-default text-uppercase">More</a>	
                    	
                            </div>

                     </div>
                     </div>
           </c:forEach>
       </div>
</div>

</body>

</html>
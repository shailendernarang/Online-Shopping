
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
    	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
  	 	<link href="${pageContext.request.contextPath }/resources/css/productcard.css" rel="stylesheet"/>
		<title>Our Products</title>
</head>
<body>
    <%@include file="/WEB-INF/view/header.jsp"%>
    <br>
    <br>
    <br>
    
    
<div class="container-fluid">
      
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
 <%@include file="footer.jsp" %>
</html>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <!-- <div class="container">
    <div class="row animate-bottom">
        <div class="row">
            <div class="col-md-9 lg-9 sm-9">
                <h3>
                   Trending Android Products</h3>
            </div>
            <div class="col-md-3">
             
            </div>
        </div>
       
      
                <div class="item active">
                    <div class="row">
                      <c:forEach items="${productList}" var="c" end="3">
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
                                            <i class="fa fa-shopping-cart"></i><a href="${pageContext.request.contextPath}/myCart/addToCart/${c.productID}" class="hidden-sm" >Add to cart</a></p>
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
        
        
 <div class="container">
    <div class="row animate-bottom">
        <div class="row">
            <div class="col-md-9">
                <h3>
                   Trending Windows Products</h3>
            </div>
            <div class="col-md-3">
             
            </div>
        </div>
        
      
                <div class="item active">
                    <div class="row">
                      <c:forEach items="${productList}" var="c" begin="5">
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
                                            <i class="fa fa-shopping-cart"></i><a href="${pageContext.request.contextPath }/mycart/addtocart" class="hidden-sm">Add to cart</a></p>
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
               </div>-->
<section>
    <div class="container">
        <div class="row">
         <h3 class="text-center">Trending Android Products</h3>
         <c:forEach items="${productList}" var="c" begin="0" end="3">
        <div class="col-md-3">
             
         
      
          <div class="card card-01">
          
          <img class="card-img-top" src="${pageContext.request.contextPath }/resources/images/${c.productID}.jpg"  alt="${c.productName}" align="middle" style="display: block;margin: 0 auto;width:max-width;height:150px">
          <div class="card-block">
            <span class="badge-box"><a href="${pageContext.request.contextPath }/myCart/addtocart/${c.productID}"><i class="fa fa-shopping-cart"></i></a></span>
            <h4 class="card-title"> ${c.productName }</h4>
            <p class="card-text"> ${c.productDesc }.</p>
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


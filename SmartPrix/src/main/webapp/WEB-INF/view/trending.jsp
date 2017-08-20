<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/trending.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <div class="container">
    <div class="row animate-bottom">
        <div class="row">
            <div class="col-md-9">
                <h3>
                   Trending Android Products</h3>
            </div>
            <div class="col-md-3">
             
            </div>
        </div>
        <div id="carousel-example" class="carousel slide hidden-xs" data-ride="carousel">
            <div class="carousel-inner">
      
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
        <div id="carousel-example" class="carousel slide hidden-xs" data-ride="carousel">
            <div class="carousel-inner">
      
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


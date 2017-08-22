<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
   
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
      <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
	  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    
    
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="navbar-wrapper">
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
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="${pageContext.request.contextPath }/">Home</a></li>
          <sec:authorize access="hasRole('ROLE_USER')">
            <li class="dropdown">
              <a href="${pageContext.request.contextPath }/BrandCard/" class="dropdown-toggle" data-toggle="dropdown">Mobiles <b class="caret"></b></a>
              <ul class="dropdown-menu">
              <c:forEach items ="${categoryList}" var="c">
					<li><a href="${pageContext.request.contextPath }/BrandCard/${ c.categoryID}" value="${ c.categoryID}" style="display:block;" class="dropdown-toggle" data-toggle="dropdown">&nbsp;${c.categoryName}&nbsp;</a></li>
			</c:forEach>        
              </ul>
            </li>
            </sec:authorize>
     			 
    		<sec:authorize access="isAnonymous()">
          <li class="dropdown">
              <a href="${pageContext.request.contextPath }/BrandCard/" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Mobiles <b class="caret"></b></a>
              <ul class="dropdown-menu  w3-hoverable">
              <c:forEach items ="${categoryList}" var="c">

				 <li><a class="btn btn-default dropdown-item" href="${pageContext.request.contextPath }/BrandCard/${ c.categoryID}" value="${ c.categoryID}" style="display:block;">&nbsp;${c.categoryName}&nbsp;</a> </li>

			</c:forEach>
                
                
              </ul>
            </li>
</sec:authorize>
          </ul>
            <ul class="nav navbar-nav">
               <li class=" nav-item navbar-text">
            <span>&nbsp;Always Free Delivery</span>
        </li>
            </ul>
          
          
      <ul class="nav navbar-nav navbar-right">
        <sec:authorize access="isAnonymous()">
              <li><a href="${pageContext.request.contextPath }/Login">Login <span class="sr-only">(current)</span></a></li>
                 <li><a href="${pageContext.request.contextPath }/Register">Register <span class="sr-only">(current)</span></a></li>
 
   </sec:authorize>
   			<sec:authorize access="hasRole('ROLE_USER')"> 
         
              	<li> <a href="${pageContext.request.contextPath}/myCart/all"><span class="glyphicon glyphicon-shopping-cart"></span><span class="badge badge-pill badge-primary">${numberProducts }</span></a></li>
         
         </sec:authorize>
          <sec:authorize access="isAuthenticated()"> 
           
                       <li class="dropdown">
                       <a class="dropdown-toggle" data-toggle="dropdown">Hey ${pageContext.request.userPrincipal.name}</a>
                       		<ul class="dropdown-menu">
                       			<a href="<c:url value='/UserProfile/${pageContext.request.userPrincipal.name}'/>"><li>My Profile</li></a>
                       		</ul>
          				 </li>
          				 </li>
                             <li><a href="${pageContext.request.contextPath }/LogOut">Logout <span class="sr-only">(current)</span></a></li>
         
         
         </sec:authorize>     
         
         
         
   
       </ul>
        </div>

    </div>
  </div><!-- /container -->
</div><!-- /navbar wrapper -->


</body>
</html>



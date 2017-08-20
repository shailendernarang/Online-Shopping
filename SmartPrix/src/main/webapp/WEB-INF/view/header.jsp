<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Bootstrap Navbar Cart Dropdown - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
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

				<li><a href="${pageContext.request.contextPath }/BrandCard/${ c.categoryID}" value="${ c.categoryID}" style="display:block;">&nbsp;${c.categoryName}&nbsp;</a>
</li>
			</c:forEach>
                
                
              </ul>
            </li>
            </sec:authorize>
     			 <sec:authorize access="hasRole('ROLE_ADMIN')">
       				<li><a href="${pageContext.request.contextPath }/AdminCard">Admin</a></li>
    			</sec:authorize>
    			
    		<sec:authorize access="isAnonymous()">
          <li class="dropdown">
              <a href="${pageContext.request.contextPath }/BrandCard/" class="dropdown-toggle" data-toggle="dropdown">Mobiles <b class="caret"></b></a>
              <ul class="dropdown-menu">
               
                
              <c:forEach items ="${categoryList}" var="c">

				 <li><a href="${pageContext.request.contextPath }/BrandCard/${ c.categoryID}" value="${ c.categoryID}" style="display:block;">&nbsp;${c.categoryName}&nbsp;</a> </li>

			</c:forEach>
                
                
              </ul>
            </li>
</sec:authorize>
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
                       <li><a>Welcome ${pageContext.request.userPrincipal.name}</a></li>
                             <li><a href="${pageContext.request.contextPath }/LogOut">Logout <span class="sr-only">(current)</span></a></li>
         
         
         </sec:authorize>     
         
         
         
   
       </ul>
        </div>

    </div>
  </div><!-- /container -->
</div><!-- /navbar wrapper -->


</body>
</html>



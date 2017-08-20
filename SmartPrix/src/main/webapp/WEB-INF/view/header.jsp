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

<nav class="navbar navbar-inverse navbar-fixed-top">

  <div class="container-fluid">
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
           <img class="navbar-brand" src="https://s3.amazonaws.com/owler-image/logo/smartprix_owler_20160226_213849_original.png" height="50"/>
      
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">

        <li><a href="${pageContext.request.contextPath }/">Home </a></li>
        
        <sec:authorize access="hasRole('ROLE_USER')">
         <li class="dropdown"><a href="${pageContext.request.contextPath }/BrandCard/" class="dropbtn">Mobiles</a>
        <div class="dropdown-content"  style="width:500px;">
   
			<c:forEach items ="${categoryList}" var="c">

				<a href="${pageContext.request.contextPath }/BrandCard/${ c.categoryID}" value="${ c.categoryID}" style="display:block;">&nbsp;${c.categoryName}&nbsp;</a>

			</c:forEach>
    	</div>
      
 
         <!--   <li ><a href="">DSLR</a></li>
               <li><a href="${pageContext.request.contextPath }/MobileAccessories">Mobile Accessories</a></li>
                    <li><a href="${pageContext.request.contextPath }/DSLRAccessories">DSLR Accessories</a></li>
               
        -->
        </sec:authorize>
         		<sec:authorize access="hasRole('ROLE_ADMIN')">
       				 <li><a href="${pageContext.request.contextPath }/admin/Category">Category</a></li>
            					<li><a href="${pageContext.request.contextPath }/admin/Product"	>Product</a></li>
               								<li><a href="${pageContext.request.contextPath }/admin/Brand">Brand</a></li>
 
    			</sec:authorize>
				<sec:authorize access="isAnonymous()">
         <li class="dropdown"><a href="${pageContext.request.contextPath }/BrandCard/" class="dropbtn">Mobiles</a>
        <div class="dropdown-content"  style="width:500px;">
   
			<c:forEach items ="${categoryList}" var="c">

				<a href="${pageContext.request.contextPath }/BrandCard/${ c.categoryID}" value="${ c.categoryID}" style="display:block;">&nbsp;${c.categoryName}&nbsp;</a>

			</c:forEach>
    	</div>
      
        				
           <!--  <li><a href="${pageContext.request.contextPath }/BrandCard"	>DSLR</a></li>
               <li><a href="${pageContext.request.contextPath }/MobileAccessories">Mobile Accessories</a></li>
                       <li><a href="${pageContext.request.contextPath }/DSLRAccessories">DSLR Accessories</a></li>
            -->
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
</nav>
<script type="text/javascript">
(function() {

  'use strict';

  document.querySelector('.material-design-hamburger__icon').addEventListener(
    'click',
    function() {      
      var child;
      
      document.body.classList.toggle('background--blur');
      this.parentNode.nextElementSibling.classList.toggle('menu--on');

      child = this.childNodes[1].classList;

      if (child.contains('material-design-hamburger__icon--to-arrow')) {
        child.remove('material-design-hamburger__icon--to-arrow');
        child.add('material-design-hamburger__icon--from-arrow');
      } else {
        child.remove('material-design-hamburger__icon--from-arrow');
        child.add('material-design-hamburger__icon--to-arrow');
      }

    });

})();
</script> 
</body>
</html>



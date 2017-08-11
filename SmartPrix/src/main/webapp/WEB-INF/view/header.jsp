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

<style>
li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: none;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #00000}

.dropdown:hover .dropdown-content {
    display: block;
}
.navbar-brand {
  transform: translateX(-50%);
  left: 50%;
  position: absolute;
  width: 100px;
}
.navbar {
  min-height:50px;
}

.nav.navbar-left{
  bottom: 0;
  left: 0;
  position:absolute;
}

.nav.navbar-right{
  bottom: 0;
  right: 0;
  position:absolute;
}

</style>
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
        <li class="dropdown"><a href="${pageContext.request.contextPath }/0/Mobiles" class="dropbtn">Mobiles</a>
        <div class="dropdown-content"  style="width:500px;">
   
<c:forEach items ="${categoryList}" var="c">

<a href="" value="${ c.categoryID}" style="display:block;">&nbsp;${c.categoryName}&nbsp;</a>

</c:forEach>
    </div>
        </li>
            <li><a href="${pageContext.request.contextPath }/BrandCard"	>DSLR</a></li>
               <li><a href="${pageContext.request.contextPath }/MobileAccessories">Mobile Accessories</a></li>
                       <li><a href="${pageContext.request.contextPath }/DSLRAccessories">DSLR Accessories</a></li>
               
         <sec:authorize access="hasRole('ROLE_ADMIN')">
        <li><a href="${pageContext.request.contextPath }/admin/Category">Category</a></li>
            <li><a href="${pageContext.request.contextPath }/admin/Product"	>Product</a></li>
               <li><a href="${pageContext.request.contextPath }/admin/Brand">Brand</a></li>
 
    </sec:authorize>
      </ul>

      <ul class="nav navbar-nav navbar-right">
        <sec:authorize access="isAnonymous()">
              <li><a href="${pageContext.request.contextPath }/Login">Login <span class="sr-only">(current)</span></a></li>
                 <li><a href="${pageContext.request.contextPath }/Register">Register <span class="sr-only">(current)</span></a></li>
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



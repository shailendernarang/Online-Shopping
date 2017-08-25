<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<br>
<br>
<br>
${msg}
<!-- <form action="logg" method="POST" >
Username<input name="name"/>
Password<input name="password"/>
<input type="submit" value="submit"/>
</form>
-->
<script src="https://use.fontawesome.com/1dec14be15.js"></script>
    
   
    
    <div class="container-fluid stylish-form">
    
      <h2 class="text-center">Login</h2>
      <div class="row mar20" >
        <div class="col-md-12 col-sm-12 col-xs-12">
          <div class="inner-section">
          
            <form method="POST" action="logg">
              <div class="mar20 inside-form">
                <h2 class="font_white text-center">SIGN In</h2>
                
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-pencil "></i></span>
                  <input type="text" class="form-control" name="name" placeholder="Username..."/>
  
                </div>
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-key"></i></span>
                  <input type="password" class="form-control" name="password" placeholder="Password..."/>
                </div>
      <div class="footer text-center">
                  <input type="submit" value="Let Me In!"class="btn btn-neutral btn-round btn-lg">
                 
                </div>
              </div>
             <c:if test="${not empty loggedInUserName }">
				<div class="alert alert-danger">Enter Correct Details</div>
			</c:if>
            </form>
          </div>
        </div>
      </div>
    </div>
</body>
</html>

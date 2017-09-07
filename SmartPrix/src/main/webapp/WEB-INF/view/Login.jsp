
<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">
      <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<br>
<br>
<br>
    <div class="container-fluid stylish-form">
    
      <h2 class="text-center">Login</h2>
      <div class="row mar20" >
        <div class="col-lg-12 col-sm-4 col-md-12 col-xs-12">
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
                  <input type="password" class="form-control" name="password" placeholder="Password" />
                </div>
      			<div class="footer text-center">
               
                  <input type="submit" value="Let Me In!"class="btn btn-neutral btn-round btn-lg">
                 
                </div>
              </div>
             
            </form>
          </div>
        </div>
      </div>
    </div>
</body>
<%@include file="footer.jsp" %>
</html>

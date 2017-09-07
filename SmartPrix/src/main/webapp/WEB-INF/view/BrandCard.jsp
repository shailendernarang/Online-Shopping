
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/brandcard.css"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
 	<title>Brands With Us</title>
</head>
<body>

<%@include file="/WEB-INF/view/header.jsp"%>
<br>
<br>
<br>
<div class="container">
       
       <div class="row">
            
           <c:forEach items="${brandList}" var="c">
           
       			     <div class=" col-sm-4" style="align-content:middle, margin-left: 10px;margin-bottom: 10px;">
                    		<div class="card w3-animate-bottom" >
                    			<a href="${pageContext.request.contextPath }/ProductCard/${c.brandID }"  style="display:block;">
                    			<img class="card-img-top w3-animate-opacity" style="align-items:center;300px;height:200px;" src="${pageContext.request.contextPath }/resources/images/${c.brandID}.jpg" alt="${c.brandName }"></a>
                    				<div class="card-block">
                        				<h5 align="center" class="text-bold w3-animate-opacity">${c.brandName}</h5>
                					</div>
                            </div>
                     </div>
           </c:forEach>
       </div>
</div>
</body>
  <%@include file="footer.jsp" %>


</html>
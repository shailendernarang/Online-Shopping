
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
        
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
    <style>
    html {
    font-family: Lato, 'Helvetica Neue', Arial, Helvetica, sans-serif;
    font-size: 14px;
}

h5 {
    font-size: 1.28571429em;
    font-weight: 700;
    line-height: 1.2857em;
    margin: 0;
}

.card {
    font-size: 1em;
    overflow: hidden;
    padding: 0;
    border: none;
    border-radius: .28571429rem;
    box-shadow: 0 1px 3px 0 #d4d4d5, 0 0 0 1px #d4d4d5;
}

.card-block {
    font-size: 1em;
    position: relative;
    margin: 0;
    padding: 1em;
    border: none;
    border-top: 1px solid rgba(34, 36, 38, .1);
    box-shadow: none;
}

.card-img-top {
    display: block;
    width: 80%;
    height: auto;
    margin:0 auto;
}

.card-title {
    font-size: 1.28571429em;
    font-weight: 700;
    line-height: 1.2857em;
    align-content: middle;
}

.card-text {
    clear: both;
    margin-top: .5em;
    color: rgba(0, 0, 0, .68);
     align-content: middle;
}




.text-bold {
    font-weight: 700;
}

.meta {
    font-size: 1em;
    color: rgba(0, 0, 0, .4);
}

.meta a {
    text-decoration: none;
    color: rgba(0, 0, 0, .4);
}

.meta a:hover {
    color: rgba(0, 0, 0, .87);
}

    </style>
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
                    			<a href="${pageContext.request.contextPath }/ProductCard/${c.brandID }" value="${ c.categoryID}" style="display:block;">
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



</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  
<%@include file="header.jsp"%>
<%@ page isELIgnored="false" %>
<head>
    <meta charset="utf-8">
    <title>Register to SmartPrix</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <style type="text/css">
   </style>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    
</head>
<body>
<br>
<br>
<br>


<sp:form class="form-horizontal" action='${pageContext.request.contextPath }/save' method="POST" modelAttribute="user">
 <p class="h5 text-center mb-4">Sign up</p>
 
     <div class="md-form">
        <i class="fa fa-user prefix grey-text"></i>
        <sp:input type="text" id="orangeForm-name" class="form-control" path="userName"/>
        <label for="orangeForm-name">Your name</label>
    </div>
    <div class="md-form">
        <i class="fa fa-envelope prefix grey-text"></i>
        <sp:input type="text" id="orangeForm-mail" class="form-control" path="userEmail"/>
        <label for="orangeForm-email">Your Email</label>
    </div>

    <div class="md-form">
        <i class="fa fa-lock prefix grey-text"></i>
        <sp:input type="password" id="orangeForm-pass" class="form-control" path="userPass"/>
        <label for="orangeForm-pass">Password</label>
    </div>
     <div class="md-form">
        <i class="fa fa-phone prefix grey-text"></i>
        <sp:input type="text" id="orangeForm-phone" class="form-control" path="userPhone"/>
        <label for="orangeForm-phone">Number Along With Country Code</label>
    </div>
    <div class="md-form">
        <i class="fa fa-location-arrow prefix grey-text"></i>
        <sp:input type="text" id="orangeForm-location" class="form-control" path="shippingDetails.shippingAddress"/>
        <label for="orangeForm-location">Street Address</label>
    </div>
     <div class="md-form">
        <i class="fa fa-map-marker prefix grey-text"></i>
        <sp:input type="text" id="orangeForm-location1" class="form-control" path="shippingDetails.shippingStreet"/>
        <label for="orangeForm-location">Landmark</label>
    </div> <div class="md-form">
        <i class="fa fa-map-marker prefix grey-text"></i>
        <sp:input type="text" id="orangeForm-location2" class="form-control" path="shippingDetails.shippingPinCode"/>
        <label for="orangeForm-location">Pin Code</label>
       
    </div>
     <input type="checkbox" id="name" onclick="copyValue(this)"  > Above Address same As Billing Address?
    
         <div class="md-form">
        <i class="fa fa-location-arrow prefix grey-text"></i>
        <sp:input type="text" id="orangeForm-location3" class="form-control" path="billingDetails.billingAddress"/>
        <label for="orangeForm-location">Street Address</label>
    </div> <div class="md-form">
        <i class="fa fa-map-marker prefix grey-text"></i>
        <sp:input type="text" id="orangeForm-location4" class="form-control" path="billingDetails.billingStreet"/>
        <label for="orangeForm-location">Landmark</label>
    </div> <div class="md-form">
        <i class="fa fa-map-marker prefix grey-text"></i>
        <sp:input type="text" id="orangeForm-location5" class="form-control" path="billingDetails.billingPinCode"/>
        <label for="orangeForm-location">Pin Code</label>
    </div>
     <div class="text-center">
   			 <sp:button class="btn btn-deep-orange" value="submit">Register</sp:button>
    </div>
</sp:form>
<script>
$(function(){

    $('#name').change(function(){
    var newVal=$("#orangeForm-location").val();
    var newVall=$("#orangeForm-location1").val();
    var newValll=$("#orangeForm-location2").val();

       if (this.checked) {
        $("#orangeForm-location3").val(newVal);
        $("#orangeForm-location4").val(newVall);
        $("#orangeForm-location5").val(newValll);
    }
    });
});

</script>
</body>
</html>
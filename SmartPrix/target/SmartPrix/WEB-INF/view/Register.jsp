<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  
	<%@include file="header.jsp"%>
	<%@ page isELIgnored="false" %>
<!DOCTYPE html >
<html>

<head>
    <meta charset="utf-8">
    <title>Register to SmartPrix</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/register.css" rel="stylesheet">
     <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    
</head>
<body>

 <div class="container-fluid">
    <div class="col-lg-12 col-sm-4 col-md-12 col-xs-12">
   		 <div id="logbox">
     		 <sp:form id="signup" method="post" action="${pageContext.request.contextPath }/save" modelAttribute="user">
        <h1>Create An Account</h1>
        <sp:input path="userName" type="text" placeholder="What's your username?" pattern="^[\w]{3,16}$" autofocus="autofocus"  class="input pass"/>
       	<sp:errors path="userName"/>
        <sp:input path="userPass" type="password" placeholder="Choose a password" required="required" class="input pass"/>
        <sp:input path="userEmail" type="email" placeholder="Email address" required="required" class="input pass"/>
        <sp:input path="userPhone" type="phone" placeholder="Phone Number" required="required"  class="input pass"/>
        <sp:input path="shippingDetails.shippingAddress" id="orangeForm-location" type="text" placeholder="Address" required="required"  class="input pass"/>
        <sp:input path="shippingDetails.shippingStreet"  id="orangeForm-location1" type="text" placeholder="Street" required="required"  class="input pass"/>
        <sp:input path="shippingDetails.shippingPinCode" id="orangeForm-location2" type="text" placeholder="Pin Code" required="required" class="input pass"/>
      	  <input type="checkbox" id="name" onclick="copyValue(this)"  > Same Address?Just Click Me    
      	<sp:input path="billingDetails.billingAddress" id="orangeForm-location3" type="text" placeholder="Address" required="required" class="input pass"/>
        <sp:input path="billingDetails.billingStreet"  id="orangeForm-location4" type="text" placeholder="Street" required="required" class="input pass"/>
        <sp:input path="billingDetails.billingPinCode" id="orangeForm-location5" type="text" placeholder="Pin Code" required="required" class="input pass"/>
       
       
       
       
       
        <sp:button type="submit" value="Sign me up!" class="inputButton">Sign Me Up!</sp:button>
        <div class="text-center">
            already have an account? <a href="${pageContext.request.contextPath }/Login" id="login_id">login</a>
        </div>
      </sp:form>
    </div>
   </div>
   </div>
   
   <%@include file="footer.jsp" %>
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


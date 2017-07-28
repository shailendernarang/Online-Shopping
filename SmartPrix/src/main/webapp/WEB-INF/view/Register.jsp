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
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Register to SmartPrix</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
   </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<br>
<br>
<br>
<sp:form class="form-horizontal" action='addUser' method="POST" modelAttribute="user">
  <fieldset>
<c:if test="${empty user.userName}">
 <div class="control-group">
      <!-- ID -->
      <label class="control-label"  for="id">ID</label>
      <div class="controls">
        <sp:input path="userID" type="text"  class="input-xlarge" disabled="true" readonly="true"/>
  
        <p class="help-block">Username can contain any letters or numbers, without spaces</p>
 
      </div>
    </div>
    </c:if>
    <div class="control-group">
      <!-- Username -->
      <label class="control-label"  for="username">Username</label>
      <div class="controls">
        <sp:input path="userName" type="text"  class="input-xlarge"/>
  
        <p class="help-block">Username can contain any letters or numbers, without spaces</p>
 
      </div>
    </div>
 
    <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="email">E-mail</label>
      <div class="controls">
        <sp:input type="text" path="userEmail"  class="input-xlarge"></sp:input>
        <p class="help-block">Please provide your E-mail</p>
      </div>
    </div>
     
    <div class="control-group">
      <!-- Password-->
      <label class="control-label" for="password">Password</label>
      <div class="controls">
        <sp:input type="password" path="userPass" class="input-xlarge"></sp:input>
        <p class="help-block">Password should be at least 4 characters</p>
      </div>
    </div>
 
   
 
    <div class="control-group">
      <!-- Button -->
      <div class="controls">
      <c:if test="${empty user.userName}">
        <sp:button class="btn btn-success" value="submit">Register</sp:button>
    
    </c:if>
    <c:if test="${not empty user.userName}">
        <sp:button class="btn btn-success" value="submit">Update</sp:button>
    
    </c:if>
    
      </div>
    </div>
      
      
  
  </fieldset>
</sp:form>
<c:if test="${not empty userList}">
<table width="50%" border="1">
<th>ID</th><th>Email</th><th>Password</th><th>Edit</th><th>DELETE</th>
<tr>
<c:forEach items="${userList}" var="u">
<td>${u.userID}</td>
<td>${u.userEmail}</td>
<td>${u.userPass}</td>
<td><a href="<c:url value='updateUser/${u.userID}'/>">Edit</a>
<td><a href="deleteUser/${u.userID}">Delete</a>
</tr>
</c:forEach>
</table>
</c:if>
</body>
</html>
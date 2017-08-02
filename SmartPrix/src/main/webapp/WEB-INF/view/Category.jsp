<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  
<html>
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Bootstrap Navbar and Slider Overlay Text - Bootsnipp.com</title>
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
<sp:form action="${pageContext.request.contextPath }/addCategory" method="POST" modelAttribute="category">
<c:if test="${not empty category.categoryName}">
Category ID    <sp:input path="categoryID" readOnly="true" disabled="true"/>
<sp:hidden path="categoryID"/>
</c:if>
Category Name  <sp:input path="categoryName"/>
Category Desc  <sp:input path="categoryDesc"/>
 <c:if test="${empty category.categoryName}">
        <sp:button class="btn btn-success" value="submit">Register</sp:button>
    </c:if>
    <c:if test="${not empty category.categoryName}">
        <sp:button class="btn btn-success" value="submit">Update</sp:button>
    </c:if>
  
</sp:form>
<br>
<br>
<br>

<c:if test="${not empty categoryList}">
<table width="50%" border="1">
<tr>
<th>ID</th><th>Category Name</th><th>Category Description</th><th>Action</th>
</tr>
<tr>
<c:forEach items="${categoryList}" var="c">
<tr><td>${c.categoryID}</td>
<td>${c.categoryName}</td>
<td>${c.categoryDesc}</td>
<td><a href="<c:url value='updateCategory/${c.categoryID}'/>">Edit/</a>
<a href="<c:url value='deleteCategory/${c.categoryID}'/>">Delete</a></td>


</tr>

</c:forEach>
</tr>
</table>
</c:if>

</body>
</html>
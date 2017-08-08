<%@include file="/WEB-INF/view/header.jsp"%>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  
<html>
<head>
    <meta charset="utf-8">
    <title>Bootstrap Navbar and Slider Overlay Text - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">

  
   </style>
</head>
<body>
<br>
<br>
<br>
<sp:form action="${pageContext.request.contextPath }/addProduct" method="POST" modelAttribute="product" enctype="Multipart/form-data">
<c:if test="${not empty product.productName}">
Product ID    <sp:input path="productID" readOnly="true" disabled="true"/>
<sp:hidden path="productID"/>
</c:if>
Product Name  <sp:input path="productName"/>
Product Desc  <sp:input path="productDesc"/>
Product Cost <sp:input path="productCost"/>
Choose Image <sp:input type="file" path="image" />
<sp:select path="brandID">
<c:forEach items ="${brandList}" var="c">

<sp:option value="${ c.brandID}">${c.brandName}</sp:option>

</c:forEach>
</sp:select>




 <c:if test="${empty product.productName}">
        <sp:button class="btn btn-success" value="submit">Register</sp:button>
    </c:if>
    <c:if test="${not empty product.productName}">
        <sp:button class="btn btn-success" value="submit">Update</sp:button>
    </c:if>
  
</sp:form>
<br>
<br>
<br>

<c:if test="${not empty productList}">
<table width="50%" border="1">
<tr>
<th>ID</th><th>Product Name</th><th>Product Description</th><th>Product Cost</th><th>Brand ID</th><th>Image</th><th>Action</th>
</tr>
<tr>
<c:forEach items="${productList}" var="c">
<tr><td>${c.productID}</td>
<td>${c.productName}</td>
<td>${c.productDesc}</td>
<td>${c.productCost}</td>
<td>${c.brandID}</td>
<td><img src="${pageContext.request.contextPath }/resources/images/${c.productID}.jpg" style="height:120px;width:150px;"/></td>
<td><a href="<c:url value='updateProduct/${c.productID}'/>">Edit/<a href="<c:url value='deleteProduct/${c.productID}'/>">Delete</a></a>
</tr>

</c:forEach>
</tr>
</table>
</c:if>


</body>
</html>
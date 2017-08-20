<%@include file="/WEB-INF/view/header.jsp" %>
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
.modal  {
    /*   display: block;*/
    padding-right: 0px;
    background-color: rgba(4, 4, 4, 0.8); 
    }
   
    .modal-dialog {
            top: 20%;
                width: 100%;
    position: absolute;
        }
        .modal-content {
                border-radius: 0px;
                border: none;
    top: 40%;
            }
            .modal-body {
                    background-color: #0f8845;
    color: white;
                }
               
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
   </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<br>
<br>
<br>
<sp:form action="${pageContext.request.contextPath }/addBrand" method="POST" modelAttribute="brand" enctype="Multipart/form-data">
<c:if test="${not empty brand.brandName}">
Brand ID    <sp:input path="brandID" readOnly="true" disabled="true"/>
<sp:hidden path="brandID"/>
</c:if>
Brand Name  <sp:input path="brandName"/>
Brand Desc  <sp:input path="brandDesc"/>
Brand Rating <sp:input path="brandRating"/>
Choose Image <sp:input type="file" path="image" />

<sp:select path="categoryID">
<sp:option value="select">----SELECT---</sp:option>
<c:forEach items ="${categoryList}" var="c">

<sp:option value="${ c.categoryID}">${c.categoryName}</sp:option>

</c:forEach>
</sp:select>


 <c:if test="${empty brand.brandName}">
        <sp:button class="btn btn-success" data-toggle="modal" data-target=".bs-example-modal-lg" value="submit">Register</sp:button>
   
       
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
      <div class="modal-body">
     
      <H2>Battery Low!</H2>
      <h4>Your Laptop battery is less then 10%.Recharge the battery.</h4>
     
      </div>
    </div>
  </div>
</div>

    </c:if>
    <c:if test="${not empty brand.brandName}">
        <sp:button class="btn btn-success"  data-toggle="modal" data-target=".bs-example-modal-lg" value="submit">Update</sp:button>
            <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
    
      <div class="modal-body">
     
      <H2>Added Successfully</H2>
      <h4>${brand.brandName } successfully added</h4>
     
      </div>
    </div>
  </div>
</div>
    </c:if>
  
</sp:form>
<br>
<br>
<br>

<c:if test="${not empty brandList}">
<table style="width=50%;" border="1">
<tr>
<th>ID</th><th>Brand Name</th><th>Brand Description</th><th>Brand Rating</th><th>CategoryID</th><th>Image</th><th>Action</th>
</tr>
<tr>
<c:forEach items="${brandList}" var="c">
<tr><td>${c.brandID}</td>
<td>${c.brandName}</td>
<td>${c.brandDesc}</td>
<td>${c.brandRating}</td>
<td>${c.categoryID}</td>
<td><img src="${pageContext.request.contextPath}/resources/images/${c.brandID}.jpg" style="height:120px;width:150px;"/></td>

<td><a href="<c:url value='/updateBrand/${c.brandID}'/>">Edit/<a href="<c:url value='/deleteBrand/${c.brandID}'/>">Delete</a></a>
</tr>

</c:forEach>
</tr>
</table>
</c:if>

</body>
</html>
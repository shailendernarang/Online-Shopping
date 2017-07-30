<%@include file="header.jsp"%>
<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>
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

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
   </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
<br>
<br>
<br>
<sp:form action="${pageContext.request.contextPath }/addProduct" method="POST" modelAttribute="product">
<c:if test="${not empty product.productName}">
Product ID    <sp:input path="productID" readOnly="true" disabled="true"/>
<sp:hidden path="productID"/>
</c:if>
Product Name  <sp:input path="productName"/>
Product Desc  <sp:input path="productDesc"/>
Product Cost <sp:input path="productCost"/>

<%! String driverName = "org.h2.Driver";%>
<%!String url = "jdbc:h2:tcp://localhost/~/SmartPrix";%>
<%!String user = "sunny";%>
<%!String psw = "";%>
<%
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql = "SELECT * FROM Brand";
ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery(); 
%>
<p>Select Brand :
<sp:select path="brand">
<%
while(rs.next())
{
String fname = rs.getString("brandName"); 
%>
<option value="<%=fname %>"><%=fname %></option>
<%
}
%>
</sp:select>
</p>
<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>






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
<th>ID</th><th>Product Name</th><th>Product Description</th><th>Product Cost</th><th>Brand ID</th><th>Action</th>
</tr>
<tr>
<c:forEach items="${productList}" var="c">
<tr><td>${c.productID}</td>
<td>${c.productName}</td>
<td>${c.productDesc}</td>
<td>${c.productCost}</td>
<td>${c.brand}</td>
<td><a href="<c:url value='updateProduct/${c.productID}'/>">Edit/<a href="<c:url value='deleteProduct/${c.productID}'/>">Delete</a></a>
</tr>

</c:forEach>
</tr>
</table>
</c:if>

</body>
</html>
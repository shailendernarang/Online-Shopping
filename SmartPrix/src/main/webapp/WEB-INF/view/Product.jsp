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

    <link rel="stylesheet" href="resources/css/category.css"> 
        
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
    
    <style type="text/css">

  
   </style>
</head>
<body>
<br>
<br>
<br>
<div class="container" >
<div class="row">
    <div class="form-area">  
			<sp:form action="${pageContext.request.contextPath }/addProduct" method="POST" modelAttribute="product" enctype="Multipart/form-data">
				<br style="clear:both">
        		  <br>
        		   <h3 style="margin-bottom: 25px; text-align: center;">Add Product</h3>
    			<div class="form-group">
				<c:if test="${not empty product.productName}">
						Product ID    <sp:input path="productID" readOnly="true" disabled="true"/>
							<sp:hidden path="productID"/>
				</c:if>
				</div>
					<div class="form-group">
						  <sp:input path="productName" type="text" class="form-control" placeholder="Product Name"/>
						</div>
					<div class="form-group">
						  <sp:input path="productDesc" type="text" class="form-control" placeholder="Product DESC"/>
						</div>
					<div class="form-group">
							<sp:input path="productCost" type="text" class="form-control" placeholder="Product Cost"/>
						</div>
					<div class="form-group">
							 <sp:input type="file" path="image" class="form-control" placeholder="Choose Image"/>
						</div>
								<sp:select path="brandID" class="form-control"> 
						<c:forEach items ="${brandList}" var="c">
							<sp:option value="${ c.brandID}">${c.brandName}</sp:option>

						</c:forEach>
					</sp:select>




 <c:if test="${empty product.productName}">
        <sp:button class="btn btn-success" value="submit">Add</sp:button>
    </c:if>
    <c:if test="${not empty product.productName}">
        <sp:button class="btn btn-success" value="submit">Update</sp:button>
    </c:if>
</sp:form>
  </div>
     <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"></div>
    </div>  

<br>
<br>
<br>
<div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title">Product Table</h3>
                  </div>
                  
                </div>
              </div>
          <div class="panel-body">
            
              <c:if test="${not empty productList}">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                    <th><em class="fa fa-cog"></em></th>
                    <th>ID</th><th>Product Name</th><th>Product Description</th><th>Product Cost</th><th>Brand ID</th><th>Image</th>
                    </tr> 
                       </thead>
                  <tbody>
                           <c:forEach items="${productList}" var="c">
                         <tr>
                            <td align="center">
                                <a href="<c:url value='/updateProduct/${c.productID}'/>" class="btn btn-default"><em class="fa fa-pencil"></em></a>
                              <a href="<c:url value='/deleteProduct/${c.productID}'/>" class="btn btn-danger"><em class="fa fa-trash"></em></a>
                           </td>
                          	 <td>${c.productID}</td>
								<td>${c.productName}</td>
										<td>${c.productDesc}</td>
											<td>${c.productCost}</td>
												<td>${c.brandID}</td>
													<td><img src="${pageContext.request.contextPath }/resources/images/${c.productID}.jpg" style="height:120px;width:150px;"/></td>
                          </tr>
                          </c:forEach>
				   </tbody>
                </table>
            </c:if>
          </div>
          
     </div>
        </div>
        </div>


</body>
</html>
<%@include file="/WEB-INF/view/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>
<!DOCTYPE html>  
<html>
<head>
    <meta charset="utf-8">
    <title>Admin Panel</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
  		 <link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
   		 <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/2.ico"/>
  		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">   
    	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
    
</head>
<body>
<br>
<br>
<br>
<div class="container" >
<div class="row">
    <div class="form-area">  
        <sp:form action="${pageContext.request.contextPath }/addBrand" method="POST" modelAttribute="brand" enctype="Multipart/form-data">
      			  <br style="clear:both">
        		  <br>
          
                  <h3 style="margin-bottom: 25px; text-align: center;">Add Brand</h3>
    				<div class="form-group">
    				<c:if test="${not empty brand.brandName}">
						Brand ID    <sp:input path="brandID" readOnly="true" disabled="true" type="text" class="form-control"/>
					<sp:hidden path="brandID"/>
					</c:if>
					</div>
					<div class="form-group">
						<sp:input path="brandName" type="text" class="form-control"  placeholder="Brand Name"/>
					</div>
					<div class="form-group">
						<sp:input type="text" class="form-control" path="brandDesc" placeholder="Brand Description"/>
					</div>
					<div class="form-group">
						<sp:input type="text" class="form-control" path="brandRating" placeholder="Brand Rating (0 to 10)"/>
					</div>
					<div class="form-group">
					<sp:select path="categoryID" class="form-control">
						<sp:option value="select" class="form-control">----SELECT---</sp:option>
						<c:forEach items ="${categoryList}" var="c">
							<sp:option value="${ c.categoryID}">${c.categoryName}</sp:option>
						</c:forEach>
					</sp:select>
					</div>
					<div class="form-group" >
						<sp:input class="form-control" type="file" path="image"  placeholder="Choose Image"/>
					</div>
					
					 <c:if test="${empty brand.brandName}">
       					 <sp:button class="btn btn-primary pull-right " value="submit">Add</sp:button>
   					
   					 </c:if>
  					  <c:if test="${not empty brand.brandName}">
    						    <sp:button class="btn btn-primary pull-right" value="submit">Update</sp:button>
 				      </c:if>
 				      
   	<c:if test="${not empty success }">
		<div class="alert alert-success">${success}</div>
	</c:if>
        </sp:form>
        
    </div>
     <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"></div>
    </div>
  
 
    
        <div class="col-md-12 table-responsive">

            <div class="panel panel-primary panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title">Brand Table</h3>
                  </div>
                  
                </div>
              </div>
          <div class="panel-body table-responsive">
              <c:if test="${not empty brandList}">
                <table class="table table-striped table-bordered table-hover table-responsive">
                  <thead>
                    <tr class="warning">
                        <th><em class="fa fa-cog"></em></th>
                        <th>Brand ID</th>
                        <th>Brand Name</th>
                        <th>Brand Description</th>
                        <th>Brand Rating</th>
                        <th>Category ID</th>
						<th>Picture</th>
                    </tr> 
                  </thead>
                  <tbody>
                           <c:forEach items="${brandList}" var="c">
                                           
                          <tr class="danger">
                            <td align="center">
                              <a href="<c:url value='/updateBrand/${c.brandID}'/>" class="btn btn-default"><em class="fa fa-pencil"></em></a>
                              <a href="<c:url value='/deleteBrand/${c.brandID}'/>" class="btn btn-danger"><em class="fa fa-trash"></em></a>
                            </td>
                           
             	              <td>${c.brandID}</td>
								<td>${c.brandName}</td>
								   <td>${c.brandDesc}</td>
								   <td>${c.brandRating}</td>
								   	<td>${c.categoryID}</td>
								   		<td><img src="${pageContext.request.contextPath}/resources/images/${c.brandID}.jpg" style="height:120px;width:150px;"/></td>
								   			
								   		
								       
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
<%@include file="footer.jsp" %>
</html>


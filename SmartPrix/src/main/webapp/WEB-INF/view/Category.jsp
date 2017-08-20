<%@include file="/WEB-INF/view/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
   
    <title>Add Category</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="resources/css/category.css"> 
        
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
    
</head>
<body>

 <div class="container" >
<div class="row">
    <div class="form-area">  
        <sp:form action="${pageContext.request.contextPath }/addCategory" method="POST" modelAttribute="category">
      			  <br style="clear:both">
        		  <br>
          
                  <h3 style="margin-bottom: 25px; text-align: center;">Add Category</h3>
    				<div class="form-group">
    				<c:if test="${not empty category.categoryName}">
						Category ID    <sp:input path="categoryID" readOnly="true" disabled="true" type="text" class="form-control"/>
					<sp:hidden path="categoryID"/>
					</c:if>
					</div>
					<div class="form-group">
						<sp:input path="categoryName" type="text" class="form-control"  placeholder="Category Name"/>
					</div>
					<div class="form-group">
						<sp:input type="text" class="form-control" path="categoryDesc" placeholder="Category Description"/>
					</div>
					
					 <c:if test="${empty category.categoryName}">
       					 <sp:button class="btn btn-primary pull-right " value="submit">Add</sp:button>
   					
   					 </c:if>
  					  <c:if test="${not empty category.categoryName}">
    						    <sp:button class="btn btn-primary pull-right" value="submit">Update</sp:button>
 				      </c:if>
 				      
   	<c:if test="${not empty success }">
		<div class="alert alert-success">${success}</div>
	</c:if>
        </sp:form>
        
    </div>
     <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3"></div>
    </div>
  
 
    
        <div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title">Category Table</h3>
                  </div>
                  
                </div>
              </div>
          <div class="panel-body">
              <c:if test="${not empty categoryList}">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th><em class="fa fa-cog"></em></th>
                        <th>Category ID</th>
                        <th>Category Name</th>
                        <th>Category Description</th>
                    </tr> 
                  </thead>
                  <tbody>
                           <c:forEach items="${categoryList}" var="c">
                                           
                          <tr>
                            <td align="center">
                              <a href="<c:url value='/updateCategory/${c.categoryID}'/>" class="btn btn-default"><em class="fa fa-pencil"></em></a>
                              <a href="<c:url value='/deleteCategory/${c.categoryID}'/>" class="btn btn-danger"><em class="fa fa-trash"></em></a>
                            </td>
                           
             	              <td>${c.categoryID}</td>
								<td>${c.categoryName}</td>
								   <td>${c.categoryDesc}</td>
								       
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
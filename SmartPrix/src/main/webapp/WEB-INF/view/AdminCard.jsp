<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/admincard.css"/>
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
         <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
     
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <%@ page isELIgnored="false" %>
<title>Admin Panel</title>
</head>
<body>
<br>
<br>
<div class="container">
    <div class="row">
   
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="card">
                <div class="card-image">
                    <img class="img-responsive" src="http://www.euro-mat.com/wp-content/uploads/2017/01/products.jpg">
                </div>
                
                <div class="card-content">
                    <p>Add Product Corresponding To Brand By Clicking Me</p>
                </div>
                
                <div class="card-action">
                     <a href="${pageContext.request.contextPath }/admin/Product">Product</a>
                </div>
            </div>
        
        
       
            <div class="card">
                <div class="card-image">
                    <img class="img-responsive" src="https://www.emotivebrand.com/wp-content/uploads/2016/09/tumblr_o05v3eZmyT1ugn1wu_og_1280.png">
                </div>
                
                <div class="card-content">
                    <p>Add Brand Corresponding to Category By Clicking Me</p>
                </div>
                
                <div class="card-action">
                   
                    <a href="${pageContext.request.contextPath }/admin/Brand">Brand</a>
                </div>
            </div>
        </div>
 
            <div class="card">
                <div class="card-image">
                    <img class="img-responsive" src="http://material-design.storage.googleapis.com/publish/v_2/material_ext_publish/0Bx4BSt6jniD7TDlCYzRROE84YWM/materialdesign_introduction.png"/>
                </div>
                
                <div class="card-content">
                    <p>Add Category By Clicking Me</p>
                </div>
                
                <div class="card-action">
                   
                    <a href="${pageContext.request.contextPath }/admin/Category">Category</a>
                </div>
            </div>
       </div>
    </div>
       

</body>
</html>
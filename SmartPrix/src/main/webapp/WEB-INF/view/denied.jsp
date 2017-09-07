<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isErrorPage="true" %>
<html>
<head>
 <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
         <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
    <body>
     
        <h1 class="alert alert-danger" id="banner">Unauthorized Access !!</h1>
     
        <hr />
     <p class="alert alert-warning"class="message">Please Enter Correct Username Or Password</p>
        <a href="Login" class="btn btn-danger">Go back to Login page</a>
    </body>
</html>
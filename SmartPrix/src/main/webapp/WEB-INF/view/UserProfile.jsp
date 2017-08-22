<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="row">
    <div class="col-md-4 col-md-offset-4">
      <sp:form class="form-horizontal" role="form" method="post"  action="${pageContext.request.contextPath }/updateUser/${user.userName}" modelAttribute="user">
        <fieldset>
		 <legend>User Profile</legend>
					 <c:if test="${not empty user.userName}">
						User ID    <sp:input path="userID" readOnly="true" disabled="true" type="text" class="form-control"/>
					<sp:hidden path="userID"/>
					</c:if>
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">UserName</label>
            <div class="col-sm-10">
              <sp:input type="text" path="userName" placeholder="Address Line 1" class="form-control"></sp:input>
            </div>
          </div>
           <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Password</label>
            <div class="col-sm-10">
              <sp:input type="text" path="userPass" placeholder="Address Line 1" class="form-control"></sp:input>
            </div>
          </div>
           <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Email</label>
            <div class="col-sm-10">
              <sp:input type="text" path="userEmail" placeholder="Address Line 1" class="form-control"></sp:input>
            </div>
          </div> <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Phone Number</label>
            <div class="col-sm-10">
              <sp:input type="text" path="userPhone" placeholder="Address Line 1" class="form-control"></sp:input>
            </div>
          </div>
          
		 
          <!-- Form Name -->
          <legend>Address Details</legend>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Line 1</label>
            <div class="col-sm-10">
              <sp:input type="text" path="shippingDetails.shippingAddress" placeholder="Address Line 1" class="form-control"></sp:input>
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Line 2</label>
            <div class="col-sm-10">
              <sp:input type="text"  path="shippingDetails.shippingStreet" placeholder="Address Line 2" class="form-control"></sp:input>
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">City</label>
            <div class="col-sm-10">
              <sp:input type="text"  path="shippingDetails.shippingPinCode" placeholder="City" class="form-control"></sp:input>
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                <sp:button type="submit" class="btn btn-primary">Update</sp:button>
              </div>
            </div>
          </div>

        </fieldset>
      </sp:form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<script type="text/javascript">

</script>
</body>
</html>

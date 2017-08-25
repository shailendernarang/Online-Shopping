<%@include file="/WEB-INF/view/header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="space"></div>
<div class="container">
	<h2 class="heading-one">Customer Details</h2>

	<form:form modelAttribute="order">

		<h3>Personal Info</h3>

		<div class="form-group">
			<label for="name">Name</label>
			<form:input path="userr.userName" id="username" class="form-control" />
		</div>

		<div class="form-group">
			<label for="email">Email</label>
			<form:input path="userr.userEmail" id="email" class="form-control" />
		</div>

		<div class="form-group">
			<label for="phone">Mobile No.</label>
			<form:input path="userr.userPhone" id="mobileno" class="form-control" />
		</div>

		<h3>Billing Address</h3>

		<div class="form-group">
			<label for="billingStreet">Street Name</label>
			<form:input path="userr.billingDetails.billingAddress"
				id="billingStreet" class="form-control" />
		</div>

		<div class="form-group">
			<label for="billingApartmentNumber">Apartment Number</label>
			<form:input path="userr.billingDetails.billingStreet"
				id="billingApartmentNumber" class="form-control" />
		</div>

	

		<div class="form-group">
			<label for="billingZip">Zipcode</label>
			<form:input path="userr.billingDetails.billingPinCode" id="billingZip"
				class="form-control" />
		</div>

		<input type="hidden" name="_flowExecutionKey" />

		<br>
		<br>
		<input type="submit" value="Next" class="btn btn-success"
			name="_eventId_customerInfoCollected" />
		<button class="btn btn-danger" name="_eventId_cancel">Cancel</button>
	</form:form>


</div>

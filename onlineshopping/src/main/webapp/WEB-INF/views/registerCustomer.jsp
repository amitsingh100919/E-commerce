<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<br><br><br>
<style>
#hidden{
display:none;
}
</style>
<script type="text/javascript">

function copy()
{
		document.getElementById('shippingStreet').value = document.getElementById('billingStreet').value;
		document.getElementById('shippingApartmentNumber').value = document.getElementById('billingApartmentNumber').value;
		document.getElementById('shippingCity').value = document.getElementById('billingCity').value;
		document.getElementById('shippingState').value = document.getElementById('billingState').value;
		document.getElementById('shippingCountry').value = document.getElementById('billingCountry').value;
		document.getElementById('shippingZip').value = document.getElementById('billingZip').value;
		
	}
</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer Registration Page</h1>

            <p class="lead">Fill the Information</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register"
                   method="post" class="col-lg-12 col-md-12" commandName="customer">

        <h3>Basic Details</h3>

        <div class="form-group">
            <label for="name">Name</label>
            <form:errors path="customerName" cssStyle="color: #ff0000" />
            <form:input path="customerName" id="name" class="form-Control" />
        </div>

        <div class="form-group ">
            <label for="email">Email</label>
            <span style="color: #ff0000">${emailMsg}</span>
            <form:errors path="customerEmail" cssStyle="color: #ff0000" />
            <form:input path="customerEmail" id="email" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="customerPhone" id="phone" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="username">Username</label>
            <span style="color: #ff0000">${usernameMsg}</span>
            <form:errors path="username" cssStyle="color: #ff0000" />
            <form:input path="username" id="username" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <form:errors path="password" cssStyle="color: #ff0000" />
            <form:password path="password" id="password" class="form-Control" />
        </div>


        <br/>

        <h3>Address:</h3>

        <div class="form-group">
            <label for="billingStreet">Street Name</label>
            <form:input path="billingAddress.streetName" id="billingStreet" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Apartment Number</label>
            <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCity">City</label>
            <form:input path="billingAddress.city" id="billingCity" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingState">State</label>
            <form:input path="billingAddress.state" id="billingState" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCountry">Country</label>
            <form:input path="billingAddress.country" id="billingCountry" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <form:input path="billingAddress.zipCode" id="billingZip" class="form-Control" />
        </div>

        <br/>
        <div id="hidden">
		<form:input path="shippingAddress.streetName"  id="shippingStreet" class="form-Control" />
		<form:input path="shippingAddress.apartmentNumber"  id="shippingApartmentNumber" class="form-Control" />
		<form:input path="shippingAddress.city"  id="shippingCity" class="form-Control" />
		<form:input path="shippingAddress.state"  id="shippingState" class="form-Control" />
		<form:input path="shippingAddress.country" id="shippingCountry" class="form-Control" />
		<form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control" />
		</div>
        <br/><br/>

        <input type="submit" value="submit" onmouseenter="copy()" onfocus="copy()" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>

        </form:form>
</div></div>
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>
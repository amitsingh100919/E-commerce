<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@include file="/WEB-INF/views/templates/header.jsp"%>
<!------ Include the above in your HEAD tag ---------->
</head>
<div class="container">
	<div class="row">
		<div class="col-xs-12 col-md-4"></div>
		<form:form commandName="order">
			<spring:url value="${order.cart.grandTotal}" var="grand"></spring:url>
			<div class="col-xs-12 col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Card Details</h3>

					</div>
					<div class="panel-body">
						<form role="form">
							<div class="form-group">
								<label for="cardNumber"> CARD NUMBER</label>
								<div class="input-group">
									<input type="text" class="form-control" id="cardNumber"
										placeholder="Valid Card Number" required autofocus /> <span
										class="input-group-addon"><span
										class="glyphicon glyphicon-lock"></span></span>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-7 col-md-7">
									<div class="form-group">
										<label for="expityMonth"> EXPIRY DATE</label>
										<div class="col-xs-6 col-lg-6 pl-ziro">
											<input type="text" class="form-control" id="expityMonth"
												placeholder="MM" required />
										</div>
										<div class="col-xs-6 col-lg-6 pl-ziro">
											<input type="text" class="form-control" id="expityYear"
												placeholder="YY" required />
										</div>
									</div>
								</div>
								<div class="col-xs-5 col-md-5 pull-right">
									<div class="form-group">
										<label for="cvCode"> CV CODE</label> <input type="password"
											class="form-control" id="cvCode" placeholder="CV" required />
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="#"><span
							class="badge pull-right"><span
								class="glyphicon glyphicon-usd"></span>${grand}</span> Final Payment</a></li>
				</ul>
				<br /> <input type="submit" value="Pay"
					class="btn btn-success btn-lg btn-block"
					name="_eventId_orderConfirmed" role="button">
			</div>
		</form:form>
	</div>

</div>

<%@include file="/WEB-INF/views/templates/footer.jsp"%>
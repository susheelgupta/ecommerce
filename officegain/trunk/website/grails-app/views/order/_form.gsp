<%@ page import="com.officegain.enigma.base.Order" %>



<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'billingAddressFormatId', 'error')} required">
	<label for="billingAddressFormatId">
		<g:message code="order.billingAddressFormatId.label" default="Billing Address Format Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="billingAddressFormatId" required="" value="${fieldValue(bean: orderInstance, field: 'billingAddressFormatId')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'billingCity', 'error')} ">
	<label for="billingCity">
		<g:message code="order.billingCity.label" default="Billing City" />
		
	</label>
	<g:textField name="billingCity" value="${orderInstance?.billingCity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'billingCompany', 'error')} ">
	<label for="billingCompany">
		<g:message code="order.billingCompany.label" default="Billing Company" />
		
	</label>
	<g:textField name="billingCompany" value="${orderInstance?.billingCompany}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'billingCountry', 'error')} ">
	<label for="billingCountry">
		<g:message code="order.billingCountry.label" default="Billing Country" />
		
	</label>
	<g:textField name="billingCountry" value="${orderInstance?.billingCountry}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'billingName', 'error')} ">
	<label for="billingName">
		<g:message code="order.billingName.label" default="Billing Name" />
		
	</label>
	<g:textField name="billingName" value="${orderInstance?.billingName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'billingPostalcode', 'error')} ">
	<label for="billingPostalcode">
		<g:message code="order.billingPostalcode.label" default="Billing Postalcode" />
		
	</label>
	<g:textField name="billingPostalcode" value="${orderInstance?.billingPostalcode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'billingState', 'error')} ">
	<label for="billingState">
		<g:message code="order.billingState.label" default="Billing State" />
		
	</label>
	<g:textField name="billingState" value="${orderInstance?.billingState}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'billingStreetAddress', 'error')} ">
	<label for="billingStreetAddress">
		<g:message code="order.billingStreetAddress.label" default="Billing Street Address" />
		
	</label>
	<g:textField name="billingStreetAddress" value="${orderInstance?.billingStreetAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'billingSuburb', 'error')} ">
	<label for="billingSuburb">
		<g:message code="order.billingSuburb.label" default="Billing Suburb" />
		
	</label>
	<g:textField name="billingSuburb" value="${orderInstance?.billingSuburb}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'ccExpires', 'error')} ">
	<label for="ccExpires">
		<g:message code="order.ccExpires.label" default="Cc Expires" />
		
	</label>
	<g:textField name="ccExpires" value="${orderInstance?.ccExpires}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'ccNumber', 'error')} ">
	<label for="ccNumber">
		<g:message code="order.ccNumber.label" default="Cc Number" />
		
	</label>
	<g:textField name="ccNumber" value="${orderInstance?.ccNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'ccOwner', 'error')} ">
	<label for="ccOwner">
		<g:message code="order.ccOwner.label" default="Cc Owner" />
		
	</label>
	<g:textField name="ccOwner" value="${orderInstance?.ccOwner}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'ccType', 'error')} ">
	<label for="ccType">
		<g:message code="order.ccType.label" default="Cc Type" />
		
	</label>
	<g:textField name="ccType" value="${orderInstance?.ccType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'currency', 'error')} ">
	<label for="currency">
		<g:message code="order.currency.label" default="Currency" />
		
	</label>
	<g:textField name="currency" value="${orderInstance?.currency}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'currencyValue', 'error')} required">
	<label for="currencyValue">
		<g:message code="order.currencyValue.label" default="Currency Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="currencyValue" required="" value="${fieldValue(bean: orderInstance, field: 'currencyValue')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'customerAddressFormatId', 'error')} required">
	<label for="customerAddressFormatId">
		<g:message code="order.customerAddressFormatId.label" default="Customer Address Format Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="customerAddressFormatId" required="" value="${fieldValue(bean: orderInstance, field: 'customerAddressFormatId')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'customerCity', 'error')} ">
	<label for="customerCity">
		<g:message code="order.customerCity.label" default="Customer City" />
		
	</label>
	<g:textField name="customerCity" value="${orderInstance?.customerCity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'customerCompany', 'error')} ">
	<label for="customerCompany">
		<g:message code="order.customerCompany.label" default="Customer Company" />
		
	</label>
	<g:textField name="customerCompany" value="${orderInstance?.customerCompany}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'customerCountry', 'error')} ">
	<label for="customerCountry">
		<g:message code="order.customerCountry.label" default="Customer Country" />
		
	</label>
	<g:textField name="customerCountry" value="${orderInstance?.customerCountry}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'customerEmailAddress', 'error')} ">
	<label for="customerEmailAddress">
		<g:message code="order.customerEmailAddress.label" default="Customer Email Address" />
		
	</label>
	<g:textField name="customerEmailAddress" value="${orderInstance?.customerEmailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'customerId', 'error')} required">
	<label for="customerId">
		<g:message code="order.customerId.label" default="Customer Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="customerId" required="" value="${fieldValue(bean: orderInstance, field: 'customerId')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'customerName', 'error')} ">
	<label for="customerName">
		<g:message code="order.customerName.label" default="Customer Name" />
		
	</label>
	<g:textField name="customerName" value="${orderInstance?.customerName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'customerPostalcode', 'error')} ">
	<label for="customerPostalcode">
		<g:message code="order.customerPostalcode.label" default="Customer Postalcode" />
		
	</label>
	<g:textField name="customerPostalcode" value="${orderInstance?.customerPostalcode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'customerState', 'error')} ">
	<label for="customerState">
		<g:message code="order.customerState.label" default="Customer State" />
		
	</label>
	<g:textField name="customerState" value="${orderInstance?.customerState}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'customerStreetAddress', 'error')} ">
	<label for="customerStreetAddress">
		<g:message code="order.customerStreetAddress.label" default="Customer Street Address" />
		
	</label>
	<g:textField name="customerStreetAddress" value="${orderInstance?.customerStreetAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'customerSuburb', 'error')} ">
	<label for="customerSuburb">
		<g:message code="order.customerSuburb.label" default="Customer Suburb" />
		
	</label>
	<g:textField name="customerSuburb" value="${orderInstance?.customerSuburb}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'customerTelephone', 'error')} ">
	<label for="customerTelephone">
		<g:message code="order.customerTelephone.label" default="Customer Telephone" />
		
	</label>
	<g:textField name="customerTelephone" value="${orderInstance?.customerTelephone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'datePurchased', 'error')} required">
	<label for="datePurchased">
		<g:message code="order.datePurchased.label" default="Date Purchased" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="datePurchased" precision="day"  value="${orderInstance?.datePurchased}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'deliveryAddressFormatId', 'error')} required">
	<label for="deliveryAddressFormatId">
		<g:message code="order.deliveryAddressFormatId.label" default="Delivery Address Format Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="deliveryAddressFormatId" required="" value="${fieldValue(bean: orderInstance, field: 'deliveryAddressFormatId')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'deliveryCity', 'error')} ">
	<label for="deliveryCity">
		<g:message code="order.deliveryCity.label" default="Delivery City" />
		
	</label>
	<g:textField name="deliveryCity" value="${orderInstance?.deliveryCity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'deliveryCompany', 'error')} ">
	<label for="deliveryCompany">
		<g:message code="order.deliveryCompany.label" default="Delivery Company" />
		
	</label>
	<g:textField name="deliveryCompany" value="${orderInstance?.deliveryCompany}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'deliveryCountry', 'error')} ">
	<label for="deliveryCountry">
		<g:message code="order.deliveryCountry.label" default="Delivery Country" />
		
	</label>
	<g:textField name="deliveryCountry" value="${orderInstance?.deliveryCountry}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'deliveryName', 'error')} ">
	<label for="deliveryName">
		<g:message code="order.deliveryName.label" default="Delivery Name" />
		
	</label>
	<g:textField name="deliveryName" value="${orderInstance?.deliveryName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'deliveryPostalcode', 'error')} ">
	<label for="deliveryPostalcode">
		<g:message code="order.deliveryPostalcode.label" default="Delivery Postalcode" />
		
	</label>
	<g:textField name="deliveryPostalcode" value="${orderInstance?.deliveryPostalcode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'deliveryState', 'error')} ">
	<label for="deliveryState">
		<g:message code="order.deliveryState.label" default="Delivery State" />
		
	</label>
	<g:textField name="deliveryState" value="${orderInstance?.deliveryState}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'deliveryStreetAddress', 'error')} ">
	<label for="deliveryStreetAddress">
		<g:message code="order.deliveryStreetAddress.label" default="Delivery Street Address" />
		
	</label>
	<g:textField name="deliveryStreetAddress" value="${orderInstance?.deliveryStreetAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'deliverySuburb', 'error')} ">
	<label for="deliverySuburb">
		<g:message code="order.deliverySuburb.label" default="Delivery Suburb" />
		
	</label>
	<g:textField name="deliverySuburb" value="${orderInstance?.deliverySuburb}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'lastModified', 'error')} required">
	<label for="lastModified">
		<g:message code="order.lastModified.label" default="Last Modified" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastModified" precision="day"  value="${orderInstance?.lastModified}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'orderDateFinished', 'error')} required">
	<label for="orderDateFinished">
		<g:message code="order.orderDateFinished.label" default="Order Date Finished" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="orderDateFinished" precision="day"  value="${orderInstance?.orderDateFinished}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'orderStatus', 'error')} required">
	<label for="orderStatus">
		<g:message code="order.orderStatus.label" default="Order Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="orderStatus" required="" value="${fieldValue(bean: orderInstance, field: 'orderStatus')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: orderInstance, field: 'paymentMethod', 'error')} ">
	<label for="paymentMethod">
		<g:message code="order.paymentMethod.label" default="Payment Method" />
		
	</label>
	<g:textField name="paymentMethod" value="${orderInstance?.paymentMethod}"/>
</div>


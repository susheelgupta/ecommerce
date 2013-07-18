
<%@ page import="com.officegain.enigma.base.Return" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'return.label', default: 'Return')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-return" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-return" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list return">
			
				<g:if test="${returnInstance?.comment}">
				<li class="fieldcontain">
					<span id="comment-label" class="property-label"><g:message code="return.comment.label" default="Comment" /></span>
					
						<span class="property-value" aria-labelledby="comment-label"><g:fieldValue bean="${returnInstance}" field="comment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.customerId}">
				<li class="fieldcontain">
					<span id="customerId-label" class="property-label"><g:message code="return.customerId.label" default="Customer Id" /></span>
					
						<span class="property-value" aria-labelledby="customerId-label"><g:fieldValue bean="${returnInstance}" field="customerId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.dateAdded}">
				<li class="fieldcontain">
					<span id="dateAdded-label" class="property-label"><g:message code="return.dateAdded.label" default="Date Added" /></span>
					
						<span class="property-value" aria-labelledby="dateAdded-label"><g:formatDate date="${returnInstance?.dateAdded}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.dateModified}">
				<li class="fieldcontain">
					<span id="dateModified-label" class="property-label"><g:message code="return.dateModified.label" default="Date Modified" /></span>
					
						<span class="property-value" aria-labelledby="dateModified-label"><g:formatDate date="${returnInstance?.dateModified}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.dateOrdered}">
				<li class="fieldcontain">
					<span id="dateOrdered-label" class="property-label"><g:message code="return.dateOrdered.label" default="Date Ordered" /></span>
					
						<span class="property-value" aria-labelledby="dateOrdered-label"><g:formatDate date="${returnInstance?.dateOrdered}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="return.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${returnInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.firstname}">
				<li class="fieldcontain">
					<span id="firstname-label" class="property-label"><g:message code="return.firstname.label" default="Firstname" /></span>
					
						<span class="property-value" aria-labelledby="firstname-label"><g:fieldValue bean="${returnInstance}" field="firstname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.lastname}">
				<li class="fieldcontain">
					<span id="lastname-label" class="property-label"><g:message code="return.lastname.label" default="Lastname" /></span>
					
						<span class="property-value" aria-labelledby="lastname-label"><g:fieldValue bean="${returnInstance}" field="lastname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.model}">
				<li class="fieldcontain">
					<span id="model-label" class="property-label"><g:message code="return.model.label" default="Model" /></span>
					
						<span class="property-value" aria-labelledby="model-label"><g:fieldValue bean="${returnInstance}" field="model"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.opened}">
				<li class="fieldcontain">
					<span id="opened-label" class="property-label"><g:message code="return.opened.label" default="Opened" /></span>
					
						<span class="property-value" aria-labelledby="opened-label"><g:formatBoolean boolean="${returnInstance?.opened}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.orderId}">
				<li class="fieldcontain">
					<span id="orderId-label" class="property-label"><g:message code="return.orderId.label" default="Order Id" /></span>
					
						<span class="property-value" aria-labelledby="orderId-label"><g:fieldValue bean="${returnInstance}" field="orderId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="return.product.label" default="Product" /></span>
					
						<span class="property-value" aria-labelledby="product-label"><g:fieldValue bean="${returnInstance}" field="product"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.productId}">
				<li class="fieldcontain">
					<span id="productId-label" class="property-label"><g:message code="return.productId.label" default="Product Id" /></span>
					
						<span class="property-value" aria-labelledby="productId-label"><g:fieldValue bean="${returnInstance}" field="productId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="return.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${returnInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.returnActionId}">
				<li class="fieldcontain">
					<span id="returnActionId-label" class="property-label"><g:message code="return.returnActionId.label" default="Return Action Id" /></span>
					
						<span class="property-value" aria-labelledby="returnActionId-label"><g:fieldValue bean="${returnInstance}" field="returnActionId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.returnReasonId}">
				<li class="fieldcontain">
					<span id="returnReasonId-label" class="property-label"><g:message code="return.returnReasonId.label" default="Return Reason Id" /></span>
					
						<span class="property-value" aria-labelledby="returnReasonId-label"><g:fieldValue bean="${returnInstance}" field="returnReasonId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.returnStatusId}">
				<li class="fieldcontain">
					<span id="returnStatusId-label" class="property-label"><g:message code="return.returnStatusId.label" default="Return Status Id" /></span>
					
						<span class="property-value" aria-labelledby="returnStatusId-label"><g:fieldValue bean="${returnInstance}" field="returnStatusId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnInstance?.telephone}">
				<li class="fieldcontain">
					<span id="telephone-label" class="property-label"><g:message code="return.telephone.label" default="Telephone" /></span>
					
						<span class="property-value" aria-labelledby="telephone-label"><g:fieldValue bean="${returnInstance}" field="telephone"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${returnInstance?.id}" />
					<g:link class="edit" action="edit" id="${returnInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

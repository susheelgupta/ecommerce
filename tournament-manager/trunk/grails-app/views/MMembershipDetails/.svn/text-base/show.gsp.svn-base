
<%@ page import="com.maali.tournamentmanager.MMembershipDetails" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MMembershipDetails.label', default: 'MMembershipDetails')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-MMembershipDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-MMembershipDetails" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list MMembershipDetails">
			
				<g:if test="${MMembershipDetailsInstance?.currency}">
				<li class="fieldcontain">
					<span id="currency-label" class="property-label"><g:message code="MMembershipDetails.currency.label" default="Currency" /></span>
					
						<span class="property-value" aria-labelledby="currency-label"><g:fieldValue bean="${MMembershipDetailsInstance}" field="currency"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MMembershipDetailsInstance?.feePaymentPlanFrequency}">
				<li class="fieldcontain">
					<span id="feePaymentPlanFrequency-label" class="property-label"><g:message code="MMembershipDetails.feePaymentPlanFrequency.label" default="Fee Payment Plan Frequency" /></span>
					
						<span class="property-value" aria-labelledby="feePaymentPlanFrequency-label"><g:fieldValue bean="${MMembershipDetailsInstance}" field="feePaymentPlanFrequency"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MMembershipDetailsInstance?.paymentPlanDetails}">
				<li class="fieldcontain">
					<span id="paymentPlanDetails-label" class="property-label"><g:message code="MMembershipDetails.paymentPlanDetails.label" default="Payment Plan Details" /></span>
					
						<span class="property-value" aria-labelledby="paymentPlanDetails-label"><g:fieldValue bean="${MMembershipDetailsInstance}" field="paymentPlanDetails"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MMembershipDetailsInstance?.annualMembershipAmount}">
				<li class="fieldcontain">
					<span id="annualMembershipAmount-label" class="property-label"><g:message code="MMembershipDetails.annualMembershipAmount.label" default="Annual Membership Amount" /></span>
					
						<span class="property-value" aria-labelledby="annualMembershipAmount-label"><g:fieldValue bean="${MMembershipDetailsInstance}" field="annualMembershipAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MMembershipDetailsInstance?.feePaymentAllowed}">
				<li class="fieldcontain">
					<span id="feePaymentAllowed-label" class="property-label"><g:message code="MMembershipDetails.feePaymentAllowed.label" default="Fee Payment Allowed" /></span>
					
						<span class="property-value" aria-labelledby="feePaymentAllowed-label"><g:formatBoolean boolean="${MMembershipDetailsInstance?.feePaymentAllowed}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MMembershipDetailsInstance?.institutionId}">
				<li class="fieldcontain">
					<span id="institutionId-label" class="property-label"><g:message code="MMembershipDetails.institutionId.label" default="Institution Id" /></span>
					
						<span class="property-value" aria-labelledby="institutionId-label"><g:fieldValue bean="${MMembershipDetailsInstance}" field="institutionId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MMembershipDetailsInstance?.leagueId}">
				<li class="fieldcontain">
					<span id="leagueId-label" class="property-label"><g:message code="MMembershipDetails.leagueId.label" default="League Id" /></span>
					
						<span class="property-value" aria-labelledby="leagueId-label"><g:fieldValue bean="${MMembershipDetailsInstance}" field="leagueId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MMembershipDetailsInstance?.membershipFee}">
				<li class="fieldcontain">
					<span id="membershipFee-label" class="property-label"><g:message code="MMembershipDetails.membershipFee.label" default="Membership Fee" /></span>
					
						<span class="property-value" aria-labelledby="membershipFee-label"><g:formatBoolean boolean="${MMembershipDetailsInstance?.membershipFee}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${MMembershipDetailsInstance?.id}" />
					<g:link class="edit" action="edit" id="${MMembershipDetailsInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>


<%@ page import="com.maali.tournamentmanager.MPaymentHistory" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MPaymentHistory.label', default: 'MPaymentHistory')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-MPaymentHistory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-MPaymentHistory" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list MPaymentHistory">
			
				<g:if test="${MPaymentHistoryInstance?.lastPaid}">
				<li class="fieldcontain">
					<span id="lastPaid-label" class="property-label"><g:message code="MPaymentHistory.lastPaid.label" default="Last Paid" /></span>
					
						<span class="property-value" aria-labelledby="lastPaid-label"><g:formatDate date="${MPaymentHistoryInstance?.lastPaid}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MPaymentHistoryInstance?.nextPaymentDate}">
				<li class="fieldcontain">
					<span id="nextPaymentDate-label" class="property-label"><g:message code="MPaymentHistory.nextPaymentDate.label" default="Next Payment Date" /></span>
					
						<span class="property-value" aria-labelledby="nextPaymentDate-label"><g:formatDate date="${MPaymentHistoryInstance?.nextPaymentDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MPaymentHistoryInstance?.paymentAmount}">
				<li class="fieldcontain">
					<span id="paymentAmount-label" class="property-label"><g:message code="MPaymentHistory.paymentAmount.label" default="Payment Amount" /></span>
					
						<span class="property-value" aria-labelledby="paymentAmount-label"><g:fieldValue bean="${MPaymentHistoryInstance}" field="paymentAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MPaymentHistoryInstance?.paymentDate}">
				<li class="fieldcontain">
					<span id="paymentDate-label" class="property-label"><g:message code="MPaymentHistory.paymentDate.label" default="Payment Date" /></span>
					
						<span class="property-value" aria-labelledby="paymentDate-label"><g:formatDate date="${MPaymentHistoryInstance?.paymentDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MPaymentHistoryInstance?.paymentDue}">
				<li class="fieldcontain">
					<span id="paymentDue-label" class="property-label"><g:message code="MPaymentHistory.paymentDue.label" default="Payment Due" /></span>
					
						<span class="property-value" aria-labelledby="paymentDue-label"><g:formatBoolean boolean="${MPaymentHistoryInstance?.paymentDue}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MPaymentHistoryInstance?.userId}">
				<li class="fieldcontain">
					<span id="userId-label" class="property-label"><g:message code="MPaymentHistory.userId.label" default="User Id" /></span>
					
						<span class="property-value" aria-labelledby="userId-label"><g:fieldValue bean="${MPaymentHistoryInstance}" field="userId"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${MPaymentHistoryInstance?.id}" />
					<g:link class="edit" action="edit" id="${MPaymentHistoryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

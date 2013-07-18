
<%@ page import="com.maali.tournamentmanager.MMembershipDetails" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MMembershipDetails.label', default: 'MMembershipDetails')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-MMembershipDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-MMembershipDetails" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="currency" title="${message(code: 'MMembershipDetails.currency.label', default: 'Currency')}" />
					
						<g:sortableColumn property="feePaymentPlanFrequency" title="${message(code: 'MMembershipDetails.feePaymentPlanFrequency.label', default: 'Fee Payment Plan Frequency')}" />
					
						<g:sortableColumn property="paymentPlanDetails" title="${message(code: 'MMembershipDetails.paymentPlanDetails.label', default: 'Payment Plan Details')}" />
					
						<g:sortableColumn property="annualMembershipAmount" title="${message(code: 'MMembershipDetails.annualMembershipAmount.label', default: 'Annual Membership Amount')}" />
					
						<g:sortableColumn property="feePaymentAllowed" title="${message(code: 'MMembershipDetails.feePaymentAllowed.label', default: 'Fee Payment Allowed')}" />
					
						<g:sortableColumn property="institutionId" title="${message(code: 'MMembershipDetails.institutionId.label', default: 'Institution Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${MMembershipDetailsInstanceList}" status="i" var="MMembershipDetailsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${MMembershipDetailsInstance.id}">${fieldValue(bean: MMembershipDetailsInstance, field: "currency")}</g:link></td>
					
						<td>${fieldValue(bean: MMembershipDetailsInstance, field: "feePaymentPlanFrequency")}</td>
					
						<td>${fieldValue(bean: MMembershipDetailsInstance, field: "paymentPlanDetails")}</td>
					
						<td>${fieldValue(bean: MMembershipDetailsInstance, field: "annualMembershipAmount")}</td>
					
						<td><g:formatBoolean boolean="${MMembershipDetailsInstance.feePaymentAllowed}" /></td>
					
						<td>${fieldValue(bean: MMembershipDetailsInstance, field: "institutionId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${MMembershipDetailsInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

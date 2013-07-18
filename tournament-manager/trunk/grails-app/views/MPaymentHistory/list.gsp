
<%@ page import="com.maali.tournamentmanager.MPaymentHistory" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MPaymentHistory.label', default: 'MPaymentHistory')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-MPaymentHistory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-MPaymentHistory" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="lastPaid" title="${message(code: 'MPaymentHistory.lastPaid.label', default: 'Last Paid')}" />
					
						<g:sortableColumn property="nextPaymentDate" title="${message(code: 'MPaymentHistory.nextPaymentDate.label', default: 'Next Payment Date')}" />
					
						<g:sortableColumn property="paymentAmount" title="${message(code: 'MPaymentHistory.paymentAmount.label', default: 'Payment Amount')}" />
					
						<g:sortableColumn property="paymentDate" title="${message(code: 'MPaymentHistory.paymentDate.label', default: 'Payment Date')}" />
					
						<g:sortableColumn property="paymentDue" title="${message(code: 'MPaymentHistory.paymentDue.label', default: 'Payment Due')}" />
					
						<g:sortableColumn property="userId" title="${message(code: 'MPaymentHistory.userId.label', default: 'User Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${MPaymentHistoryInstanceList}" status="i" var="MPaymentHistoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${MPaymentHistoryInstance.id}">${fieldValue(bean: MPaymentHistoryInstance, field: "lastPaid")}</g:link></td>
					
						<td><g:formatDate date="${MPaymentHistoryInstance.nextPaymentDate}" /></td>
					
						<td>${fieldValue(bean: MPaymentHistoryInstance, field: "paymentAmount")}</td>
					
						<td><g:formatDate date="${MPaymentHistoryInstance.paymentDate}" /></td>
					
						<td><g:formatBoolean boolean="${MPaymentHistoryInstance.paymentDue}" /></td>
					
						<td>${fieldValue(bean: MPaymentHistoryInstance, field: "userId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${MPaymentHistoryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

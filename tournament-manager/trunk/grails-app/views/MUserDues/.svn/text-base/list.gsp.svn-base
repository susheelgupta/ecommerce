
<%@ page import="com.maali.tournamentmanager.MUserDues" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MUserDues.label', default: 'MUserDues')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-MUserDues" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-MUserDues" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="institutionCurrency" title="${message(code: 'MUserDues.institutionCurrency.label', default: 'Institution Currency')}" />
					
						<g:sortableColumn property="institutionDueDate" title="${message(code: 'MUserDues.institutionDueDate.label', default: 'Institution Due Date')}" />
					
						<g:sortableColumn property="institutionDues" title="${message(code: 'MUserDues.institutionDues.label', default: 'Institution Dues')}" />
					
						<g:sortableColumn property="institutionDuesPaid" title="${message(code: 'MUserDues.institutionDuesPaid.label', default: 'Institution Dues Paid')}" />
					
						<g:sortableColumn property="institutionDuesPaidDate" title="${message(code: 'MUserDues.institutionDuesPaidDate.label', default: 'Institution Dues Paid Date')}" />
					
						<g:sortableColumn property="institutionId" title="${message(code: 'MUserDues.institutionId.label', default: 'Institution Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${MUserDuesInstanceList}" status="i" var="MUserDuesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${MUserDuesInstance.id}">${fieldValue(bean: MUserDuesInstance, field: "institutionCurrency")}</g:link></td>
					
						<td><g:formatDate date="${MUserDuesInstance.institutionDueDate}" /></td>
					
						<td>${fieldValue(bean: MUserDuesInstance, field: "institutionDues")}</td>
					
						<td><g:formatBoolean boolean="${MUserDuesInstance.institutionDuesPaid}" /></td>
					
						<td><g:formatDate date="${MUserDuesInstance.institutionDuesPaidDate}" /></td>
					
						<td>${fieldValue(bean: MUserDuesInstance, field: "institutionId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${MUserDuesInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

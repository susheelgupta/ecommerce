
<%@ page import="com.maali.tournamentmanager.MUser" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MUser.label', default: 'MUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-MUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-MUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="emailAddress" title="${message(code: 'MUser.emailAddress.label', default: 'Email Address')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'MUser.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'MUser.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'MUser.accountLocked.label', default: 'Account Locked')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'MUser.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="citizenship" title="${message(code: 'MUser.citizenship.label', default: 'Citizenship')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${MUserInstanceList}" status="i" var="MUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${MUserInstance.id}">${fieldValue(bean: MUserInstance, field: "emailAddress")}</g:link></td>
					
						<td>${fieldValue(bean: MUserInstance, field: "password")}</td>
					
						<td><g:formatBoolean boolean="${MUserInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${MUserInstance.accountLocked}" /></td>
					
						<td>${fieldValue(bean: MUserInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: MUserInstance, field: "citizenship")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${MUserInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

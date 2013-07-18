
<%@ page import="com.maali.tournamentmanager.MInstitution" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MInstitution.label', default: 'MInstitution')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-MInstitution" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-MInstitution" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="emailAddress" title="${message(code: 'MInstitution.emailAddress.label', default: 'Email Address')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'MInstitution.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="email1" title="${message(code: 'MInstitution.email1.label', default: 'Email1')}" />
					
						<g:sortableColumn property="email2" title="${message(code: 'MInstitution.email2.label', default: 'Email2')}" />
					
						<g:sortableColumn property="currency" title="${message(code: 'MInstitution.currency.label', default: 'Currency')}" />
					
						<g:sortableColumn property="phone" title="${message(code: 'MInstitution.phone.label', default: 'Phone')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${MInstitutionInstanceList}" status="i" var="MInstitutionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${MInstitutionInstance.id}">${fieldValue(bean: MInstitutionInstance, field: "emailAddress")}</g:link></td>
					
						<td>${fieldValue(bean: MInstitutionInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: MInstitutionInstance, field: "email1")}</td>
					
						<td>${fieldValue(bean: MInstitutionInstance, field: "email2")}</td>
					
						<td>${fieldValue(bean: MInstitutionInstance, field: "currency")}</td>
					
						<td>${fieldValue(bean: MInstitutionInstance, field: "phone")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${MInstitutionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

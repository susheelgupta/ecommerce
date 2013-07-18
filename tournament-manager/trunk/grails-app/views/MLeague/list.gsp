
<%@ page import="com.maali.tournamentmanager.MLeague" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MLeague.label', default: 'MLeague')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-MLeague" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-MLeague" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'MLeague.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'MLeague.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'MLeague.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="additionalEmail" title="${message(code: 'MLeague.additionalEmail.label', default: 'Additional Email')}" />
					
						<g:sortableColumn property="phoneNo" title="${message(code: 'MLeague.phoneNo.label', default: 'Phone No')}" />
					
						<g:sortableColumn property="phoneExt" title="${message(code: 'MLeague.phoneExt.label', default: 'Phone Ext')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${MLeagueInstanceList}" status="i" var="MLeagueInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${MLeagueInstance.id}">${fieldValue(bean: MLeagueInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: MLeagueInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: MLeagueInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: MLeagueInstance, field: "additionalEmail")}</td>
					
						<td>${fieldValue(bean: MLeagueInstance, field: "phoneNo")}</td>
					
						<td>${fieldValue(bean: MLeagueInstance, field: "phoneExt")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${MLeagueInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

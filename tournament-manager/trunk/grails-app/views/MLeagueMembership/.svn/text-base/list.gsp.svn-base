
<%@ page import="com.maali.tournamentmanager.MLeagueMembership" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MLeagueMembership.label', default: 'MLeagueMembership')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-MLeagueMembership" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-MLeagueMembership" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="leagueMembershipCol" title="${message(code: 'MLeagueMembership.leagueMembershipCol.label', default: 'League Membership Col')}" />
					
						<g:sortableColumn property="leagueId" title="${message(code: 'MLeagueMembership.leagueId.label', default: 'League Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${MLeagueMembershipInstanceList}" status="i" var="MLeagueMembershipInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${MLeagueMembershipInstance.id}">${fieldValue(bean: MLeagueMembershipInstance, field: "leagueMembershipCol")}</g:link></td>
					
						<td>${fieldValue(bean: MLeagueMembershipInstance, field: "leagueId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${MLeagueMembershipInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

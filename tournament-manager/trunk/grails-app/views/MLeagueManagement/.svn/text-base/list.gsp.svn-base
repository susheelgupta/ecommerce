
<%@ page import="com.maali.tournamentmanager.MLeagueManagement" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MLeagueManagement.label', default: 'MLeagueManagement')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-MLeagueManagement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-MLeagueManagement" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="leagueManagementCol" title="${message(code: 'MLeagueManagement.leagueManagementCol.label', default: 'League Management Col')}" />
					
						<g:sortableColumn property="leagueManagementCol1" title="${message(code: 'MLeagueManagement.leagueManagementCol1.label', default: 'League Management Col1')}" />
					
						<g:sortableColumn property="currentPosition" title="${message(code: 'MLeagueManagement.currentPosition.label', default: 'Current Position')}" />
					
						<g:sortableColumn property="endDate" title="${message(code: 'MLeagueManagement.endDate.label', default: 'End Date')}" />
					
						<g:sortableColumn property="leagueId" title="${message(code: 'MLeagueManagement.leagueId.label', default: 'League Id')}" />
					
						<g:sortableColumn property="memberId" title="${message(code: 'MLeagueManagement.memberId.label', default: 'Member Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${MLeagueManagementInstanceList}" status="i" var="MLeagueManagementInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${MLeagueManagementInstance.id}">${fieldValue(bean: MLeagueManagementInstance, field: "leagueManagementCol")}</g:link></td>
					
						<td>${fieldValue(bean: MLeagueManagementInstance, field: "leagueManagementCol1")}</td>
					
						<td><g:formatBoolean boolean="${MLeagueManagementInstance.currentPosition}" /></td>
					
						<td><g:formatDate date="${MLeagueManagementInstance.endDate}" /></td>
					
						<td>${fieldValue(bean: MLeagueManagementInstance, field: "leagueId")}</td>
					
						<td>${fieldValue(bean: MLeagueManagementInstance, field: "memberId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${MLeagueManagementInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

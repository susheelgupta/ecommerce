
<%@ page import="com.maali.tournamentmanager.MSport" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MSport.label', default: 'MSport')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-MSport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-MSport" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="indoor" title="${message(code: 'MSport.indoor.label', default: 'Indoor')}" />
					
						<g:sortableColumn property="numberPlayersPerTeam" title="${message(code: 'MSport.numberPlayersPerTeam.label', default: 'Number Players Per Team')}" />
					
						<g:sortableColumn property="numberTeamsPerGame" title="${message(code: 'MSport.numberTeamsPerGame.label', default: 'Number Teams Per Game')}" />
					
						<g:sortableColumn property="sportName" title="${message(code: 'MSport.sportName.label', default: 'Sport Name')}" />
					
						<g:sortableColumn property="sportType" title="${message(code: 'MSport.sportType.label', default: 'Sport Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${MSportInstanceList}" status="i" var="MSportInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${MSportInstance.id}">${fieldValue(bean: MSportInstance, field: "indoor")}</g:link></td>
					
						<td>${fieldValue(bean: MSportInstance, field: "numberPlayersPerTeam")}</td>
					
						<td>${fieldValue(bean: MSportInstance, field: "numberTeamsPerGame")}</td>
					
						<td>${fieldValue(bean: MSportInstance, field: "sportName")}</td>
					
						<td><g:formatBoolean boolean="${MSportInstance.sportType}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${MSportInstanceTotal}" />
			</div>
		</div>
	</body>
</html>


<%@ page import="com.maali.tournamentmanager.MTournamentResult" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MTournamentResult.label', default: 'MTournamentResult')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-MTournamentResult" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-MTournamentResult" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="round" title="${message(code: 'MTournamentResult.round.label', default: 'Round')}" />
					
						<g:sortableColumn property="winner" title="${message(code: 'MTournamentResult.winner.label', default: 'Winner')}" />
					
						<g:sortableColumn property="looser" title="${message(code: 'MTournamentResult.looser.label', default: 'Looser')}" />
					
						<g:sortableColumn property="score" title="${message(code: 'MTournamentResult.score.label', default: 'Score')}" />
					
						<g:sortableColumn property="matchId" title="${message(code: 'MTournamentResult.matchId.label', default: 'Match Id')}" />
					
						<g:sortableColumn property="teamId1" title="${message(code: 'MTournamentResult.teamId1.label', default: 'Team Id1')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${MTournamentResultInstanceList}" status="i" var="MTournamentResultInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${MTournamentResultInstance.id}">${fieldValue(bean: MTournamentResultInstance, field: "round")}</g:link></td>
					
						<td>${fieldValue(bean: MTournamentResultInstance, field: "winner")}</td>
					
						<td>${fieldValue(bean: MTournamentResultInstance, field: "looser")}</td>
					
						<td>${fieldValue(bean: MTournamentResultInstance, field: "score")}</td>
					
						<td>${fieldValue(bean: MTournamentResultInstance, field: "matchId")}</td>
					
						<td>${fieldValue(bean: MTournamentResultInstance, field: "teamId1")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${MTournamentResultInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

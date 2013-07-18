
<%@ page import="com.maali.tournamentmanager.MTournamentResult" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MTournamentResult.label', default: 'MTournamentResult')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-MTournamentResult" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-MTournamentResult" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list MTournamentResult">
			
				<g:if test="${MTournamentResultInstance?.round}">
				<li class="fieldcontain">
					<span id="round-label" class="property-label"><g:message code="MTournamentResult.round.label" default="Round" /></span>
					
						<span class="property-value" aria-labelledby="round-label"><g:fieldValue bean="${MTournamentResultInstance}" field="round"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTournamentResultInstance?.winner}">
				<li class="fieldcontain">
					<span id="winner-label" class="property-label"><g:message code="MTournamentResult.winner.label" default="Winner" /></span>
					
						<span class="property-value" aria-labelledby="winner-label"><g:fieldValue bean="${MTournamentResultInstance}" field="winner"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTournamentResultInstance?.looser}">
				<li class="fieldcontain">
					<span id="looser-label" class="property-label"><g:message code="MTournamentResult.looser.label" default="Looser" /></span>
					
						<span class="property-value" aria-labelledby="looser-label"><g:fieldValue bean="${MTournamentResultInstance}" field="looser"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTournamentResultInstance?.score}">
				<li class="fieldcontain">
					<span id="score-label" class="property-label"><g:message code="MTournamentResult.score.label" default="Score" /></span>
					
						<span class="property-value" aria-labelledby="score-label"><g:fieldValue bean="${MTournamentResultInstance}" field="score"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTournamentResultInstance?.matchId}">
				<li class="fieldcontain">
					<span id="matchId-label" class="property-label"><g:message code="MTournamentResult.matchId.label" default="Match Id" /></span>
					
						<span class="property-value" aria-labelledby="matchId-label"><g:fieldValue bean="${MTournamentResultInstance}" field="matchId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTournamentResultInstance?.teamId1}">
				<li class="fieldcontain">
					<span id="teamId1-label" class="property-label"><g:message code="MTournamentResult.teamId1.label" default="Team Id1" /></span>
					
						<span class="property-value" aria-labelledby="teamId1-label"><g:fieldValue bean="${MTournamentResultInstance}" field="teamId1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTournamentResultInstance?.teamId2}">
				<li class="fieldcontain">
					<span id="teamId2-label" class="property-label"><g:message code="MTournamentResult.teamId2.label" default="Team Id2" /></span>
					
						<span class="property-value" aria-labelledby="teamId2-label"><g:fieldValue bean="${MTournamentResultInstance}" field="teamId2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTournamentResultInstance?.userId1}">
				<li class="fieldcontain">
					<span id="userId1-label" class="property-label"><g:message code="MTournamentResult.userId1.label" default="User Id1" /></span>
					
						<span class="property-value" aria-labelledby="userId1-label"><g:fieldValue bean="${MTournamentResultInstance}" field="userId1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTournamentResultInstance?.userId2}">
				<li class="fieldcontain">
					<span id="userId2-label" class="property-label"><g:message code="MTournamentResult.userId2.label" default="User Id2" /></span>
					
						<span class="property-value" aria-labelledby="userId2-label"><g:fieldValue bean="${MTournamentResultInstance}" field="userId2"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${MTournamentResultInstance?.id}" />
					<g:link class="edit" action="edit" id="${MTournamentResultInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

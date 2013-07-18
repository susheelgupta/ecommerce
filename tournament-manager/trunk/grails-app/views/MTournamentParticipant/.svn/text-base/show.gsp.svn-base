
<%@ page import="com.maali.tournamentmanager.MTournamentParticipant" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MTournamentParticipant.label', default: 'MTournamentParticipant')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-MTournamentParticipant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-MTournamentParticipant" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list MTournamentParticipant">
			
				<g:if test="${MTournamentParticipantInstance?.teamId}">
				<li class="fieldcontain">
					<span id="teamId-label" class="property-label"><g:message code="MTournamentParticipant.teamId.label" default="Team Id" /></span>
					
						<span class="property-value" aria-labelledby="teamId-label"><g:fieldValue bean="${MTournamentParticipantInstance}" field="teamId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTournamentParticipantInstance?.tournamentId}">
				<li class="fieldcontain">
					<span id="tournamentId-label" class="property-label"><g:message code="MTournamentParticipant.tournamentId.label" default="Tournament Id" /></span>
					
						<span class="property-value" aria-labelledby="tournamentId-label"><g:fieldValue bean="${MTournamentParticipantInstance}" field="tournamentId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTournamentParticipantInstance?.tournamentSeed}">
				<li class="fieldcontain">
					<span id="tournamentSeed-label" class="property-label"><g:message code="MTournamentParticipant.tournamentSeed.label" default="Tournament Seed" /></span>
					
						<span class="property-value" aria-labelledby="tournamentSeed-label"><g:fieldValue bean="${MTournamentParticipantInstance}" field="tournamentSeed"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${MTournamentParticipantInstance?.id}" />
					<g:link class="edit" action="edit" id="${MTournamentParticipantInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>


<%@ page import="com.maali.tournamentmanager.MSport" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MSport.label', default: 'MSport')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-MSport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-MSport" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list MSport">
			
				<g:if test="${MSportInstance?.indoor}">
				<li class="fieldcontain">
					<span id="indoor-label" class="property-label"><g:message code="MSport.indoor.label" default="Indoor" /></span>
					
						<span class="property-value" aria-labelledby="indoor-label"><g:formatBoolean boolean="${MSportInstance?.indoor}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MSportInstance?.numberPlayersPerTeam}">
				<li class="fieldcontain">
					<span id="numberPlayersPerTeam-label" class="property-label"><g:message code="MSport.numberPlayersPerTeam.label" default="Number Players Per Team" /></span>
					
						<span class="property-value" aria-labelledby="numberPlayersPerTeam-label"><g:fieldValue bean="${MSportInstance}" field="numberPlayersPerTeam"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MSportInstance?.numberTeamsPerGame}">
				<li class="fieldcontain">
					<span id="numberTeamsPerGame-label" class="property-label"><g:message code="MSport.numberTeamsPerGame.label" default="Number Teams Per Game" /></span>
					
						<span class="property-value" aria-labelledby="numberTeamsPerGame-label"><g:fieldValue bean="${MSportInstance}" field="numberTeamsPerGame"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MSportInstance?.sportName}">
				<li class="fieldcontain">
					<span id="sportName-label" class="property-label"><g:message code="MSport.sportName.label" default="Sport Name" /></span>
					
						<span class="property-value" aria-labelledby="sportName-label"><g:fieldValue bean="${MSportInstance}" field="sportName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MSportInstance?.sportType}">
				<li class="fieldcontain">
					<span id="sportType-label" class="property-label"><g:message code="MSport.sportType.label" default="Sport Type" /></span>
					
						<span class="property-value" aria-labelledby="sportType-label"><g:formatBoolean boolean="${MSportInstance?.sportType}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${MSportInstance?.id}" />
					<g:link class="edit" action="edit" id="${MSportInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>


<%@ page import="com.maali.tournamentmanager.MLeagueManagement" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MLeagueManagement.label', default: 'MLeagueManagement')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-MLeagueManagement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-MLeagueManagement" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list MLeagueManagement">
			
				<g:if test="${MLeagueManagementInstance?.leagueManagementCol}">
				<li class="fieldcontain">
					<span id="leagueManagementCol-label" class="property-label"><g:message code="MLeagueManagement.leagueManagementCol.label" default="League Management Col" /></span>
					
						<span class="property-value" aria-labelledby="leagueManagementCol-label"><g:fieldValue bean="${MLeagueManagementInstance}" field="leagueManagementCol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MLeagueManagementInstance?.leagueManagementCol1}">
				<li class="fieldcontain">
					<span id="leagueManagementCol1-label" class="property-label"><g:message code="MLeagueManagement.leagueManagementCol1.label" default="League Management Col1" /></span>
					
						<span class="property-value" aria-labelledby="leagueManagementCol1-label"><g:fieldValue bean="${MLeagueManagementInstance}" field="leagueManagementCol1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MLeagueManagementInstance?.currentPosition}">
				<li class="fieldcontain">
					<span id="currentPosition-label" class="property-label"><g:message code="MLeagueManagement.currentPosition.label" default="Current Position" /></span>
					
						<span class="property-value" aria-labelledby="currentPosition-label"><g:formatBoolean boolean="${MLeagueManagementInstance?.currentPosition}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MLeagueManagementInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="MLeagueManagement.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${MLeagueManagementInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MLeagueManagementInstance?.leagueId}">
				<li class="fieldcontain">
					<span id="leagueId-label" class="property-label"><g:message code="MLeagueManagement.leagueId.label" default="League Id" /></span>
					
						<span class="property-value" aria-labelledby="leagueId-label"><g:fieldValue bean="${MLeagueManagementInstance}" field="leagueId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MLeagueManagementInstance?.memberId}">
				<li class="fieldcontain">
					<span id="memberId-label" class="property-label"><g:message code="MLeagueManagement.memberId.label" default="Member Id" /></span>
					
						<span class="property-value" aria-labelledby="memberId-label"><g:fieldValue bean="${MLeagueManagementInstance}" field="memberId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MLeagueManagementInstance?.memberRole}">
				<li class="fieldcontain">
					<span id="memberRole-label" class="property-label"><g:message code="MLeagueManagement.memberRole.label" default="Member Role" /></span>
					
						<span class="property-value" aria-labelledby="memberRole-label"><g:fieldValue bean="${MLeagueManagementInstance}" field="memberRole"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MLeagueManagementInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="MLeagueManagement.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${MLeagueManagementInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${MLeagueManagementInstance?.id}" />
					<g:link class="edit" action="edit" id="${MLeagueManagementInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

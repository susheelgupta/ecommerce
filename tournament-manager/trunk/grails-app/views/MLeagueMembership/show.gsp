
<%@ page import="com.maali.tournamentmanager.MLeagueMembership" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MLeagueMembership.label', default: 'MLeagueMembership')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-MLeagueMembership" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-MLeagueMembership" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list MLeagueMembership">
			
				<g:if test="${MLeagueMembershipInstance?.leagueMembershipCol}">
				<li class="fieldcontain">
					<span id="leagueMembershipCol-label" class="property-label"><g:message code="MLeagueMembership.leagueMembershipCol.label" default="League Membership Col" /></span>
					
						<span class="property-value" aria-labelledby="leagueMembershipCol-label"><g:fieldValue bean="${MLeagueMembershipInstance}" field="leagueMembershipCol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MLeagueMembershipInstance?.leagueId}">
				<li class="fieldcontain">
					<span id="leagueId-label" class="property-label"><g:message code="MLeagueMembership.leagueId.label" default="League Id" /></span>
					
						<span class="property-value" aria-labelledby="leagueId-label"><g:fieldValue bean="${MLeagueMembershipInstance}" field="leagueId"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${MLeagueMembershipInstance?.id}" />
					<g:link class="edit" action="edit" id="${MLeagueMembershipInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

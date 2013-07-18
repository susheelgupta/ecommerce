
<%@ page import="com.maali.tournamentmanager.MInstitutionMembership" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MInstitutionMembership.label', default: 'MInstitutionMembership')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-MInstitutionMembership" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-MInstitutionMembership" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="MInstitutionMembership.institutionId.label" default="Institution Id" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${MInstitutionMembershipInstanceList}" status="i" var="MInstitutionMembershipInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${MInstitutionMembershipInstance.id}">${fieldValue(bean: MInstitutionMembershipInstance, field: "institutionId")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${MInstitutionMembershipInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

<%@ page import="com.maali.tournamentmanager.MInstitutionManagement" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'MInstitutionManagement.label', default: 'MInstitutionManagement')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-MInstitutionManagement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-MInstitutionManagement" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="currentPosition" title="${message(code: 'MInstitutionManagement.currentPosition.label', default: 'Current Position')}"/>

            <g:sortableColumn property="endDate" title="${message(code: 'MInstitutionManagement.endDate.label', default: 'End Date')}"/>

            <th><g:message code="MInstitutionManagement.institutionId.label" default="Institution Id"/></th>

            <th><g:message code="MInstitutionManagement.memberId.label" default="Member Id"/></th>

            <g:sortableColumn property="memberRole" title="${message(code: 'MInstitutionManagement.memberRole.label', default: 'Member Role')}"/>

            <g:sortableColumn property="startDate" title="${message(code: 'MInstitutionManagement.startDate.label', default: 'Start Date')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${MInstitutionManagementInstanceList}" status="i" var="MInstitutionManagementInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${MInstitutionManagementInstance.id}">${fieldValue(bean: MInstitutionManagementInstance, field: "currentPosition")}</g:link></td>

                <td><g:formatDate date="${MInstitutionManagementInstance.endDate}"/></td>
                <td>${MInstitutionManagementInstance.institutionId.emailAddress}</td>
                <td>${MInstitutionManagementInstance.memberId.emailAddress}</td>
                <td>${fieldValue(bean: MInstitutionManagementInstance, field: "memberRole")}</td>

                <td><g:formatDate date="${MInstitutionManagementInstance.startDate}"/></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${MInstitutionManagementInstanceTotal}"/>
    </div>
</div>
</body>
</html>

<%@ page import="com.maali.tournamentmanager.MTeam" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'MTeam.label', default: 'MTeam')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-MTeam" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-MTeam" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="name" title="${message(code: 'MTeam.name.label', default: 'Name')}"/>

            <g:sortableColumn property="address" title="${message(code: 'MTeam.address.label', default: 'Address')}"/>

            <g:sortableColumn property="captainId" title="${message(code: 'MTeam.captainId.label', default: 'Captain Id')}"/>

            <g:sortableColumn property="lastPaymentAmount" title="${message(code: 'MTeam.lastPaymentAmount.label', default: 'Last Payment Amount')}"/>

            <g:sortableColumn property="lastPaymentDate" title="${message(code: 'MTeam.lastPaymentDate.label', default: 'Last Payment Date')}"/>

            <th><g:message code="MTeam.league.label" default="League"/></th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${MTeamInstanceList}" status="i" var="MTeamInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${MTeamInstance.id}">${fieldValue(bean: MTeamInstance, field: "name")}</g:link></td>

                <td>${fieldValue(bean: MTeamInstance, field: "address")}</td>

                <td>${fieldValue(bean: MTeamInstance, field: "captainId")}</td>

                <td>${fieldValue(bean: MTeamInstance, field: "lastPaymentAmount")}</td>

                <td><g:formatDate date="${MTeamInstance.lastPaymentDate}"/></td>

                <td>${fieldValue(bean: MTeamInstance, field: "league.name")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${MTeamInstanceTotal}"/>
    </div>
</div>
</body>
</html>

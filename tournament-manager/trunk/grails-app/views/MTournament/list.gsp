<%@ page import="com.maali.tournamentmanager.MTournament" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'MTournament.label', default: 'MTournament')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-MTournament" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-MTournament" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="endDate" title="${message(code: 'MTournament.endDate.label', default: 'End Date')}"/>

            <th><g:message code="MTournament.institution.label" default="Institution"/></th>

            <th><g:message code="MTournament.league.label" default="League"/></th>
            <th><g:message code="MTournament.league.label" default="Tournament Name"/></th>

            <g:sortableColumn property="startDate" title="${message(code: 'MTournament.startDate.label', default: 'Start Date')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${MTournamentInstanceList}" status="i" var="MTournamentInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${MTournamentInstance.id}">${fieldValue(bean: MTournamentInstance, field: "endDate")}</g:link></td>

                <td>${fieldValue(bean: MTournamentInstance, field: "institution.name")}</td>

                <td>${fieldValue(bean: MTournamentInstance, field: "league.name")}</td>
                <td>${fieldValue(bean: MTournamentInstance, field: "name")}</td>

                <td><g:formatDate date="${MTournamentInstance.startDate}"/></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${MTournamentInstanceTotal}"/>
    </div>
</div>
</body>
</html>

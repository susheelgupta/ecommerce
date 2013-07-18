<%@ page import="com.maali.tournamentmanager.MMatch" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'MMatch.label', default: 'MMatch')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-MMatch" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-MMatch" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="winner" title="${message(code: 'MMatch.winner.label', default: 'Winner')}"/>

            <g:sortableColumn property="looser" title="${message(code: 'MMatch.looser.label', default: 'Looser')}"/>

            <g:sortableColumn property="matchCol" title="${message(code: 'MMatch.matchCol.label', default: 'Match Col')}"/>

            <th><g:message code="MMatch.institution.label" default="Institution"/></th>

            <th><g:message code="MMatch.league.label" default="League"/></th>

            <g:sortableColumn property="locationId" title="${message(code: 'MMatch.locationId.label', default: 'Location Id')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${MMatchInstanceList}" status="i" var="MMatchInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${MMatchInstance.id}">${fieldValue(bean: MMatchInstance, field: "winner")}</g:link></td>

                <td>${fieldValue(bean: MMatchInstance, field: "looser")}</td>

                <td>${fieldValue(bean: MMatchInstance, field: "matchCol")}</td>

                <td>${fieldValue(bean: MMatchInstance, field: "institution.name")}</td>

                <td>${fieldValue(bean: MMatchInstance, field: "league.name")}</td>

                <td>${fieldValue(bean: MMatchInstance, field: "locationId")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${MMatchInstanceTotal}"/>
    </div>
</div>
</body>
</html>

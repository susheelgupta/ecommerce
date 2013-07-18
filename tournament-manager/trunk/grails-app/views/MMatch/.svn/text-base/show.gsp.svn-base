<%@ page import="com.maali.tournamentmanager.MMatch" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'MMatch.label', default: 'MMatch')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-MMatch" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-MMatch" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list MMatch">

        <g:if test="${MMatchInstance?.winner}">
            <li class="fieldcontain">
                <span id="winner-label" class="property-label"><g:message code="MMatch.winner.label" default="Winner"/></span>

                <span class="property-value" aria-labelledby="winner-label"><g:fieldValue bean="${MMatchInstance}" field="winner"/></span>

            </li>
        </g:if>

        <g:if test="${MMatchInstance?.looser}">
            <li class="fieldcontain">
                <span id="looser-label" class="property-label"><g:message code="MMatch.looser.label" default="Looser"/></span>

                <span class="property-value" aria-labelledby="looser-label"><g:fieldValue bean="${MMatchInstance}" field="looser"/></span>

            </li>
        </g:if>

        <g:if test="${MMatchInstance?.matchCol}">
            <li class="fieldcontain">
                <span id="matchCol-label" class="property-label"><g:message code="MMatch.matchCol.label" default="Match Col"/></span>

                <span class="property-value" aria-labelledby="matchCol-label"><g:fieldValue bean="${MMatchInstance}" field="matchCol"/></span>

            </li>
        </g:if>

        <g:if test="${MMatchInstance?.institution}">
            <li class="fieldcontain">
                <span id="institution-label" class="property-label"><g:message code="MMatch.institution.label" default="Institution"/></span>

                <span class="property-value" aria-labelledby="institution-label">
                    <td>${MMatchInstance.institution.name}</td>
                </span>
            </li>
        </g:if>

        <g:if test="${MMatchInstance?.league}">
            <li class="fieldcontain">
                <span id="league-label" class="property-label"><g:message code="MMatch.league.label" default="League"/></span>

                <span class="property-value" aria-labelledby="league-label">
                    <td>${MMatchInstance.league.name}</td>
                    %{--<g:link controller="MLeague" action="show" id="${MMatchInstance?.league?.id}">${MMatchInstance?.league?.encodeAsHTML()}</g:link>--}%
                </span>
            </li>
        </g:if>

        <g:if test="${MMatchInstance?.locationId}">
            <li class="fieldcontain">
                <span id="locationId-label" class="property-label"><g:message code="MMatch.locationId.label" default="Location Id"/></span>

                <span class="property-value" aria-labelledby="locationId-label"><g:fieldValue bean="${MMatchInstance}" field="locationId"/></span>

            </li>
        </g:if>

        <g:if test="${MMatchInstance?.matchDate}">
            <li class="fieldcontain">
                <span id="matchDate-label" class="property-label"><g:message code="MMatch.matchDate.label" default="Match Date"/></span>

                <span class="property-value" aria-labelledby="matchDate-label"><g:formatDate date="${MMatchInstance?.matchDate}"/></span>

            </li>
        </g:if>

        <g:if test="${MMatchInstance?.sport}">
            <li class="fieldcontain">
                <span id="sport-label" class="property-label"><g:message code="MMatch.sport.label" default="Sport"/></span>

                <span class="property-value" aria-labelledby="sport-label">
                    <td>${MMatchInstance.sport.sportName}</td>
                </span>
            </li>
        </g:if>

        <g:if test="${MMatchInstance?.teamId1}">
            <li class="fieldcontain">
                <span id="teamId1-label" class="property-label"><g:message code="MMatch.teamId1.label" default="Team Id1"/></span>

                <span class="property-value" aria-labelledby="teamId1-label">
                    <td>${MMatchInstance.teamId1.name}</td>
                </span>
            </li>
        </g:if>

        <g:if test="${MMatchInstance?.teamId2}">
            <li class="fieldcontain">
                <span id="teamId2-label" class="property-label"><g:message code="MMatch.teamId2.label" default="Team Id2"/></span>

                <span class="property-value" aria-labelledby="teamId2-label">
                    <td>${MMatchInstance.teamId2.name}</td>
                </span>
            </li>
        </g:if>

        <g:if test="${MMatchInstance?.tournament}">
            <li class="fieldcontain">
                <span id="tournament-label" class="property-label"><g:message code="MMatch.tournament.label" default="Tournament"/></span>

                <span class="property-value" aria-labelledby="tournament-label">
                    <td>${MMatchInstance.tournament.name}</td>
                </span>
            </li>
        </g:if>
    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${MMatchInstance?.id}"/>
            <g:link class="edit" action="edit" id="${MMatchInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>

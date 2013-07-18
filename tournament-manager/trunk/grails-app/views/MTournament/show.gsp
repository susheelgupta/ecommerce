<%@ page import="com.maali.tournamentmanager.MTournament" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'MTournament.label', default: 'MTournament')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-MTournament" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-MTournament" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list MTournament">

        <g:if test="${MTournamentInstance?.name}">
            <li class="fieldcontain">
                <span id="name" class="property-label"><g:message code="MTournament.name.label" default="Name"/></span>

                <span class="property-value" aria-labelledby="name-label">
                    <td>${MTournamentInstance.name}</td>
                </span>

            </li>
        </g:if>
        <g:if test="${MTournamentInstance?.endDate}">
            <li class="fieldcontain">
                <span id="endDate-label" class="property-label"><g:message code="MTournament.endDate.label" default="End Date"/></span>

                <span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${MTournamentInstance?.endDate}"/></span>

            </li>
        </g:if>

        <g:if test="${MTournamentInstance?.institution}">
            <li class="fieldcontain">
                <span id="institution-label" class="property-label"><g:message code="MTournament.institution.label" default="Institution"/></span>

                <span class="property-value" aria-labelledby="institution-label">
                    <td>${MTournamentInstance.institution.name}</td>
                </span>
            </li>
        </g:if>

        <g:if test="${MTournamentInstance?.league}">
            <li class="fieldcontain">
                <span id="league-label" class="property-label"><g:message code="MTournament.league.label" default="League"/></span>

                <span class="property-value" aria-labelledby="league-label">
                    <td>${MTournamentInstance.league.name}</td>
                </span>
            </li>
        </g:if>

        <g:if test="${MTournamentInstance?.startDate}">
            <li class="fieldcontain">
                <span id="startDate-label" class="property-label"><g:message code="MTournament.startDate.label" default="Start Date"/></span>

                <span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${MTournamentInstance?.startDate}"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${MTournamentInstance?.id}"/>
            <g:link class="edit" action="edit" id="${MTournamentInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>

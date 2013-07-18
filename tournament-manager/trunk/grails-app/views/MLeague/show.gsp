<%@ page import="com.maali.tournamentmanager.MLeague" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'MLeague.label', default: 'MLeague')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-MLeague" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-MLeague" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list MLeague">

        <g:if test="${MLeagueInstance?.name}">
            <li class="fieldcontain">
                <span id="name-label" class="property-label"><g:message code="MLeague.name.label" default="Name"/></span>

                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${MLeagueInstance}" field="name"/></span>

            </li>
        </g:if>

        <g:if test="${MLeagueInstance?.address}">
            <li class="fieldcontain">
                <span id="address-label" class="property-label"><g:message code="MLeague.address.label" default="Address"/></span>

                <span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${MLeagueInstance}" field="address"/></span>

            </li>
        </g:if>

        <g:if test="${MLeagueInstance?.email}">
            <li class="fieldcontain">
                <span id="email-label" class="property-label"><g:message code="MLeague.email.label" default="Email"/></span>

                <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${MLeagueInstance}" field="email"/></span>

            </li>
        </g:if>

        <g:if test="${MLeagueInstance?.additionalEmail}">
            <li class="fieldcontain">
                <span id="additionalEmail-label" class="property-label"><g:message code="MLeague.additionalEmail.label" default="Additional Email"/></span>

                <span class="property-value" aria-labelledby="additionalEmail-label"><g:fieldValue bean="${MLeagueInstance}" field="additionalEmail"/></span>

            </li>
        </g:if>

        <g:if test="${MLeagueInstance?.phoneNo}">
            <li class="fieldcontain">
                <span id="phoneNo-label" class="property-label"><g:message code="MLeague.phoneNo.label" default="Phone No"/></span>

                <span class="property-value" aria-labelledby="phoneNo-label"><g:fieldValue bean="${MLeagueInstance}" field="phoneNo"/></span>

            </li>
        </g:if>

        <g:if test="${MLeagueInstance?.phoneExt}">
            <li class="fieldcontain">
                <span id="phoneExt-label" class="property-label"><g:message code="MLeague.phoneExt.label" default="Phone Ext"/></span>

                <span class="property-value" aria-labelledby="phoneExt-label"><g:fieldValue bean="${MLeagueInstance}" field="phoneExt"/></span>

            </li>
        </g:if>

        <g:if test="${MLeagueInstance?.sport}">
            <li class="fieldcontain">
                <span id="sport-label" class="property-label"><g:message code="MLeague.sport.label" default="Sport"/></span>

                <span class="property-value" aria-labelledby="sport-label">
                    <td>${MLeagueInstance.sport.sportName}</td>
                </span>
            </li>
        </g:if>

        <g:if test="${MLeagueInstance?.yearOfFormation}">
            <li class="fieldcontain">
                <span id="yearOfFormation-label" class="property-label"><g:message code="MLeague.yearOfFormation.label" default="Year Of Formation"/></span>

                <span class="property-value" aria-labelledby="yearOfFormation-label"><g:formatDate date="${MLeagueInstance?.yearOfFormation}"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${MLeagueInstance?.id}"/>
            <g:link class="edit" action="edit" id="${MLeagueInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>

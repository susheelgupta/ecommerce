<%@ page import="com.maali.tournamentmanager.Players" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'players.label', default: 'Players')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-players" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-players" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list players">

        <g:if test="${playersInstance?.emailAddress}">
            <li class="fieldcontain">
                <span id="emailAddress-label" class="property-label"><g:message code="players.emailAddress.label" default="Email Address"/></span>

                <span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${playersInstance}" field="emailAddress"/></span>

            </li>
        </g:if>

        <g:if test="${playersInstance?.firstName}">
            <li class="fieldcontain">
                <span id="firstName-label" class="property-label"><g:message code="players.firstName.label" default="First Name"/></span>

                <span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${playersInstance}" field="firstName"/></span>

            </li>
        </g:if>

        <g:if test="${playersInstance?.label}">
            <li class="fieldcontain">
                <span id="label-label" class="property-label"><g:message code="players.label.label" default="Label"/></span>

                <span class="property-value" aria-labelledby="label-label"><g:fieldValue bean="${playersInstance}" field="label"/></span>

            </li>
        </g:if>

        <g:if test="${playersInstance?.lastName}">
            <li class="fieldcontain">
                <span id="lastName-label" class="property-label"><g:message code="players.lastName.label" default="Last Name"/></span>

                <span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${playersInstance}" field="lastName"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${playersInstance?.id}"/>
            <g:link class="edit" action="edit" id="${playersInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete" id="${playersInstance?.id}"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>

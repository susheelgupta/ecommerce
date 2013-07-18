<%@ page import="com.maali.tournamentmanager.MUser" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'MUser.label', default: 'MUser')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-MUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-MUser" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list MUser">

        <g:if test="${MUserInstance?.emailAddress}">
            <li class="fieldcontain">
                <span id="emailAddress-label" class="property-label"><g:message code="MUser.emailAddress.label" default="Email Address"/></span>

                <span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${MUserInstance}" field="emailAddress"/></span>

            </li>
        </g:if>

        <g:if test="${MUserInstance?.accountExpired}">
            <li class="fieldcontain">
                <span id="accountExpired-label" class="property-label"><g:message code="MUser.accountExpired.label" default="Account Expired"/></span>

                <span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${MUserInstance?.accountExpired}"/></span>

            </li>
        </g:if>

        <g:if test="${MUserInstance?.accountLocked}">
            <li class="fieldcontain">
                <span id="accountLocked-label" class="property-label"><g:message code="MUser.accountLocked.label" default="Account Locked"/></span>

                <span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${MUserInstance?.accountLocked}"/></span>

            </li>
        </g:if>

        <g:if test="${MUserInstance?.address}">
            <li class="fieldcontain">
                <span id="address-label" class="property-label"><g:message code="MUser.address.label" default="Address"/></span>

                <span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${MUserInstance}" field="address"/></span>

            </li>
        </g:if>

        <g:if test="${MUserInstance?.citizenship}">
            <li class="fieldcontain">
                <span id="citizenship-label" class="property-label"><g:message code="MUser.citizenship.label" default="Citizenship"/></span>

                <span class="property-value" aria-labelledby="citizenship-label"><g:fieldValue bean="${MUserInstance}" field="citizenship"/></span>

            </li>
        </g:if>

        <g:if test="${MUserInstance?.countryOfBirth}">
            <li class="fieldcontain">
                <span id="countryOfBirth-label" class="property-label"><g:message code="MUser.countryOfBirth.label" default="Country Of Birth"/></span>

                <span class="property-value" aria-labelledby="countryOfBirth-label"><g:fieldValue bean="${MUserInstance}" field="countryOfBirth"/></span>

            </li>
        </g:if>

        <g:if test="${MUserInstance?.dateOfBirth}">
            <li class="fieldcontain">
                <span id="dateOfBirth-label" class="property-label"><g:message code="MUser.dateOfBirth.label" default="Date Of Birth"/></span>

                <span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${MUserInstance?.dateOfBirth}"/></span>

            </li>
        </g:if>

        <g:if test="${MUserInstance?.enabled}">
            <li class="fieldcontain">
                <span id="enabled-label" class="property-label"><g:message code="MUser.enabled.label" default="Enabled"/></span>

                <span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${MUserInstance?.enabled}"/></span>

            </li>
        </g:if>

        <g:if test="${MUserInstance?.firstName}">
            <li class="fieldcontain">
                <span id="firstName-label" class="property-label"><g:message code="MUser.firstName.label" default="First Name"/></span>

                <span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${MUserInstance}" field="firstName"/></span>

            </li>
        </g:if>

        <g:if test="${MUserInstance?.lastName}">
            <li class="fieldcontain">
                <span id="lastName-label" class="property-label"><g:message code="MUser.lastName.label" default="Last Name"/></span>

                <span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${MUserInstance}" field="lastName"/></span>

            </li>
        </g:if>

        <g:if test="${MUserInstance?.middleName}">
            <li class="fieldcontain">
                <span id="middleName-label" class="property-label"><g:message code="MUser.middleName.label" default="Middle Name"/></span>

                <span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${MUserInstance}" field="middleName"/></span>

            </li>
        </g:if>

        <g:if test="${MUserInstance?.passwordExpired}">
            <li class="fieldcontain">
                <span id="passwordExpired-label" class="property-label"><g:message code="MUser.passwordExpired.label" default="Password Expired"/></span>

                <span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${MUserInstance?.passwordExpired}"/></span>

            </li>
        </g:if>

        <g:if test="${MUserInstance?.placeOfBirth}">
            <li class="fieldcontain">
                <span id="placeOfBirth-label" class="property-label"><g:message code="MUser.placeOfBirth.label" default="Place Of Birth"/></span>

                <span class="property-value" aria-labelledby="placeOfBirth-label"><g:fieldValue bean="${MUserInstance}" field="placeOfBirth"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${MUserInstance?.id}"/>
            <g:link class="edit" action="edit" id="${MUserInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>

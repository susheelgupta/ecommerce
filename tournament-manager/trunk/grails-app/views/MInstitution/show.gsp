<%@ page import="com.maali.tournamentmanager.MInstitution" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'MInstitution.label', default: 'MInstitution')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-MInstitution" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-MInstitution" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list MInstitution">

        <g:if test="${MInstitutionInstance?.emailAddress}">
            <li class="fieldcontain">
                <span id="emailAddress-label" class="property-label"><g:message code="MInstitution.emailAddress.label" default="Email Address"/></span>

                <span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${MInstitutionInstance}" field="emailAddress"/></span>

            </li>
        </g:if>

        <g:if test="${MInstitutionInstance?.email1}">
            <li class="fieldcontain">
                <span id="email1-label" class="property-label"><g:message code="MInstitution.email1.label" default="Email1"/></span>

                <span class="property-value" aria-labelledby="email1-label"><g:fieldValue bean="${MInstitutionInstance}" field="email1"/></span>

            </li>
        </g:if>

        <g:if test="${MInstitutionInstance?.email2}">
            <li class="fieldcontain">
                <span id="email2-label" class="property-label"><g:message code="MInstitution.email2.label" default="Email2"/></span>

                <span class="property-value" aria-labelledby="email2-label"><g:fieldValue bean="${MInstitutionInstance}" field="email2"/></span>

            </li>
        </g:if>

        <g:if test="${MInstitutionInstance?.currency}">
            <li class="fieldcontain">
                <span id="currency-label" class="property-label"><g:message code="MInstitution.currency.label" default="Currency"/></span>

                <span class="property-value" aria-labelledby="currency-label"><g:fieldValue bean="${MInstitutionInstance}" field="currency"/></span>

            </li>
        </g:if>

        <g:if test="${MInstitutionInstance?.phone}">
            <li class="fieldcontain">
                <span id="phone-label" class="property-label"><g:message code="MInstitution.phone.label" default="Phone"/></span>

                <span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${MInstitutionInstance}" field="phone"/></span>

            </li>
        </g:if>

        <g:if test="${MInstitutionInstance?.phoneExt}">
            <li class="fieldcontain">
                <span id="phoneExt-label" class="property-label"><g:message code="MInstitution.phoneExt.label" default="Phone Ext"/></span>

                <span class="property-value" aria-labelledby="phoneExt-label"><g:fieldValue bean="${MInstitutionInstance}" field="phoneExt"/></span>

            </li>
        </g:if>

        <g:if test="${MInstitutionInstance?.annualMembershipAmount}">
            <li class="fieldcontain">
                <span id="annualMembershipAmount-label" class="property-label"><g:message code="MInstitution.annualMembershipAmount.label"
                                                                                          default="Annual Membership Amount"/></span>

                <span class="property-value" aria-labelledby="annualMembershipAmount-label"><g:fieldValue bean="${MInstitutionInstance}"
                                                                                                          field="annualMembershipAmount"/></span>

            </li>
        </g:if>

        <g:if test="${MInstitutionInstance?.accountExpired}">
            <li class="fieldcontain">
                <span id="accountExpired-label" class="property-label"><g:message code="MInstitution.accountExpired.label" default="Account Expired"/></span>

                <span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${MInstitutionInstance?.accountExpired}"/></span>

            </li>
        </g:if>

        <g:if test="${MInstitutionInstance?.accountLocked}">
            <li class="fieldcontain">
                <span id="accountLocked-label" class="property-label"><g:message code="MInstitution.accountLocked.label" default="Account Locked"/></span>

                <span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${MInstitutionInstance?.accountLocked}"/></span>

            </li>
        </g:if>

        <g:if test="${MInstitutionInstance?.address}">
            <li class="fieldcontain">
                <span id="address-label" class="property-label"><g:message code="MInstitution.address.label" default="Address"/></span>

                <span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${MInstitutionInstance}" field="address"/></span>

            </li>
        </g:if>

        <g:if test="${MInstitutionInstance?.enabled}">
            <li class="fieldcontain">
                <span id="enabled-label" class="property-label"><g:message code="MInstitution.enabled.label" default="Enabled"/></span>

                <span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${MInstitutionInstance?.enabled}"/></span>

            </li>
        </g:if>

        <g:if test="${MInstitutionInstance?.membershipFee}">
            <li class="fieldcontain">
                <span id="membershipFee-label" class="property-label"><g:message code="MInstitution.membershipFee.label" default="Membership Fee"/></span>

                <span class="property-value" aria-labelledby="membershipFee-label"><g:formatBoolean boolean="${MInstitutionInstance?.membershipFee}"/></span>

            </li>
        </g:if>

        <g:if test="${MInstitutionInstance?.passwordExpired}">
            <li class="fieldcontain">
                <span id="passwordExpired-label" class="property-label"><g:message code="MInstitution.passwordExpired.label" default="Password Expired"/></span>

                <span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean
                        boolean="${MInstitutionInstance?.passwordExpired}"/></span>

            </li>
        </g:if>

        <g:if test="${MInstitutionInstance?.type}">
            <li class="fieldcontain">
                <span id="type-label" class="property-label"><g:message code="MInstitution.type.label" default="Type"/></span>

                <span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${MInstitutionInstance}" field="type"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${MInstitutionInstance?.id}"/>
            <g:link class="edit" action="edit" id="${MInstitutionInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>

<%@ page import="com.maali.tournamentmanager.MTeam" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'MTeam.label', default: 'MTeam')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-MTeam" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-MTeam" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list MTeam">

        <g:if test="${MTeamInstance?.name}">
            <li class="fieldcontain">
                <span id="name-label" class="property-label"><g:message code="MTeam.name.label" default="Name"/></span>

                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${MTeamInstance}" field="name"/></span>

            </li>
        </g:if>

        <g:if test="${MTeamInstance?.address}">
            <li class="fieldcontain">
                <span id="address-label" class="property-label"><g:message code="MTeam.address.label" default="Address"/></span>

                <span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${MTeamInstance}" field="address"/></span>

            </li>
        </g:if>

        <g:if test="${MTeamInstance?.captainId}">
            <li class="fieldcontain">
                <span id="captainId-label" class="property-label"><g:message code="MTeam.captainId.label" default="Captain Id"/></span>

                <span class="property-value" aria-labelledby="captainId-label"><g:fieldValue bean="${MTeamInstance}" field="captainId"/></span>

            </li>
        </g:if>

        <g:if test="${MTeamInstance?.lastPaymentAmount}">
            <li class="fieldcontain">
                <span id="lastPaymentAmount-label" class="property-label"><g:message code="MTeam.lastPaymentAmount.label" default="Last Payment Amount"/></span>

                <span class="property-value" aria-labelledby="lastPaymentAmount-label"><g:fieldValue bean="${MTeamInstance}" field="lastPaymentAmount"/></span>

            </li>
        </g:if>

        <g:if test="${MTeamInstance?.lastPaymentDate}">
            <li class="fieldcontain">
                <span id="lastPaymentDate-label" class="property-label"><g:message code="MTeam.lastPaymentDate.label" default="Last Payment Date"/></span>

                <span class="property-value" aria-labelledby="lastPaymentDate-label"><g:formatDate date="${MTeamInstance?.lastPaymentDate}"/></span>

            </li>
        </g:if>

        <g:if test="${MTeamInstance?.league}">
            <li class="fieldcontain">
                <span id="league-label" class="property-label"><g:message code="MTeam.league.label" default="League"/></span>

                <span class="property-value" aria-labelledby="league-label">
                    <td>${MTeamInstance.league.name}</td>
                </span>
            </li>
        </g:if>

        <g:if test="${MTeamInstance?.memberSince}">
            <li class="fieldcontain">
                <span id="memberSince-label" class="property-label"><g:message code="MTeam.memberSince.label" default="Member Since"/></span>

                <span class="property-value" aria-labelledby="memberSince-label"><g:formatDate date="${MTeamInstance?.memberSince}"/></span>

            </li>
        </g:if>

        <g:if test="${MTeamInstance?.sport}">
            <li class="fieldcontain">
                <span id="sport-label" class="property-label"><g:message code="MTeam.sport.label" default="Sport"/></span>

                <span class="property-value" aria-labelledby="sport-label">
                    <td>${MTeamInstance.sport.sportName}</td>
                </span>
            </li>
        </g:if>

        <g:if test="${MTeamInstance?.startDate}">
            <li class="fieldcontain">
                <span id="startDate-label" class="property-label"><g:message code="MTeam.startDate.label" default="Start Date"/></span>

                <span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${MTeamInstance?.startDate}"/></span>

            </li>
        </g:if>

        <g:if test="${MTeamInstance?.subscribed}">
            <li class="fieldcontain">
                <span id="subscribed-label" class="property-label"><g:message code="MTeam.subscribed.label" default="Subscribed"/></span>

                <span class="property-value" aria-labelledby="subscribed-label"><g:formatBoolean boolean="${MTeamInstance?.subscribed}"/></span>

            </li>
        </g:if>

        <g:if test="${MTeamInstance?.subscriptionCurrent}">
            <li class="fieldcontain">
                <span id="subscriptionCurrent-label" class="property-label"><g:message code="MTeam.subscriptionCurrent.label"
                                                                                       default="Subscription Current"/></span>

                <span class="property-value" aria-labelledby="subscriptionCurrent-label"><g:formatBoolean
                        boolean="${MTeamInstance?.subscriptionCurrent}"/></span>

            </li>
        </g:if>

        <g:if test="${MTeamInstance?.totalPayment}">
            <li class="fieldcontain">
                <span id="totalPayment-label" class="property-label"><g:message code="MTeam.totalPayment.label" default="Total Payment"/></span>

                <span class="property-value" aria-labelledby="totalPayment-label"><g:fieldValue bean="${MTeamInstance}" field="totalPayment"/></span>

            </li>
        </g:if>

        <g:if test="${MTeamInstance?.viceCaptainId}">
            <li class="fieldcontain">
                <span id="viceCaptainId-label" class="property-label"><g:message code="MTeam.viceCaptainId.label" default="Vice Captain Id"/></span>

                <span class="property-value" aria-labelledby="viceCaptainId-label"><g:fieldValue bean="${MTeamInstance}" field="viceCaptainId"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${MTeamInstance?.id}"/>
            <g:link class="edit" action="edit" id="${MTeamInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>

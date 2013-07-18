<%@ page import="com.maali.tournamentmanager.MInstitutionManagement" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'MInstitutionManagement.label', default: 'MInstitutionManagement')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-MInstitutionManagement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-MInstitutionManagement" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list MInstitutionManagement">

        <g:if test="${MInstitutionManagementInstance?.currentPosition}">
            <li class="fieldcontain">
                <span id="currentPosition-label" class="property-label"><g:message code="MInstitutionManagement.currentPosition.label"
                                                                                   default="Current Position"/></span>

                <span class="property-value" aria-labelledby="currentPosition-label"><g:formatBoolean
                        boolean="${MInstitutionManagementInstance?.currentPosition}"/></span>

            </li>
        </g:if>

        <g:if test="${MInstitutionManagementInstance?.endDate}">
            <li class="fieldcontain">
                <span id="endDate-label" class="property-label"><g:message code="MInstitutionManagement.endDate.label" default="End Date"/></span>

                <span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${MInstitutionManagementInstance?.endDate}"/></span>

            </li>
        </g:if>

        <g:if test="${MInstitutionManagementInstance?.institutionId}">
            <li class="fieldcontain">
                <span id="institutionId-label" class="property-label"><g:message code="MInstitutionManagement.institutionId.label"
                                                                                 default="Institution Id"/></span>

                <span class="property-value" aria-labelledby="institutionId-label">
                    %{--<g:link controller="user" action="show" id="${MInstitutionManagementInstance?.institutionId?.id}">${MInstitutionManagementInstance?.institutionId?.encodeAsHTML()}</g:link>--}%
                    <td>${MInstitutionManagementInstance.institutionId.emailAddress}</td>
                </span>

            </li>
        </g:if>

        <g:if test="${MInstitutionManagementInstance?.memberId}">
            <li class="fieldcontain">
                <span id="memberId-label" class="property-label"><g:message code="MInstitutionManagement.memberId.label" default="Member Id"/></span>

                <span class="property-value" aria-labelledby="memberId-label">
                    %{--<g:link controller="user" action="show" id="${MInstitutionManagementInstance?.memberId?.id}">${MInstitutionManagementInstance?.memberId?.encodeAsHTML()}</g:link>--}%
                    <td>${MInstitutionManagementInstance.memberId.emailAddress}</td>

                </span>

            </li>
        </g:if>

        <g:if test="${MInstitutionManagementInstance?.memberRole}">
            <li class="fieldcontain">
                <span id="memberRole-label" class="property-label"><g:message code="MInstitutionManagement.memberRole.label" default="Member Role"/></span>

                <span class="property-value" aria-labelledby="memberRole-label"><g:fieldValue bean="${MInstitutionManagementInstance}"
                                                                                              field="memberRole"/></span>

            </li>
        </g:if>

        <g:if test="${MInstitutionManagementInstance?.startDate}">
            <li class="fieldcontain">
                <span id="startDate-label" class="property-label"><g:message code="MInstitutionManagement.startDate.label" default="Start Date"/></span>

                <span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${MInstitutionManagementInstance?.startDate}"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${MInstitutionManagementInstance?.id}"/>
            <g:link class="edit" action="edit" id="${MInstitutionManagementInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>

<%@ page import="com.maali.tournamentmanager.Players" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'players.label', default: 'Players')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-players" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="list" controller="Players">Players</g:link></li>
        <li><g:link class="create">Matches</g:link></li>
        <li><g:link class="create">Schedule</g:link></li>
        <li><g:link class="create">Statistics</g:link></li>
        <li><g:link class="create">Blogs</g:link></li>
        <li><g:link class="create">Settings</g:link></li>
        <li><g:link class="create">ABC</g:link></li>
    </ul>
</div>

<div id="list-players" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="image" title="${message(code: 'players.image.label', default: 'Image')}"/>
            <g:sortableColumn property="name" title="${message(code: 'players.name.label', default: 'Name')}"/>
            <g:sortableColumn property="contactInfo" title="${message(code: 'players.contactInfo.label', default: 'Contact Info')}"/>
            <g:sortableColumn property="position" title="${message(code: 'players.position.label', default: 'Position')}"/>
            <g:sortableColumn property="manager" title="${message(code: 'players.manager.label', default: 'Manager')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${playersInstanceList}" status="i" var="playersInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td>N.A</td>
                <td>${playersInstance.firstName}&nbsp${playersInstance.lastName}</td>
                <td><g:link action="show"
                            id="${playersInstance.id}">${fieldValue(bean: playersInstance, field: "emailAddress")}</g:link>.&nbsp${playersInstance.label}</td>
                <td></td>
                <td><g:link class="edit" action="edit" id="${playersInstance?.id}"><g:message code="default.button.edit.label"
                                                                                              default="Edit"/></g:link>&nbsp &nbsp
                <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>

                </td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${playersInstanceTotal}"/>
    </div>
</div>
</body>
</html>

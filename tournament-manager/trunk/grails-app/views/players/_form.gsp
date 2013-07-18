<%@ page import="com.maali.tournamentmanager.Players" %>


<div class="fieldcontain ${hasErrors(bean: playersInstance, field: 'firstName', 'error')} ">
    <label for="firstName">
        <g:message code="players.firstName.label" default="First Name" />

    </label>
    <g:textField name="firstName" value="${playersInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playersInstance, field: 'lastName', 'error')} ">
    <label for="lastName">
        <g:message code="players.lastName.label" default="Last Name"/>

    </label>
    <g:textField name="lastName" value="${playersInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playersInstance, field: 'emailAddress', 'error')} ">
    <label for="emailAddress">
		<g:message code="players.emailAddress.label" default="Email Address" />

    </label>
    <g:textField name="emailAddress" value="${playersInstance?.emailAddress}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: playersInstance, field: 'label', 'error')} ">
    <label for="label">
		<g:message code="players.label.label" default="Label" />

    </label>
    <g:textField name="label" value="${playersInstance?.label}"/>
</div>



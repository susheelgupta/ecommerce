<%@ page import="com.maali.tournamentmanager.MUser" %>



<div class="fieldcontain ${hasErrors(bean: MUserInstance, field: 'emailAddress', 'error')} required">
    <label for="emailAddress">
        <g:message code="MUser.emailAddress.label" default="Email Address"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="email" name="emailAddress" required="" value="${MUserInstance?.emailAddress}" style="width: 250px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserInstance, field: 'password', 'error')} required">
    <label for="password">
        <g:message code="MUser.password.label" default="Password"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="password" required="" value="" style="width: 250px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserInstance, field: 'address', 'error')} ">
    <label for="address">
        <g:message code="MUser.address.label" default="Address"/>

    </label>
    <g:textArea cols="3" rows="25" name="address" value="${MUserInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserInstance, field: 'citizenship', 'error')} ">
    <label for="citizenship">
        <g:message code="MUser.citizenship.label" default="Citizenship"/>

    </label>
    <g:textField name="citizenship" value="${MUserInstance?.citizenship}" style="width: 250px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserInstance, field: 'countryOfBirth', 'error')} ">
    <label for="countryOfBirth">
        <g:message code="MUser.countryOfBirth.label" default="Country Of Birth"/>

    </label>
    <g:textField name="countryOfBirth" value="${MUserInstance?.countryOfBirth}" style="width: 250px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserInstance, field: 'dateOfBirth', 'error')} required">
    <label for="dateOfBirth">
        <g:message code="MUser.dateOfBirth.label" default="Date Of Birth"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="dateOfBirth" precision="day" value="${MUserInstance?.dateOfBirth}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserInstance, field: 'enabled', 'error')} ">
    <label for="enabled">
        <g:message code="MUser.enabled.label" default="Enabled"/>

    </label>
    <g:checkBox name="enabled" value="${MUserInstance?.enabled}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserInstance, field: 'firstName', 'error')} ">
    <label for="firstName">
        <g:message code="MUser.firstName.label" default="First Name"/>

    </label>
    <g:textField name="firstName" value="${MUserInstance?.firstName}" style="width: 250px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserInstance, field: 'middleName', 'error')} ">
    <label for="middleName">
        <g:message code="MUser.middleName.label" default="Middle Name"/>

    </label>
    <g:textField name="middleName" value="${MUserInstance?.middleName}" style="width: 250px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserInstance, field: 'lastName', 'error')} ">
    <label for="lastName">
        <g:message code="MUser.lastName.label" default="Last Name"/>

    </label>
    <g:textField name="lastName" value="${MUserInstance?.lastName}" style="width: 250px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserInstance, field: 'placeOfBirth', 'error')} ">
    <label for="placeOfBirth">
        <g:message code="MUser.placeOfBirth.label" default="Place Of Birth"/>

    </label>
    <g:textField name="placeOfBirth" value="${MUserInstance?.placeOfBirth}" style="width: 250px"/>
</div>


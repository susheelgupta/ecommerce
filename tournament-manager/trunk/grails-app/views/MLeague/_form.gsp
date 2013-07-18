<%@ page import="com.maali.tournamentmanager.MLeague" %>



<div class="fieldcontain ${hasErrors(bean: MLeagueInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="MLeague.name.label" default="Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="name" required="" value="${MLeagueInstance?.name}" style="width: 250px"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MLeagueInstance, field: 'address', 'error')} required">
    <label for="address">
        <g:message code="MLeague.address.label" default="Address"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea cols="3" rows="25" name="address" required="" value="${MLeagueInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MLeagueInstance, field: 'email', 'error')} required">
    <label for="email">
        <g:message code="MLeague.email.label" default="Email"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="email" name="email" required="" value="${MLeagueInstance?.email}" style="width: 250px"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MLeagueInstance, field: 'additionalEmail', 'error')} required">
    <label for="additionalEmail">
        <g:message code="MLeague.additionalEmail.label" default="Additional Email" />
        <span class="required-indicator">*</span>
    </label>
    <g:field type="email" name="additionalEmail" required="" value="${MLeagueInstance?.additionalEmail}" style="width: 250px"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MLeagueInstance, field: 'phoneNo', 'error')} ">
    <label for="phoneNo">
        <g:message code="MLeague.phoneNo.label" default="Phone No"/>

    </label>
    <g:textField name="phoneNo" maxlength="12" value="${MLeagueInstance?.phoneNo}" style="width: 250px"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MLeagueInstance, field: 'phoneExt', 'error')} ">
    <label for="phoneExt">
        <g:message code="MLeague.phoneExt.label" default="Phone Ext"/>

    </label>
    <g:textField name="phoneExt" maxlength="12" value="${MLeagueInstance?.phoneExt}" style="width: 250px"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MLeagueInstance, field: 'sport', 'error')} required">
    <label for="sport">
        <g:message code="MLeague.sport.label" default="Sport"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="sport" name="sport.id" from="${com.maali.tournamentmanager.MSport.list()}" optionKey="id" required="" value="${MLeagueInstance?.sport?.id}"
            optionValue="sportName"  class="many-to-one" style="width: 200px" style="width: 268px"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MLeagueInstance, field: 'yearOfFormation', 'error')} required">
    <label for="yearOfFormation">
        <g:message code="MLeague.yearOfFormation.label" default="Year Of Formation"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="yearOfFormation" precision="day" value="${MLeagueInstance?.yearOfFormation}"/>
</div>


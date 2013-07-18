<%@ page import="com.maali.tournamentmanager.MTournament" %>

<div class="fieldcontain ${hasErrors(bean: MTournamentInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="MInstitution.name.label" default="Name"/>

    </label>
    <g:textField name="name" value="${MTournamentInstance?.name}" style="width: 250px"/>
</div>


<div class="fieldcontain ${hasErrors(bean: MTournamentInstance, field: 'institution', 'error')} required">
    <label for="institution">
        <g:message code="MTournament.institution.label" default="Institution"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="institution" name="institution.id" from="${com.maali.tournamentmanager.MInstitution.list()}" optionKey="id" required=""
              optionValue="name" value="${MTournamentInstance?.institution?.id}" class="many-to-one" style="width: 268px"
              noSelection="${['':'---Please Select---']}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTournamentInstance, field: 'league', 'error')} required">
    <label for="league">
        <g:message code="MTournament.league.label" default="League"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="league" name="league.id" from="${com.maali.tournamentmanager.MLeague.list()}" optionKey="id" required=""
              optionValue="name" value="${MTournamentInstance?.league?.id}" class="many-to-one" noSelection="${['':'---Please Select---']}"
              style="width: 268px "/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTournamentInstance, field: 'startDate', 'error')} required">
    <label for="startDate">
        <g:message code="MTournament.startDate.label" default="Start Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="startDate" precision="day" value="${MTournamentInstance?.startDate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTournamentInstance, field: 'endDate', 'error')} required">
    <label for="endDate">
        <g:message code="MTournament.endDate.label" default="End Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="endDate" precision="day" value="${MTournamentInstance?.endDate}"/>
</div>

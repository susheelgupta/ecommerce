<%@ page import="com.maali.tournamentmanager.MMatch" %>



<div class="fieldcontain ${hasErrors(bean: MMatchInstance, field: 'winner', 'error')} required">
    <label for="winner">
        <g:message code="MMatch.winner.label" default="Winner"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="winner" required="" value="${MMatchInstance?.winner}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MMatchInstance, field: 'looser', 'error')} required">
    <label for="looser">
        <g:message code="MMatch.looser.label" default="Looser"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="looser" required="" value="${MMatchInstance?.looser}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MMatchInstance, field: 'matchCol', 'error')} required">
    <label for="matchCol">
        <g:message code="MMatch.matchCol.label" default="Match Col"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="matchCol" required="" value="${MMatchInstance?.matchCol}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MMatchInstance, field: 'institution', 'error')} required">
    <label for="institution">
        <g:message code="MMatch.institution.label" default="Institution"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="institution" name="institution.id" from="${com.maali.tournamentmanager.MInstitution.list()}" optionKey="id" required=""
              optionValue="name" value="${MMatchInstance?.institution?.id}" class="many-to-one" style="width: 200px"
              noSelection="${['':'---Please Select---']}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MMatchInstance, field: 'league', 'error')} required">
    <label for="league">
        <g:message code="MMatch.league.label" default="League"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="league" name="league.id" from="${com.maali.tournamentmanager.MLeague.list()}" optionKey="id" required="" value="${MMatchInstance?.league?.id}"
              optionValue="name" class="many-to-one" style="width: 200px" noSelection="${['':'---Please Select---']}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MMatchInstance, field: 'locationId', 'error')} required">
    <label for="locationId">
        <g:message code="MMatch.locationId.label" default="Location Id"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="locationId" required="" value="${fieldValue(bean: MMatchInstance, field: 'locationId')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MMatchInstance, field: 'matchDate', 'error')} required">
    <label for="matchDate">
        <g:message code="MMatch.matchDate.label" default="Match Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="matchDate" precision="day" value="${MMatchInstance?.matchDate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MMatchInstance, field: 'sport', 'error')} required">
    <label for="sport">
        <g:message code="MMatch.sport.label" default="Sport"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="sport" name="sport.id" from="${com.maali.tournamentmanager.MSport.list()}" optionKey="id" required="" value="${MMatchInstance?.sport?.id}"
              optionValue="sportName" class="many-to-one" style="width: 200px" noSelection="${['':'---Please Select---']}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MMatchInstance, field: 'teamId1', 'error')} required">
    <label for="teamId1">
        <g:message code="MMatch.teamId1.label" default="Team Id1"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="teamId1" name="teamId1.id" from="${com.maali.tournamentmanager.MTeam.list()}" optionKey="id" required=""
              optionValue="name" value="${MMatchInstance?.teamId1?.id}" class="many-to-one" style="width: 200px" noSelection="${['':'---Please Select---']}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MMatchInstance, field: 'teamId2', 'error')} required">
    <label for="teamId2">
        <g:message code="MMatch.teamId2.label" default="Team Id2"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="teamId2" name="teamId2.id" from="${com.maali.tournamentmanager.MTeam.list()}" optionKey="id" required=""
              optionValue="name" value="${MMatchInstance?.teamId2?.id}" class="many-to-one" style="width: 200px" noSelection="${['':'---Please Select---']}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MMatchInstance, field: 'tournament', 'error')} required">
    <label for="tournament">
        <g:message code="MMatch.tournament.label" default="Tournament"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="tournament" name="tournament.id" from="${com.maali.tournamentmanager.MTournament.list()}" optionKey="id" required=""
              optionValue="name" value="${MMatchInstance?.tournament?.id}" class="many-to-one" style="width: 200px"
              noSelection="${['':'---Please Select---']}"/>
</div>


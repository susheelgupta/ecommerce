<%@ page import="com.maali.tournamentmanager.MTournamentParticipant" %>



<div class="fieldcontain ${hasErrors(bean: MTournamentParticipantInstance, field: 'teamId', 'error')} required">
	<label for="teamId">
		<g:message code="MTournamentParticipant.teamId.label" default="Team Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="teamId" required="" value="${fieldValue(bean: MTournamentParticipantInstance, field: 'teamId')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTournamentParticipantInstance, field: 'tournamentId', 'error')} required">
	<label for="tournamentId">
		<g:message code="MTournamentParticipant.tournamentId.label" default="Tournament Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="tournamentId" required="" value="${fieldValue(bean: MTournamentParticipantInstance, field: 'tournamentId')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTournamentParticipantInstance, field: 'tournamentSeed', 'error')} required">
	<label for="tournamentSeed">
		<g:message code="MTournamentParticipant.tournamentSeed.label" default="Tournament Seed" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="tournamentSeed" required="" value="${fieldValue(bean: MTournamentParticipantInstance, field: 'tournamentSeed')}"/>
</div>


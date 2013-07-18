<%@ page import="com.maali.tournamentmanager.MTournamentResult" %>



<div class="fieldcontain ${hasErrors(bean: MTournamentResultInstance, field: 'round', 'error')} required">
	<label for="round">
		<g:message code="MTournamentResult.round.label" default="Round" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="round" required="" value="${MTournamentResultInstance?.round}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTournamentResultInstance, field: 'winner', 'error')} required">
	<label for="winner">
		<g:message code="MTournamentResult.winner.label" default="Winner" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="winner" required="" value="${MTournamentResultInstance?.winner}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTournamentResultInstance, field: 'looser', 'error')} required">
	<label for="looser">
		<g:message code="MTournamentResult.looser.label" default="Looser" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="looser" required="" value="${MTournamentResultInstance?.looser}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTournamentResultInstance, field: 'score', 'error')} required">
	<label for="score">
		<g:message code="MTournamentResult.score.label" default="Score" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="score" required="" value="${MTournamentResultInstance?.score}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTournamentResultInstance, field: 'matchId', 'error')} required">
	<label for="matchId">
		<g:message code="MTournamentResult.matchId.label" default="Match Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="matchId" required="" value="${fieldValue(bean: MTournamentResultInstance, field: 'matchId')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTournamentResultInstance, field: 'teamId1', 'error')} required">
	<label for="teamId1">
		<g:message code="MTournamentResult.teamId1.label" default="Team Id1" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="teamId1" required="" value="${fieldValue(bean: MTournamentResultInstance, field: 'teamId1')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTournamentResultInstance, field: 'teamId2', 'error')} required">
	<label for="teamId2">
		<g:message code="MTournamentResult.teamId2.label" default="Team Id2" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="teamId2" required="" value="${fieldValue(bean: MTournamentResultInstance, field: 'teamId2')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTournamentResultInstance, field: 'userId1', 'error')} required">
	<label for="userId1">
		<g:message code="MTournamentResult.userId1.label" default="User Id1" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="userId1" required="" value="${fieldValue(bean: MTournamentResultInstance, field: 'userId1')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTournamentResultInstance, field: 'userId2', 'error')} required">
	<label for="userId2">
		<g:message code="MTournamentResult.userId2.label" default="User Id2" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="userId2" required="" value="${fieldValue(bean: MTournamentResultInstance, field: 'userId2')}"/>
</div>


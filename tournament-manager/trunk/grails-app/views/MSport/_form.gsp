<%@ page import="com.maali.tournamentmanager.MSport" %>



<div class="fieldcontain ${hasErrors(bean: MSportInstance, field: 'indoor', 'error')} ">
	<label for="indoor">
		<g:message code="MSport.indoor.label" default="Indoor" />
		
	</label>
	<g:checkBox name="indoor" value="${MSportInstance?.indoor}" />
</div>

<div class="fieldcontain ${hasErrors(bean: MSportInstance, field: 'numberPlayersPerTeam', 'error')} required">
	<label for="numberPlayersPerTeam">
		<g:message code="MSport.numberPlayersPerTeam.label" default="Number Players Per Team" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="numberPlayersPerTeam" required="" value="${fieldValue(bean: MSportInstance, field: 'numberPlayersPerTeam')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MSportInstance, field: 'numberTeamsPerGame', 'error')} required">
	<label for="numberTeamsPerGame">
		<g:message code="MSport.numberTeamsPerGame.label" default="Number Teams Per Game" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="numberTeamsPerGame" required="" value="${fieldValue(bean: MSportInstance, field: 'numberTeamsPerGame')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MSportInstance, field: 'sportName', 'error')} ">
	<label for="sportName">
		<g:message code="MSport.sportName.label" default="Sport Name" />
		
	</label>
	<g:textField name="sportName" value="${MSportInstance?.sportName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MSportInstance, field: 'sportType', 'error')} ">
	<label for="sportType">
		<g:message code="MSport.sportType.label" default="Sport Type" />
		
	</label>
	<g:checkBox name="sportType" value="${MSportInstance?.sportType}" />
</div>


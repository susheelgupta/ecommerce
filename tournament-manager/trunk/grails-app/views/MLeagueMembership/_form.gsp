<%@ page import="com.maali.tournamentmanager.MLeagueMembership" %>



<div class="fieldcontain ${hasErrors(bean: MLeagueMembershipInstance, field: 'leagueMembershipCol', 'error')} required">
	<label for="leagueMembershipCol">
		<g:message code="MLeagueMembership.leagueMembershipCol.label" default="League Membership Col" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="leagueMembershipCol" required="" value="${MLeagueMembershipInstance?.leagueMembershipCol}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MLeagueMembershipInstance, field: 'leagueId', 'error')} required">
	<label for="leagueId">
		<g:message code="MLeagueMembership.leagueId.label" default="League Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="leagueId" required="" value="${fieldValue(bean: MLeagueMembershipInstance, field: 'leagueId')}"/>
</div>


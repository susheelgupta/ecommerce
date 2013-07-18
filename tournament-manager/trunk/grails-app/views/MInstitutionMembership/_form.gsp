<%@ page import="com.maali.tournamentmanager.MInstitutionMembership" %>



<div class="fieldcontain ${hasErrors(bean: MInstitutionMembershipInstance, field: 'institutionId', 'error')} required">
	<label for="institutionId">
		<g:message code="MInstitutionMembership.institutionId.label" default="Institution Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="institutionId" name="institutionId.id" from="${com.maali.tournamentmanager.User.list()}" optionKey="id" required="" value="${MInstitutionMembershipInstance?.institutionId?.id}" class="many-to-one"/>
</div>


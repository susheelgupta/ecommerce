<%@ page import="com.maali.tournamentmanager.MInstitutionManagement" %>



<div class="fieldcontain ${hasErrors(bean: MInstitutionManagementInstance, field: 'currentPosition', 'error')} ">
	<label for="currentPosition">
		<g:message code="MInstitutionManagement.currentPosition.label" default="Current Position" />
		
	</label>
	<g:checkBox name="currentPosition" value="${MInstitutionManagementInstance?.currentPosition}" />
</div>

<div class="fieldcontain ${hasErrors(bean: MInstitutionManagementInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="MInstitutionManagement.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${MInstitutionManagementInstance?.endDate}"  />
</div>

%{--<div class="fieldcontain ${hasErrors(bean: MInstitutionManagementInstance, field: 'institutionId', 'error')} required">--}%
	%{--<label for="institutionId">--}%
		%{--<g:message code="MInstitutionManagement.institutionId.label" default="Institution Id" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select id="institutionId" name="institutionId.id" from="${com.maali.tournamentmanager.User.list()}" optionKey="id" required="" value="${MInstitutionManagementInstance?.institutionId?.id}" class="many-to-one"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: MInstitutionManagementInstance, field: 'memberId', 'error')} required">--}%
	%{--<label for="memberId">--}%
		%{--<g:message code="MInstitutionManagement.memberId.label" default="Member Id" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select id="memberId" name="memberId.id" from="${com.maali.tournamentmanager.User.list()}" optionKey="id" required="" value="${MInstitutionManagementInstance?.memberId?.id}" class="many-to-one"/>--}%
%{--</div>--}%

<div class="fieldcontain ${hasErrors(bean: MInstitutionManagementInstance, field: 'memberRole', 'error')} ">
	<label for="memberRole">
		<g:message code="MInstitutionManagement.memberRole.label" default="Member Role" />
		
	</label>
	<g:textField name="memberRole" value="${MInstitutionManagementInstance?.memberRole}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MInstitutionManagementInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="MInstitutionManagement.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${MInstitutionManagementInstance?.startDate}"  />
</div>


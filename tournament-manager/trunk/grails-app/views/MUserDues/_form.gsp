<%@ page import="com.maali.tournamentmanager.MUserDues" %>



<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'institutionCurrency', 'error')} ">
	<label for="institutionCurrency">
		<g:message code="MUserDues.institutionCurrency.label" default="Institution Currency" />
		
	</label>
	<g:textField name="institutionCurrency" value="${MUserDuesInstance?.institutionCurrency}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'institutionDueDate', 'error')} required">
	<label for="institutionDueDate">
		<g:message code="MUserDues.institutionDueDate.label" default="Institution Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="institutionDueDate" precision="day"  value="${MUserDuesInstance?.institutionDueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'institutionDues', 'error')} required">
	<label for="institutionDues">
		<g:message code="MUserDues.institutionDues.label" default="Institution Dues" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="institutionDues" required="" value="${fieldValue(bean: MUserDuesInstance, field: 'institutionDues')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'institutionDuesPaid', 'error')} ">
	<label for="institutionDuesPaid">
		<g:message code="MUserDues.institutionDuesPaid.label" default="Institution Dues Paid" />
		
	</label>
	<g:checkBox name="institutionDuesPaid" value="${MUserDuesInstance?.institutionDuesPaid}" />
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'institutionDuesPaidDate', 'error')} required">
	<label for="institutionDuesPaidDate">
		<g:message code="MUserDues.institutionDuesPaidDate.label" default="Institution Dues Paid Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="institutionDuesPaidDate" precision="day"  value="${MUserDuesInstance?.institutionDuesPaidDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'institutionId', 'error')} required">
	<label for="institutionId">
		<g:message code="MUserDues.institutionId.label" default="Institution Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="institutionId" required="" value="${fieldValue(bean: MUserDuesInstance, field: 'institutionId')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'leagueDueDate', 'error')} required">
	<label for="leagueDueDate">
		<g:message code="MUserDues.leagueDueDate.label" default="League Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="leagueDueDate" precision="day"  value="${MUserDuesInstance?.leagueDueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'leagueDues', 'error')} required">
	<label for="leagueDues">
		<g:message code="MUserDues.leagueDues.label" default="League Dues" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="leagueDues" required="" value="${fieldValue(bean: MUserDuesInstance, field: 'leagueDues')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'leagueDuesCurrency', 'error')} ">
	<label for="leagueDuesCurrency">
		<g:message code="MUserDues.leagueDuesCurrency.label" default="League Dues Currency" />
		
	</label>
	<g:textField name="leagueDuesCurrency" value="${MUserDuesInstance?.leagueDuesCurrency}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'leagueId', 'error')} required">
	<label for="leagueId">
		<g:message code="MUserDues.leagueId.label" default="League Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="leagueId" required="" value="${fieldValue(bean: MUserDuesInstance, field: 'leagueId')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'leaugeDuesPaid', 'error')} ">
	<label for="leaugeDuesPaid">
		<g:message code="MUserDues.leaugeDuesPaid.label" default="Leauge Dues Paid" />
		
	</label>
	<g:checkBox name="leaugeDuesPaid" value="${MUserDuesInstance?.leaugeDuesPaid}" />
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'leaugeDuesPaidDate', 'error')} required">
	<label for="leaugeDuesPaidDate">
		<g:message code="MUserDues.leaugeDuesPaidDate.label" default="Leauge Dues Paid Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="leaugeDuesPaidDate" precision="day"  value="${MUserDuesInstance?.leaugeDuesPaidDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'paymentHistoryId', 'error')} required">
	<label for="paymentHistoryId">
		<g:message code="MUserDues.paymentHistoryId.label" default="Payment History Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="paymentHistoryId" required="" value="${fieldValue(bean: MUserDuesInstance, field: 'paymentHistoryId')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'teamDueDate', 'error')} required">
	<label for="teamDueDate">
		<g:message code="MUserDues.teamDueDate.label" default="Team Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="teamDueDate" precision="day"  value="${MUserDuesInstance?.teamDueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'teamDues', 'error')} required">
	<label for="teamDues">
		<g:message code="MUserDues.teamDues.label" default="Team Dues" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="teamDues" required="" value="${fieldValue(bean: MUserDuesInstance, field: 'teamDues')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'teamDuesCurrency', 'error')} ">
	<label for="teamDuesCurrency">
		<g:message code="MUserDues.teamDuesCurrency.label" default="Team Dues Currency" />
		
	</label>
	<g:textField name="teamDuesCurrency" value="${MUserDuesInstance?.teamDuesCurrency}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'teamDuesPaid', 'error')} ">
	<label for="teamDuesPaid">
		<g:message code="MUserDues.teamDuesPaid.label" default="Team Dues Paid" />
		
	</label>
	<g:checkBox name="teamDuesPaid" value="${MUserDuesInstance?.teamDuesPaid}" />
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'teamDuesPaidDate', 'error')} required">
	<label for="teamDuesPaidDate">
		<g:message code="MUserDues.teamDuesPaidDate.label" default="Team Dues Paid Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="teamDuesPaidDate" precision="day"  value="${MUserDuesInstance?.teamDuesPaidDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'teamId', 'error')} required">
	<label for="teamId">
		<g:message code="MUserDues.teamId.label" default="Team Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="teamId" required="" value="${fieldValue(bean: MUserDuesInstance, field: 'teamId')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'tournamentDues', 'error')} required">
	<label for="tournamentDues">
		<g:message code="MUserDues.tournamentDues.label" default="Tournament Dues" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="tournamentDues" required="" value="${fieldValue(bean: MUserDuesInstance, field: 'tournamentDues')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'tournamentDuesCurrency', 'error')} required">
	<label for="tournamentDuesCurrency">
		<g:message code="MUserDues.tournamentDuesCurrency.label" default="Tournament Dues Currency" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="tournamentDuesCurrency" required="" value="${fieldValue(bean: MUserDuesInstance, field: 'tournamentDuesCurrency')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'tournamentDuesDate', 'error')} required">
	<label for="tournamentDuesDate">
		<g:message code="MUserDues.tournamentDuesDate.label" default="Tournament Dues Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="tournamentDuesDate" precision="day"  value="${MUserDuesInstance?.tournamentDuesDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'tournamentDuesPaid', 'error')} ">
	<label for="tournamentDuesPaid">
		<g:message code="MUserDues.tournamentDuesPaid.label" default="Tournament Dues Paid" />
		
	</label>
	<g:checkBox name="tournamentDuesPaid" value="${MUserDuesInstance?.tournamentDuesPaid}" />
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'tournamentDuesPaidDate', 'error')} required">
	<label for="tournamentDuesPaidDate">
		<g:message code="MUserDues.tournamentDuesPaidDate.label" default="Tournament Dues Paid Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="tournamentDuesPaidDate" precision="day"  value="${MUserDuesInstance?.tournamentDuesPaidDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'tournamentId', 'error')} required">
	<label for="tournamentId">
		<g:message code="MUserDues.tournamentId.label" default="Tournament Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="tournamentId" required="" value="${fieldValue(bean: MUserDuesInstance, field: 'tournamentId')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'userDuesCol', 'error')} ">
	<label for="userDuesCol">
		<g:message code="MUserDues.userDuesCol.label" default="User Dues Col" />
		
	</label>
	<g:textField name="userDuesCol" value="${MUserDuesInstance?.userDuesCol}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MUserDuesInstance, field: 'userId', 'error')} required">
	<label for="userId">
		<g:message code="MUserDues.userId.label" default="User Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="userId" required="" value="${fieldValue(bean: MUserDuesInstance, field: 'userId')}"/>
</div>


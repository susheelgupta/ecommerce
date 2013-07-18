<%@ page import="com.maali.tournamentmanager.MPaymentHistory" %>



<div class="fieldcontain ${hasErrors(bean: MPaymentHistoryInstance, field: 'lastPaid', 'error')} required">
	<label for="lastPaid">
		<g:message code="MPaymentHistory.lastPaid.label" default="Last Paid" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastPaid" precision="day"  value="${MPaymentHistoryInstance?.lastPaid}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: MPaymentHistoryInstance, field: 'nextPaymentDate', 'error')} required">
	<label for="nextPaymentDate">
		<g:message code="MPaymentHistory.nextPaymentDate.label" default="Next Payment Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="nextPaymentDate" precision="day"  value="${MPaymentHistoryInstance?.nextPaymentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: MPaymentHistoryInstance, field: 'paymentAmount', 'error')} required">
	<label for="paymentAmount">
		<g:message code="MPaymentHistory.paymentAmount.label" default="Payment Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="paymentAmount" required="" value="${fieldValue(bean: MPaymentHistoryInstance, field: 'paymentAmount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MPaymentHistoryInstance, field: 'paymentDate', 'error')} required">
	<label for="paymentDate">
		<g:message code="MPaymentHistory.paymentDate.label" default="Payment Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="paymentDate" precision="day"  value="${MPaymentHistoryInstance?.paymentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: MPaymentHistoryInstance, field: 'paymentDue', 'error')} ">
	<label for="paymentDue">
		<g:message code="MPaymentHistory.paymentDue.label" default="Payment Due" />
		
	</label>
	<g:checkBox name="paymentDue" value="${MPaymentHistoryInstance?.paymentDue}" />
</div>

<div class="fieldcontain ${hasErrors(bean: MPaymentHistoryInstance, field: 'userId', 'error')} required">
	<label for="userId">
		<g:message code="MPaymentHistory.userId.label" default="User Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="userId" required="" value="${fieldValue(bean: MPaymentHistoryInstance, field: 'userId')}"/>
</div>


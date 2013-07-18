<%@ page import="com.maali.tournamentmanager.MTeam" %>



<div class="fieldcontain ${hasErrors(bean: MTeamInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="MTeam.name.label" default="Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="name" required="" value="${MTeamInstance?.name}" style="width: 250px"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTeamInstance, field: 'address', 'error')} required">
    <label for="address">
        <g:message code="MTeam.address.label" default="Address"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textArea rows="25" cols="3" name="address" required="" value="${MTeamInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTeamInstance, field: 'captainId', 'error')} required">
    <label for="captainId">
        <g:message code="MTeam.captainId.label" default="Captain Id"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="captainId" required="" value="${fieldValue(bean: MTeamInstance, field: 'captainId')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTeamInstance, field: 'lastPaymentAmount', 'error')} required">
    <label for="lastPaymentAmount">
        <g:message code="MTeam.lastPaymentAmount.label" default="Last Payment Amount"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="lastPaymentAmount" required="" value="${fieldValue(bean: MTeamInstance, field: 'lastPaymentAmount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTeamInstance, field: 'lastPaymentDate', 'error')} required">
    <label for="lastPaymentDate">
        <g:message code="MTeam.lastPaymentDate.label" default="Last Payment Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="lastPaymentDate" precision="day" value="${MTeamInstance?.lastPaymentDate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTeamInstance, field: 'league', 'error')} required">
    <label for="league">
        <g:message code="MTeam.league.label" default="League"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="league" name="league.id" from="${com.maali.tournamentmanager.MLeague.list()}" optionKey="id" required="" value="${MTeamInstance?.league?.id}"
              optionValue="name" class="many-to-one" style="width: 200px"noSelection="${['':'---Please Select---']}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTeamInstance, field: 'memberSince', 'error')} required">
    <label for="memberSince">
        <g:message code="MTeam.memberSince.label" default="Member Since"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="memberSince" precision="day" value="${MTeamInstance?.memberSince}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTeamInstance, field: 'sport', 'error')} required">
    <label for="sport">
        <g:message code="MTeam.sport.label" default="Sport"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="sport" name="sport.id" from="${com.maali.tournamentmanager.MSport.list()}" optionKey="id" required="" value="${MTeamInstance?.sport?.id}"
              optionValue="sportName" class="many-to-one" style="width: 200px" noSelection="${['':'---Please Select---']}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTeamInstance, field: 'startDate', 'error')} required">
    <label for="startDate">
        <g:message code="MTeam.startDate.label" default="Start Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="startDate" precision="day" value="${MTeamInstance?.startDate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTeamInstance, field: 'subscribed', 'error')} ">
    <label for="subscribed">
        <g:message code="MTeam.subscribed.label" default="Subscribed"/>

    </label>
    <g:checkBox name="subscribed" value="${MTeamInstance?.subscribed}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTeamInstance, field: 'subscriptionCurrent', 'error')} ">
    <label for="subscriptionCurrent">
        <g:message code="MTeam.subscriptionCurrent.label" default="Subscription Current"/>

    </label>
    <g:checkBox name="subscriptionCurrent" value="${MTeamInstance?.subscriptionCurrent}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTeamInstance, field: 'totalPayment', 'error')} required">
    <label for="totalPayment">
        <g:message code="MTeam.totalPayment.label" default="Total Payment"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="totalPayment" required="" value="${fieldValue(bean: MTeamInstance, field: 'totalPayment')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: MTeamInstance, field: 'viceCaptainId', 'error')} required">
    <label for="viceCaptainId">
        <g:message code="MTeam.viceCaptainId.label" default="Vice Captain Id"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="viceCaptainId" required="" value="${fieldValue(bean: MTeamInstance, field: 'viceCaptainId')}"/>
</div>


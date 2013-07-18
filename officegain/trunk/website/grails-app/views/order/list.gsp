
<%@ page import="com.officegain.enigma.base.Order" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'order.label', default: 'Order')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-order" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-order" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="billingAddressFormatId" title="${message(code: 'order.billingAddressFormatId.label', default: 'Billing Address Format Id')}" />
					
						<g:sortableColumn property="billingCity" title="${message(code: 'order.billingCity.label', default: 'Billing City')}" />
					
						<g:sortableColumn property="billingCompany" title="${message(code: 'order.billingCompany.label', default: 'Billing Company')}" />
					
						<g:sortableColumn property="billingCountry" title="${message(code: 'order.billingCountry.label', default: 'Billing Country')}" />
					
						<g:sortableColumn property="billingName" title="${message(code: 'order.billingName.label', default: 'Billing Name')}" />
					
						<g:sortableColumn property="billingPostalcode" title="${message(code: 'order.billingPostalcode.label', default: 'Billing Postalcode')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${orderInstanceList}" status="i" var="orderInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${orderInstance.id}">${fieldValue(bean: orderInstance, field: "billingAddressFormatId")}</g:link></td>
					
						<td>${fieldValue(bean: orderInstance, field: "billingCity")}</td>
					
						<td>${fieldValue(bean: orderInstance, field: "billingCompany")}</td>
					
						<td>${fieldValue(bean: orderInstance, field: "billingCountry")}</td>
					
						<td>${fieldValue(bean: orderInstance, field: "billingName")}</td>
					
						<td>${fieldValue(bean: orderInstance, field: "billingPostalcode")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${orderInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

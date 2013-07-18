<%@ page import="com.officegain.enigma.base.Country" contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/zone">Zones</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'country.png')}" title="Zones"
                     onclick="location = '${request.contextPath}/zone'"/> Zones</h1>

            <div class="buttons">
                <a class="button" onclick="$('#updateForm').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/zone'">Cancel</a></div>
        </div>

        <div class="content">
            <g:form name="updateForm" method="post" action="update" controller="zone">
                <g:hiddenField name="id" id="id" value="${zoneInstance.id}"/>

                <div id="tab-general">
                    <table class="form">
                        <tr>
                            <td><span class="required">*</span> Zone Name:</td>
                            <td><input type="text" value="${zoneInstance?.name}" name="name"></td>
                        </tr>
                        <tr>
                            <td>Zone Code:</td>
                            <td><input type="text" value="${zoneInstance?.code}" name="code"></td>
                        </tr>
                        <tr>
                            <td>Country:</td>
                            <td>
                                <g:select name="countryId" from="${Country.list()}" value="${zoneInstance?.countryId}"
                                          optionKey="id" optionValue="name"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Zone Status:</td>
                            <td>
                                <g:if test="${zoneInstance?.status}">
                                    <select name="status">
                                        <option value="1" selected>Enabled</option>
                                        <option value="0">Disabled</option>
                                    </select>
                                </g:if>
                                <g:else>
                                    <select name="status">
                                        <option value="1">Enabled</option>
                                        <option value="0" selected>Disabled</option>
                                    </select>
                                </g:else>
                            </td>
                        </tr>
                    </table>
                </div>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>
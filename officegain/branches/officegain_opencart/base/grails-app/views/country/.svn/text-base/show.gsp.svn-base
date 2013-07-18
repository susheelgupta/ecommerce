<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/country">Country</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'country.png')}" title="Country"
                     onclick="location = '${request.contextPath}/country'"/> Country</h1>

            <div class="buttons">
                <a class="button" onclick="$('#updateForm').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/country'">Cancel</a></div>
        </div>

        <div class="content">
            <g:form name="updateForm" method="post" action="update" controller="country">
                <g:hiddenField name="id" id="id" value="${countryInstance.id}"/>
                <div id="tab-general">
                    <table class="form">
                        <tr>
                            <td><span class="required">*</span> Country Name:</td>
                            <td><input type="text" value="${countryInstance?.name}" name="name"></td>
                        </tr>
                        <tr>
                            <td>ISO Code (2):</td>
                            <td><input type="text" value="${countryInstance?.isoCode2}" name="isoCode2"></td>
                        </tr>
                        <tr>
                            <td>ISO Code (3):</td>
                            <td><input type="text" value="${countryInstance?.isoCode3}" name="isoCode3"></td>
                        </tr>
                        <tr>
                            <td>Address Format:<br><span class="help">
                                First Name = {firstname}<br>
                                Last Name = {lastname}<br>
                                Company = {company}<br>
                                Address 1 = {address_1}<br>
                                Address 2 = {address_2}<br>
                                City = {city}<br>
                                Postcode = {postcode}<br>
                                Zone = {zone}<br>
                                Zone Code = {zone_code}<br>
                                Country = {country}</span></td>
                            <td><g:textArea rows="5" cols="40" value="${countryInstance?.addressFormat}"
                                            name="addressFormat"/></td>
                        </tr>
                        <tr>
                            <td>Postcode Required:</td>
                            <td>
                                <g:if test="${countryInstance?.postcodeRequired}">
                                    <input type="radio" value="1" checked="checked" name="postcodeRequired"> Yes
                                    <input type="radio" value="0" name="postcodeRequired"> No
                                </g:if>
                                <g:else>
                                    <input type="radio" value="1" name="postcodeRequired"> Yes
                                    <input type="radio" value="0" checked="checked" name="postcodeRequired"> No
                                </g:else>
                            </td>
                        </tr>
                        <tr>
                            <td>Status:</td>
                            <td>
                                <g:if test="${countryInstance?.status}">
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
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
                <a class="button" onclick="$('#form').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/zone'">Cancel</a></div>
        </div>

        <div class="content">
            <form id="form" method="post" action="save">
                <div id="tab-general">
                    <table class="form">
                        <tr>
                            <td><span class="required">*</span> Zone Name:</td>
                            <td><input type="text" value="" name="name"></td>
                        </tr>
                        <tr>
                            <td>Zone Code:</td>
                            <td><input type="text" value="" name="code"></td>
                        </tr>
                        <tr>
                            <td>Country:</td>
                            <td>
                                <select name="countryId">
                                    <g:each in="${Country.list()}" var="country">
                                        <option value="${country.id}">${country.name}</option>
                                    </g:each>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Zone Status:</td>
                            <td>
                                <select name="status">
                                    <option selected="selected" value="1">Enabled</option>
                                    <option value="0">Disabled</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
<%@ page import="com.officegain.enigma.base.Country" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'country.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/country">Country</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'shipping.png')}" title="Country"
                     onclick="location = '${request.contextPath}/country'"/> Country</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/country/create'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" method="post" action="${request.contextPath}/country/delete" name="countryForm">
                <g:hiddenField name="countryIds" id="countryIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'countryId\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">Country Name</td>
                        <td class="left">ISO Code (2)</td>
                        <td class="left">ISO Code (3)</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <g:each in="${Country.list()}" status="i" var="countryInstance">
                        <tr>
                            <td width="1" style="text-align: center;">
                                <input type="checkbox" value="${fieldValue(bean: countryInstance, field: "id")}"
                                       name="countryId" class="check"/></td>
                            <td>${fieldValue(bean: countryInstance, field: "name")}</td>
                            <td>${fieldValue(bean: countryInstance, field: "isoCode2")}</td>
                            <td>${fieldValue(bean: countryInstance, field: "isoCode3")}</td>
                            <td class="right"><a
                                    href="${request.contextPath}/country/show/${countryInstance.id}">[Edit]</a>
                            </td>
                        </tr>
                    </g:each>
                </table>
            </form>
        </div>
    </div>
</div>
</body>
</html>

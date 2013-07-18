<%@ page import="com.officegain.enigma.base.Country; com.officegain.enigma.base.Zone" %>
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
            <h1><img src="${resource(dir: 'images', file: 'country.png')}" title="Zone"
                     onclick="location = '${request.contextPath}/zone'"/> Zones</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/zone/create'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" method="post" action="${request.contextPath}/zone/delete" name="zoneForm">
                <g:hiddenField name="zoneIds" id="zoneIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'zoneId\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">Country</td>
                        <td class="left">Zone Name</td>
                        <td class="left">Zone Code</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <g:each in="${Zone.list()}" status="i" var="zoneInstance">
                        <tr>
                            <td width="1" style="text-align: center;">
                                <input type="checkbox" value="${fieldValue(bean: zoneInstance, field: "id")}"
                                       name="zoneId" class="check"/></td>
                            <td>${Country.get(zoneInstance.countryId).name}</td>
                            <td>${fieldValue(bean: zoneInstance, field: "name")}</td>
                            <td>${fieldValue(bean: zoneInstance, field: "code")}</td>
                            <td class="right"><a
                                    href="${request.contextPath}/zone/show/${zoneInstance.id}">[Edit]</a>
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

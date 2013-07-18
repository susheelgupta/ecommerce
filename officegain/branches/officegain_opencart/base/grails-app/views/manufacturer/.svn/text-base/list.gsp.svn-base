<%@ page import="com.officegain.enigma.base.Manufacturer" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'manufacturer.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/manufacturer">Manufacturers</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'shipping.png')}" title="Manufacturers"
                     onclick="location = '${request.contextPath}/manufacturer'"/> Manufacturers</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/manufacturer/create'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" enctype="multipart/form-data" method="post"
                  action="${request.contextPath}/manufacturer/delete" name="manufacturerForm">
                <g:hiddenField name="manufacturerIds" id="manufacturerIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'manufacturerId\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">Manufacturer Name</td>
                        <td class="left">Sort Order</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <g:each in="${Manufacturer.list()}" status="i" var="manufacturerInstance">
                        <tr>
                            <td width="1" style="text-align: center;">
                                <input type="checkbox" value="${fieldValue(bean: manufacturerInstance, field: "id")}"
                                       name="manufacturerId" class="check"/></td>
                            <td>${fieldValue(bean: manufacturerInstance, field: "name")}</td>
                            <td>${fieldValue(bean: manufacturerInstance, field: "sortOrder")}</td>
                            <td class="right"><a
                                    href="${request.contextPath}/manufacturer/show/${manufacturerInstance.id}">[Edit]</a>
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

<%@ page import="com.officegain.enigma.base.ReturnStatus" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'returnStatus.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/returnStatus">Return Status</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'order.png')}" title="ReturnStatus"
                     onclick="location = '${request.contextPath}/returnStatus'"/> Return Status</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/returnStatus/create'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" method="post" action="${request.contextPath}/returnStatus/delete"
                  name="returnStatusForm">
                <g:hiddenField name="returnStatusIds" id="returnStatusIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'selected\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">Return Status Name</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <g:each in="${ReturnStatus.list()}" status="i" var="returnStatusInstance">
                        <tr>
                            <td width="1" style="text-align: center;">
                                <input type="checkbox"
                                       value="${fieldValue(bean: returnStatusInstance, field: "returnStatusId")}"
                                       name="selected" class="check"/></td>
                            <td>${fieldValue(bean: returnStatusInstance, field: "name")}</td>
                            <td class="right"><a
                                    href="${request.contextPath}/returnStatus/show/${returnStatusInstance.returnStatusId}">[Edit]</a>
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

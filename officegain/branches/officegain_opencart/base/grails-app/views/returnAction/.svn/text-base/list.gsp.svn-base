<%@ page import="com.officegain.enigma.base.ReturnAction" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'returnAction.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/returnAction">Return Action</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'order.png')}" title="ReturnActions"
                     onclick="location = '${request.contextPath}/returnAction'"/> Return Action</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/returnAction/create'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" method="post" action="${request.contextPath}/returnAction/delete"
                  name="returnActionForm">
                <g:hiddenField name="returnActionIds" id="returnActionIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'selected\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">Return Action Name</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <g:each in="${ReturnAction.list()}" status="i" var="returnActionInstance">
                        <tr>
                            <td width="1" style="text-align: center;">
                                <input type="checkbox"
                                       value="${fieldValue(bean: returnActionInstance, field: "returnActionId")}"
                                       name="selected" class="check"/></td>
                            <td>${fieldValue(bean: returnActionInstance, field: "name")}</td>
                            <td class="right"><a
                                    href="${request.contextPath}/returnAction/show/${returnActionInstance.returnActionId}">[Edit]</a>
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

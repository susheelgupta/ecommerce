<%@ page import="com.officegain.enigma.base.ReturnReason" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'returnReason.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/returnReason">ReturnReasons</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'order.png')}" title="ReturnReasons"
                     onclick="location = '${request.contextPath}/returnReason'"/> ReturnReasons</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/returnReason/create'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" method="post" action="${request.contextPath}/returnReason/delete"
                  name="returnReasonForm">
                <g:hiddenField name="returnReasonIds" id="returnReasonIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'selected\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">Return Reason Name</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <g:each in="${ReturnReason.list()}" status="i" var="returnReasonInstance">
                        <tr>
                            <td width="1" style="text-align: center;">
                                <input type="checkbox"
                                       value="${fieldValue(bean: returnReasonInstance, field: "returnReasonId")}"
                                       name="selected" class="check"/></td>
                            <td>${fieldValue(bean: returnReasonInstance, field: "name")}</td>
                            <td class="right"><a
                                    href="${request.contextPath}/returnReason/show/${returnReasonInstance.returnReasonId}">[Edit]</a>
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

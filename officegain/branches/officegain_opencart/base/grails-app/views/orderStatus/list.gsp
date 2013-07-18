<%@ page import="com.officegain.enigma.base.OrderStatus" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'orderStatus.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/orderStatus">Order Status</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'order.png')}" title="Order Status"
                     onclick="location = '${request.contextPath}/orderStatus'"/> Order Status</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/orderStatus/create'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" method="post" action="${request.contextPath}/orderStatus/delete"
                  name="orderStatusForm">
                <g:hiddenField name="orderStatusIds" id="orderStatusIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'selected\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">Order Status Name</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <g:each in="${OrderStatus.list()}" status="i" var="orderStatusInstance">
                        <tr>
                            <td width="1" style="text-align: center;">
                                <input type="checkbox"
                                       value="${fieldValue(bean: orderStatusInstance, field: "orderStatusId")}"
                                       name="selected" class="check"/></td>
                            <td>${fieldValue(bean: orderStatusInstance, field: "name")}</td>
                            <td class="right"><a
                                    href="${request.contextPath}/orderStatus/show/${orderStatusInstance.orderStatusId}">[Edit]</a>
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

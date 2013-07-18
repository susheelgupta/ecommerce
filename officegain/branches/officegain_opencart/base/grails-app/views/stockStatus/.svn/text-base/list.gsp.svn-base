<%@ page import="com.officegain.enigma.base.StockStatus" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'stockStatus.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/stockStatus">Stock Status</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'stock-status.png')}" title="StockStatus"
                     onclick="location = '${request.contextPath}/stockStatus'"/> Stock Status</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/stockStatus/create'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" method="post" action="${request.contextPath}/stockStatus/delete"
                  name="stockStatusForm">
                <g:hiddenField name="stockStatusIds" id="stockStatusIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'selected\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">Stock Status Name</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <g:each in="${StockStatus.list()}" status="i" var="stockStatusInstance">
                        <tr>
                            <td width="1" style="text-align: center;">
                                <input type="checkbox"
                                       value="${fieldValue(bean: stockStatusInstance, field: "stockStatusId")}"
                                       name="selected" class="check"/></td>
                            <td>${fieldValue(bean: stockStatusInstance, field: "name")}</td>
                            <td class="right"><a
                                    href="${request.contextPath}/stockStatus/show/${stockStatusInstance.stockStatusId}">[Edit]</a>
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

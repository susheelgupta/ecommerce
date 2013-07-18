<%@ page import="com.officegain.enigma.base.Currency" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'currency.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/currency">Currencys</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'payment.png')}" title="Currency"
                     onclick="location = '${request.contextPath}/currency'"/> Currency</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/currency/create'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" method="post" action="${request.contextPath}/currency/delete" name="currencyForm">
                <g:hiddenField name="currencyIds" id="currencyIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'currencyId\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">Currency Name</td>
                        <td class="left">Code</td>
                        <td class="right">Value</td>
                        <td class="left">Last Updated</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <g:each in="${Currency.list()}" status="i" var="currencyInstance">
                        <tr>
                            <td width="1" style="text-align: center;">
                                <input type="checkbox" value="${fieldValue(bean: currencyInstance, field: "id")}"
                                       name="currencyId" class="check"/></td>
                            <td>${fieldValue(bean: currencyInstance, field: "title")}</td>
                            <td>${fieldValue(bean: currencyInstance, field: "code")}</td>
                            <td class="right">${fieldValue(bean: currencyInstance, field: "value")}</td>
                            <td>${fieldValue(bean: currencyInstance, field: "dateModified")}</td>
                            <td class="right"><a
                                    href="${request.contextPath}/currency/show/${currencyInstance.id}">[Edit]</a>
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

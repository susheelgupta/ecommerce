<%@ page import="com.officegain.enigma.base.CustomerIpBlacklist" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>customerIpBlacklist</title>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'customerIpBlacklist.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/customerIpBlacklist">CustomerIpBlacklist</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'customer.png')}" alt=""/> CustomerIpBlacklists</h1>

            <div class="buttons">
                <a href="${request.contextPath}/customerIpBlacklist/create" class="button">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" method="post" action="${request.contextPath}/customerIpBlacklist/delete"
                  name="deleteForm">
                <g:hiddenField name="Ids" id="Ids" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'selected\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">IP</td>
                        <td class="right">Customers</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <g:each in="${CustomerIpBlacklist.list()}" status="i" var="customerIpBlacklistInstance">
                        <tr>
                            <td width="1" style="text-align: center;">
                                <input type="checkbox"
                                       onclick="$('input[name*=\'selected\']').attr('checked', this.checked);"/>
                            </td>
                            <td>${fieldValue(bean: customerIpBlacklistInstance, field: "ip")}</td>
                            <td class="right">0</td>
                            <td class="right"><a
                                    href="${request.contextPath}/customerIpBlacklist/show/${customerIpBlacklistInstance.id}">[Edit]</a>
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

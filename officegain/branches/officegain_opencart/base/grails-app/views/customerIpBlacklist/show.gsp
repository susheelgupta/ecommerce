<%@ page import="com.officegain.enigma.base.CustomerIpBlacklist" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>customerIpBlacklist</title>
    <meta name="layout" content="main">
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/customerIpBlacklist">Customer IP Blacklist</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'customer.png')}" alt=""/> Customer IP Blacklist</h1>

            <div class="buttons">
                <a class="button" onclick="$('#updateForm').submit();">Save</a>
                <a href="${request.contextPath}/customerIpBlacklist" class="button">Cancel</a>
            </div>
        </div>

        <div class="content">
            <g:form name="updateForm" controller="customerIpBlacklist" method="post" action="update">
                <g:hiddenField name="id" id="id" value="${customerIpBlacklistInstance.id}"/>
                <table class="form">
                    <tr>
                        <td><span class="required">*</span> IP:</td>
                        <td><input type="text" value="${customerIpBlacklistInstance?.ip}" name="ip"></td>
                    </tr>
                </table>
            </g:form>
        </div>
    </div>
</body>
</html>

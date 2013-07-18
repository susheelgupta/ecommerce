<%@ page import="com.officegain.enigma.base.VoucherTheme; com.officegain.enigma.base.VoucherThemeDescription" contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <title>Gift Voucher</title>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'voucher.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/voucher">Gift Voucher</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'payment.png')}" alt=""/> Gift Voucher</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/voucher/create'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form action="${request.contextPath}/voucher/delete" method="post" id="deleteForm"
                  name="voucherForm">
                <g:hiddenField name="voucherIds" id="voucherIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox" class="check"
                                   onclick="$('input[name*=\'voucherId\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">Code</td>
                        <td class="left">From</td>
                        <td class="left">To</td>
                        <td class="right">Amount</td>
                        <td class="left">Theme</td>
                        <td class="left">Status</td>
                        <td class="left">Date Added</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${voucherHistoryMap}" var="entry">
                        <tr>
                            <td style="text-align: center;"><input type="checkbox" value="${entry.getKey().id}"
                                                                   name="voucherId" class="check"/></td>
                            <td class="left">${entry.getKey().code}</td>
                            <td class="left">${entry.getKey().fromName}</td>
                            <td class="left">${entry.getKey().toName}</td>
                            <td class="right">${entry.getKey().amount}</td>
                            <td class="left">${VoucherThemeDescription.findByVoucherThemeId(VoucherTheme.get(entry.getKey().voucherThemeId).id).name}</td>
                            <td class="left">${entry.getKey().status ? "Enabled" : "Disabled"}</td>
                            <td class="left">${entry.getKey().dateAdded}</td>
                            <td class="right">[ <a
                                    href="${request.contextPath}/voucher/show/${entry.getKey().id}">Edit</a> ]
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</div>
</body>
</html>
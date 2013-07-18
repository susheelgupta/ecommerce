<%@ page import="com.officegain.enigma.base.VoucherTheme; com.officegain.enigma.base.VoucherThemeDescription" contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <title>Gift Voucher</title>
    <meta name="layout" content="main">
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
                <a class="button" onclick="$('#form').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/voucher'">Cancel</a>
            </div>
        </div>

        <div class="content">
            <div class="htabs" id="tabs">
                <a href="#tab-general" style="display: inline;" class="selected">General</a>
            </div>

            <form id="form" enctype="multipart/form-data" method="post" action="save">
                <div id="tab-general">
                    <table class="form">
                        <tbody><tr>
                            <td><span class="required">*</span> Code:<br><span
                                    class="help">The code the customer enters to activate the voucher.</span></td>
                            <td><input type="text" value="" name="code">
                            </td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> From Name:</td>
                            <td><input type="text" value="" name="fromName">
                            </td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> From E-Mail:</td>
                            <td><input type="text" value="" name="fromEmail">
                            </td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> To Name:</td>
                            <td><input type="text" value="" name="toName">
                            </td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> To E-Mail:</td>
                            <td><input type="text" value="" name="toEmail">
                            </td>
                        </tr>
                        <tr>
                            <td>Theme:</td>
                            <td>
                                <select name="voucherThemeId">
                                    <g:each in="${VoucherTheme.list()}" var="voucherTheme">
                                        <option value="${voucherTheme.id}">${VoucherThemeDescription.findByVoucherThemeId(voucherTheme.id).name}</option>
                                    </g:each>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> Message:</td>
                            <td><g:textArea rows="5" cols="40" name="message"/></td>
                        </tr>
                        <tr>
                            <td>Amount:</td>
                            <td><input type="text" value="" name="amount">
                            </td>
                        </tr>
                        <tr>
                            <td>Status:</td>
                            <td><select name="status">
                                <option selected="selected" value="1">Enabled</option>
                                <option value="0">Disabled</option>
                            </select></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
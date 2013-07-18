<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/currency">Currency</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'payment.png')}" title="Currency"
                     onclick="location = '${request.contextPath}/currency'"/> Currency</h1>

            <div class="buttons">
                <a class="button" onclick="$('#form').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/currency'">Cancel</a></div>
        </div>

        <div class="content">
            <form id="form" method="post" action="save">
                <div id="tab-general">
                    <table class="form">
                        <tr>
                            <td><span class="required">*</span> Currency Title</td>
                            <td><input type="text" value="" name="title"></td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> Code:<br><span
                                    class="help">Do not change if this is your default currency. Must be valid <a
                                        href="${request.contextPath}/currency">ISO code</a>.</span></td>
                            <td><input type="text" value="" name="code"></td>
                        </tr>
                        <tr>
                            <td>Symbol Left:</td>
                            <td><input type="text" value="" name="symbolLeft"></td>
                        </tr>
                        <tr>
                            <td>Symbol Right:</td>
                            <td><input type="text" value="" name="symbolRight"></td>
                        </tr>
                        <tr>
                            <td>Decimal Places:</td>
                            <td><input type="text" value="" name="decimalPlace"></td>
                        </tr>
                        <tr>
                            <td>Value:<br><span class="help">Set to 1.00000 if this is your default currency.</span>
                            </td>
                            <td><input type="text" value="" name="value"></td>
                        </tr>
                        <tr>
                            <td>Status:</td>
                            <td><select name="status">
                                <option value="1">Enabled</option>
                                <option selected="selected" value="0">Disabled</option></select>
                            </td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
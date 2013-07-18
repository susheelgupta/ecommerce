<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <title>Customer</title>
    <meta name="layout" content="main">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'editor.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'contents.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'js', file: 'contents.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'dialog.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'js/skins/kama', file: 'dialog.css')}" type="text/css">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'ckeditor.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js/plugins/link/dialogs', file: 'link.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js/plugins/link/dialogs', file: 'anchor.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js/plugins/specialchar/lang', file: 'en.js')}"></script>
    <script type="text/javascript"
            src="${resource(dir: 'js/plugins/colordialog/dialogs', file: 'colordialog.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'tabs.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'config.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'en.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'image.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'table.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'default.js')}"></script>
    <link rel="stylesheet" href="${resource(dir: '/js/skins/kama', file: 'editor.css')}" type="text/css">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.ui.datepicker.min.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-ui-timepicker-addon.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'customer.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/customer">Customer</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'customer.png')}" alt=""/> Customer</h1>

            <div class="buttons">
                <a class="button" onclick="$('#form').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/customer'">Cancel</a></div>
        </div>

        <div class="content">
            <div class="htabs" id="tabs">
                <a href="#tab-general" style="display: inline;" class="selected">General</a>
                <a href="#tab-ip" style="display: inline;">IP Addresses</a>
            </div>

            <form id="form" method="post" action="save">
                <div id="tab-general" style="display: block;">
                    <div class="vtabs" id="vtabs"><a href="#tab-customer" class="selected">General</a>
                        <span id="address-add">Add Address&nbsp;<img onclick="addAddress();" alt=""
                                                                     src="${resource(dir: 'images', file: 'add.png')}">
                        </span></div>

                    <div class="vtabs-content" id="tab-customer" style="display: block;">
                        <table class="form">
                            <tbody><tr>
                                <td><span class="required">*</span> First Name:</td>
                                <td><input type="text" value="" name="firstname">
                                </td>
                            </tr>
                            <tr>
                                <td><span class="required">*</span> Last Name:</td>
                                <td><input type="text" value="" name="lastname">
                                </td>
                            </tr>
                            <tr>
                                <td><span class="required">*</span> E-Mail:</td>
                                <td><input type="text" value="" name="email">
                                </td>
                            </tr>
                            <tr>
                                <td><span class="required">*</span> Telephone:</td>
                                <td><input type="text" value="" name="telephone">
                                </td>
                            </tr>
                            <tr>
                                <td>Fax:</td>
                                <td><input type="text" value="" name="fax"></td>
                            </tr>
                            <tr>
                                <td>Password:</td>
                                <td><input type="password" value="" name="password">
                                    <br>
                                </td>
                            </tr>
                            <tr>
                                <td>Confirm:</td>
                                <td><input type="password" value="" name="confirm">
                                </td>
                            </tr>
                            <tr>
                                <td>Newsletter:</td>
                                <td><select name="newsletter">
                                    <option value="1">Enabled</option>
                                    <option selected="selected" value="0">Disabled</option>
                                </select></td>
                            </tr>
                            <tr>
                                <td>Customer Group:</td>
                                <td><select name="customer_group_id">
                                    <option selected="selected" value="1">Default</option>
                                    <option value="2">abfbfabd</option>
                                </select></td>
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
                </div>

                <div id="tab-ip" style="display: block;">
                    <table class="form">
                        <tbody>
                        <tr>
                            <td class="left">IP</td>
                            <td class="right">Total Accounts</td>
                            <td class="left">Date Added</td>
                            <td class="right">Action</td>
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
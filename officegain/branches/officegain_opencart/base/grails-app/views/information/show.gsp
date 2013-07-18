<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <title>Information</title>
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
    <script type="text/javascript" src="${resource(dir: 'js', file: 'productcart.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/information">Information</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'information.png')}" title="Information"
                     onclick="location = '${request.contextPath}/information'"/> Information</h1>

            <div class="buttons">
                <a class="button" onclick="$('#updateForm').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/information'">Cancel</a></div>
        </div>

        <div class="content">
            <div class="htabs" id="tabs">
                <a href="#tab-general" style="display: inline;" class="selected">General</a>
                <a href="#tab-data" style="display: inline;">Data</a>
                <a href="#tab-design" style="display: inline;">Design</a>
            </div>

            <g:form name="updateForm" enctype="multipart/form-data" method="post" action="update"
                    controller="information">
                <g:hiddenField name="id" id="id" value="${informationInstance.id}"/>
                <div id="tab-general" style="display: block;">
                    <div class="htabs" id="languages">
                        <a href="#language1" style="display: inline;" class="selected">
                            <img title="English" src="${resource(dir: 'images', file: 'gb.png')}"> English</a>
                    </div>

                    <div id="language1" style="display: block;">
                        <table class="form">
                            <tbody>
                            <tr>
                                <td><span class="required">*</span> information Name:</td>
                                <td><input type="text" value="${informationDescriptionInstance?.title}" size="100"
                                           name="title"/></td>
                            </tr>
                            <tr>
                                <td>Description:</td>
                                <td><g:textArea rows="5" cols="40" id="description1"
                                                value="${informationDescriptionInstance?.description}"
                                                name="description"/></td>
                                <script type="text/javascript">
                                    CKEDITOR.replace('description1');
                                </script>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div id="tab-data" style="display: none;">
                    <table class="form">
                        <tbody>
                        <tr>
                            <td>Stores:</td>
                            <td><div class="scrollbox">
                                <div class="even">
                                    <input type="checkbox" checked="checked" value="0" name="informationStore[]">
                                    Default</div>
                            </div></td>
                        </tr>
                        <tr>
                            <td>SEO Keyword:<br><span
                                    class="help">Do not use spaces instead replace spaces with - and make sure the keyword is globally unique.</span>
                            </td>
                            <td><input type="text" value="" name="keyword"/></td>
                        </tr>
                        <tr>
                            <td>Bottom:<br><span
                                    class="help">Display in the bottom footer.</span>
                            </td>
                            <td><input type="checkbox" name="bottom" ${informationInstance?.bottom ? "checked" : ""}/>
                            </td>
                        </tr>
                        <tr>
                            <td>Status:</td>
                            <td><select name="status">
                                <option value="1" ${informationInstance.status == 1 ? "selected" : ""}>Enabled</option>
                                <option value="0" ${informationInstance.status != 1 ? "selected" : ""}>Disabled</option>
                            </select></td>
                        </tr>
                        <tr>
                            <td>Sort Order:</td>
                            <td><input type="text" size="2" value="${informationInstance?.sortOrder}" name="sortOrder"/>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div id="tab-design" style="display: none;">
                    <table class="list">
                        <thead>
                        <tr>
                            <td class="left">Stores:</td>
                            <td class="left">Layout Override:</td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="left">Default</td>
                            <td class="left">
                                <select name="information_layout[0][layout_id]">
                                    <option value=""></option>
                                    <option value="6">Account</option>
                                    <option value="10">Affiliate</option>
                                    <option value="3">Information</option>
                                    <option value="7">Checkout</option>
                                    <option value="8">Contact</option>
                                    <option value="4">Default</option>
                                    <option value="1">Home</option>
                                    <option value="11">Information</option>
                                    <option value="5">Manufacturer</option>
                                    <option value="2">Product</option>
                                    <option value="9">Sitemap</option>
                                </select>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>
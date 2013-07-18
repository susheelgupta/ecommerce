<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <title>Reviews</title>
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
        <a href="${request.contextPath}/category">Reviews</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'category.png')}" title="Category"
                     onclick="location = '${request.contextPath}/category'"/> Reviews</h1>

            <div class="buttons">
                <a class="button" onclick="$('#form').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/category'">Cancel</a></div>
        </div>
    </div>

    <div id="language1" style="display: block;">
        <table class="form">
            <tbody>
            <tr>
                <td><span class="required">*</span> Author:</td>
                <td><input type="text" value="" size="100" name="name"/></td>
            </tr>
            <tr>
                <td>Product:<br><span class="help">(Autocomplete)</span></td>
                <td><input type="text" value="" size="100" name="name"/></td>
            </tr>
            <tr>
                <td>Text:</td>
                <td><g:textArea rows="5" cols="40" name="metaDescription"/>
                </td>
            </tr>
            <tr>
                <td>Rating:</td>
                <td>Bad &nbsp;
                    <input type="radio" name="rating" value="1" />
                    <input type="radio" name="rating" value="1"/>
                    <input type="radio" name="rating" value="1"/>
                    <input type="radio" name="rating" value="1"/>
                    <input type="radio" name="rating" value="1"/>
                    &nbsp;Good
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
</form>
</div>
</body>
</html>
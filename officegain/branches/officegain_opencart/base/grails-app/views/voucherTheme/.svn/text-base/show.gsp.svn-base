<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <title>voucherThemeGroup</title>
    <meta name="layout" content="main">
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/voucherTheme">Voucher Themes</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'payment.png')}" alt=""/> Voucher Themes</h1>

            <div class="buttons">
                <a class="button" onclick="$('#form').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/voucherTheme'">Cancel</a>
            </div>
        </div>

        <div class="content">
            <g:form name="form" enctype="multipart/form-data" method="post" action="update" controller="voucherTheme">
                <g:hiddenField name="id" id="id" value="${voucherThemeInstance.id}"/>
                <div id="tab-general">
                    <table class="form">
                        <tr>
                            <td><span class="required">*</span> Voucher Theme Name</td>
                            <td><input type="text" value="${voucherThemeDescriptionInstance?.name}" name="name">
                                <img title="English" src="${resource(dir: 'images', file: 'gb.png')}"></td>
                        </tr>
                        <tr>
                            <td>Sort Order:</td>
                            <td valign="top"><div class="image"><img id="thumb" alt=""
                                                                     src="http://localhost/upload/image/cache/no_image-100x100.jpg">
                                <input type="hidden" id="image" value="${voucherThemeInstance.image}" name="image">
                                <br><a onclick="image_upload('image', 'thumb');">Browse Files</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
                                        onclick="$('#thumb').attr('src', 'http://localhost/upload/image/cache/no_image-100x100.jpg');
                                        $('#image').attr('value', '');">Clear Image</a></div>
                            </td>
                        </tr>
                    </table>
                </div>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>
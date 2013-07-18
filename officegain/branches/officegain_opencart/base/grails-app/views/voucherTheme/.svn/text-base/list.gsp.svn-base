<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <title>voucherThemeGroup</title>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'voucherTheme.js')}"></script>
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
                <a class="button" onclick="location = '${request.contextPath}/voucherTheme/create'">Insert</a>
                <a id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form action="${request.contextPath}/voucherTheme/delete" method="post" id="deleteForm"
                  name="voucherThemeForm">
                <g:hiddenField name="voucherThemeIds" id="voucherThemeIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox" class="check"
                                   onclick="$('input[name*=\'voucherThemeId\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">Voucher Theme Name</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${voucherThemeDescriptionMap}" var="entry">
                        <tr>
                            <td style="text-align: center;"><input type="checkbox" value="${entry.getKey().id}"
                                                                   name="voucherThemeId" class="check"/></td>
                            <td class="left">${entry.getValue().name}</td>
                            <td class="right">[ <a
                                    href="${request.contextPath}/voucherTheme/show/${entry.getKey().id}">Edit</a> ]
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
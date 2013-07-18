<%@ page import="com.officegain.enigma.base.Language" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'language.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/language">Language</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'language.png')}" title="Language"
                     onclick="location = '${request.contextPath}/language'"/> Language</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/language/create'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" method="post" action="${request.contextPath}/language/delete" name="languageForm">
                <g:hiddenField name="languageIds" id="languageIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'languageId\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">Language Name</td>
                        <td class="left">Code</td>
                        <td class="right">Sort Order</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <g:each in="${Language.list()}" status="i" var="languageInstance">
                        <tr>
                            <td width="1" style="text-align: center;">
                                <input type="checkbox" value="${fieldValue(bean: languageInstance, field: "id")}"
                                       name="languageId" class="check"/></td>
                            <td>${fieldValue(bean: languageInstance, field: "name")}</td>
                            <td>${fieldValue(bean: languageInstance, field: "code")}</td>
                            <td class="right">${fieldValue(bean: languageInstance, field: "sortOrder")}</td>
                            <td class="right"><a
                                    href="${request.contextPath}/language/show/${languageInstance.id}">[Edit]</a>
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

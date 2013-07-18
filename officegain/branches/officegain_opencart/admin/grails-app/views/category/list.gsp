<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'category.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/category">Category</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'category.png')}" title="Category"
                     onclick="location = '${request.contextPath}/category'"/> Category</h1>

            <div class="buttons">
                <g:hiddenField name="productIds" id="productIds" value=""/>
                <a class="button" onclick="location = '${request.contextPath}/category/insert'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form action="${request.contextPath}/category/delete" method="post" id="deleteForm" name="categoryForm">
                <g:hiddenField name="categoryIds" id="categoryIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox" class="check"
                                   onclick="$('input[name*=\'selected\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">Category Name</td>
                        <td class="right">Sort Order</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${categoryDescriptionMap}" var="entry">
                        <tr>
                            <td style="text-align: center;"><input type="checkbox" value="${entry.getKey().id}"
                                                                   name="categoryId" class="check"/></td>
                            <td class="left">${entry.getValue().name}</td>
                            <td class="right">${entry.getKey().sortOrder}</td>
                            <td class="right">[ <a
                                    href="${request.contextPath}/category/show/${entry.getKey().id}">Edit</a> ]
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

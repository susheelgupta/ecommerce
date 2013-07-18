<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'attributegroup.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/attribute">Attributes</a>
    </div>

    <div class="warning">Warning: This attribute group cannot be deleted as it is currently assigned to 8 attributes!</div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'order.png')}" title="Attribute Groups"
                     onclick="location = '${request.contextPath}/attributeGroup'"/> Attribute Groups</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/attributeGroup/create'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" action="${request.contextPath}/attributeGroup/delete" name="attributeGroupForm"
                  method="post">
                <g:hiddenField name="attributeGroupIds" id="attributeGroupIds" value=""/>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'attributeGroupId\']').attr('checked', this.checked);">
                        </td>
                        <td class="left">Attribute Group Name</td>
                        <td class="right">Sort Order</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${attributeGroupDescriptionMap}" var="entry">
                        <tr>
                            <td style="text-align: center;"><input type="checkbox" value="${entry.getKey().id}"
                                                                   name="attributeGroupId" class="check"/></td>
                            <td class="left">${entry.getValue().name}</td>
                            <td class="right">${entry.getKey().sortOrder}</td>
                            <td class="right">[ <a
                                    href="${request.contextPath}/attributeGroup/show/${entry.getKey().id}">Edit</a> ]
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
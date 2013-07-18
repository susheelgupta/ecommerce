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
        <a href="${request.contextPath}/attributeGroup">Attribute Group</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'order.png')}" title="Attribute Groups"
                     onclick="location = '${request.contextPath}/attributeGroup'"/> Attribute Groups</h1>

            <div class="buttons">
                <a class="button" onclick="$('#updateForm').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/attributeGroup'">Cancel</a></div>
        </div>

        <div class="content">
            <g:form name="updateForm" enctype="multipart/form-data" method="post" action="update"
                    controller="attributeGroup">
                <g:hiddenField name="id" id="id" value="${attributeGroupInstance.id}"/>
                <div id="tab-general">
                    <table class="form">
                        <tr>
                            <td><span class="required">*</span>Attribute Group Name</td>
                            <td><input type="text" value="${attributeGroupDescriptionInstance?.name}" name="name">
                                <img title="English" src="${resource(dir: 'images', file: 'gb.png')}"></td>
                        </tr>
                        <tr>
                            <td>Sort Order:</td>
                            <td><input type="text" size="3" value="${attributeGroupInstance?.sortOrder}"
                                       name="sortOrder">
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
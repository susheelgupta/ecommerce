<%@ page import="com.officegain.enigma.base.UserGroup" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/userGroup">User Group</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'user-group.png')}" title="User Group"
                     onclick="location = '${request.contextPath}/userGroup'"/> User Group</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/userGroup/create'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" enctype="multipart/form-data" method="post"
                  action="${request.contextPath}/userGroup/delete" name="userGroupForm">
                <g:hiddenField name="userGroupIds" id="userGroupIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'userGroupId\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">User Group Name</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <g:each in="${UserGroup.list()}" status="i" var="userGroupInstance">
                        <tr>
                            <td width="1" style="text-align: center;">
                                <input type="checkbox" value="${fieldValue(bean: userGroupInstance, field: "id")}"
                                       name="userGroupId" class="check"/></td>
                            <td>${fieldValue(bean: userGroupInstance, field: "name")}</td>
                            <td class="right"><a
                                    href="${request.contextPath}/userGroup/show/${userGroupInstance.id}">[Edit]</a>
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

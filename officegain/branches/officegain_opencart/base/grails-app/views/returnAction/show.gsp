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
        <a href="${request.contextPath}/returnAction">Return Action</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'order.png')}" title="Return Action"
                     onclick="location = '${request.contextPath}/returnAction'"/> Return Action</h1>

            <div class="buttons">
                <a class="button" onclick="$('#updateForm').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/returnAction'">Cancel</a></div>
        </div>

        <div class="content">
            <g:form name="updateForm" method="post" action="update" controller="returnAction">
                <g:hiddenField name="id" id="id" value="${returnActionInstance.returnActionId}"/>
                <div id="tab-general">
                    <table class="form">
                        <tr>
                            <td><span class="required">*</span> Return Action Name</td>
                            <td><input type="text" value="${returnActionInstance?.name}" name="name">
                                <img title="English" src="${resource(dir: 'images', file: 'gb.png')}"></td>
                        </tr>
                    </table>
                </div>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>
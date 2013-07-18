<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/lengthClass">Weight Class</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'shipping.png')}" title="Options"
                     onclick="location = '${request.contextPath}/lengthClass'"/> Weight Class</h1>

            <div class="buttons">
                <a class="button" onclick="$('#updateForm').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/lengthClass'">Cancel</a></div>
        </div>

        <div class="content">
            <g:form name="updateForm" method="post" action="update" controller="lengthClass">
                <g:hiddenField name="id" id="id" value="${lengthClassInstance.id}"/>
                <div id="tab-general">
                    <table class="form">
                        <tr>
                            <td><span class="required">*</span> Weight Title:</td>
                            <td><input type="text" value="${lengthClassDescriptionInstance?.title}" name="title">
                                <img title="English" src="${resource(dir: 'images', file: 'gb.png')}"></td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> Weight Unit:</td>
                            <td><input type="text" value="${lengthClassDescriptionInstance?.unit}" name="unit">
                                <img title="English" src="${resource(dir: 'images', file: 'gb.png')}"></td>
                        </tr>
                        <tr>
                            <td>Value:<span class="help">Set to 1.00000 if this is your default length.</span></td>
                            <td><input type="text" name="value" value="${lengthClassInstance?.value}"></td>
                        </tr>
                    </table>
                </div>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>
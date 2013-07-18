<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'weightClass.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/weightClass">Weight Class</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'shipping.png')}" title="Weight Class"
                     onclick="location = '${request.contextPath}/weightClass'"/> Weight Class</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/weightClass/create'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" method="post" action="${request.contextPath}/weightClass/delete"
                  name="weightClassForm">
                <g:hiddenField name="weightClassIds" id="weightClassIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'selected\']').attr('checked', this.checked);">
                        </td>
                        <td class="left">Weight Title</td>
                        <td class="left">Weight Unit</td>
                        <td class="right">Value</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${weightClassDescriptionMap}" var="entry">
                        <tr>
                            <td style="text-align: center;"><input type="checkbox" value="${entry.getKey().id}"
                                                                   name="weightClassId" class="check"/></td>
                            <td class="left">${entry.getValue().title}</td>
                            <td class="left">${entry.getValue().unit}</td>
                            <td class="right">${entry.getKey().value}</td>
                            <td class="right">[ <a
                                    href="${request.contextPath}/weightClass/show/${entry.getKey().id}">Edit</a> ]
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

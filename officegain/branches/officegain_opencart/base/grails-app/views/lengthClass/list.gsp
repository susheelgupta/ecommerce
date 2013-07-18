<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'lengthClass.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/lengthClass">Length Class</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'length.png')}" title="Length Class"
                     onclick="location = '${request.contextPath}/lengthClass'"/> Length Class</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/lengthClass/create'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" method="post" action="${request.contextPath}/lengthClass/delete"
                  name="lengthClassForm">
                <g:hiddenField name="lengthClassIds" id="lengthClassIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'lengthClassId\']').attr('checked', this.checked);">
                        </td>
                        <td class="left">Length Title</td>
                        <td class="left">Length Unit</td>
                        <td class="right">Value</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${lengthClassDescriptionMap}" var="entry">
                        <tr>
                            <td style="text-align: center;"><input type="checkbox" value="${entry.getKey().id}"
                                                                   name="lengthClassId" class="check"/></td>
                            <td class="left">${entry.getValue().title}</td>
                            <td class="left">${entry.getValue().unit}</td>
                            <td class="right">${entry.getKey().value}</td>
                            <td class="right">[ <a
                                    href="${request.contextPath}/lengthClass/show/${entry.getKey().id}">Edit</a> ]
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

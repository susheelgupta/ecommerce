<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'download.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/download">Downloads</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'download.png')}" title="Downloads"
                     onclick="location = '${request.contextPath}/download'"/> Downloads</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/download/create'">Insert</a>
                <a class="button" onclick="$('#deleteForm').submit();">Delete</a></div>
        </div>

        <div class="content">
            <form id="deleteForm" enctype="multipart/form-data" method="post"
                  action="${request.contextPath}/download/delete"
                  name="downloadForm">
                <g:hiddenField name="downloadIds" id="downloadIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'downloadId\']').attr('checked', this.checked);">
                        </td>
                        <td class="left">Download Name</td>
                        <td class="right">Total Downloads Allowed</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${downloadDescriptionMap}" var="entry">
                        <tr>
                            <td style="text-align: center;"><input type="checkbox" value="${entry.getKey().id}"
                                                                   name="downloadId" class="check"/></td>
                            <td class="left">${entry.getValue().name}</td>
                            <td class="right">${entry.getKey().remaining}</td>
                            <td class="right">[ <a
                                    href="${request.contextPath}/download/show/${entry.getKey().id}">Edit</a> ]
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

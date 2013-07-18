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
        <a href="${request.contextPath}/download">Downloads</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'download.png')}" title="Options"
                     onclick="location = '${request.contextPath}/download'"/> Downloads</h1>

            <div class="buttons">
                <a class="button" onclick="$('#updateForm').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/download'">Cancel</a>
            </div>
        </div>

        <div class="content">
            <g:form name="updateForm" enctype="multipart/form-data" method="post" action="update" controller="download">
                <g:hiddenField name="id" id="id" value="${downloadInstance.id}"/>
                <div id="tab-general">
                    <table class="form">
                        <tr>
                            <td><span class="required">*</span>Download Name</td>
                            <td><input type="text" value="${downloadDescriptionInstance?.name}" name="name">
                                <img title="English" src="${resource(dir: 'images', file: 'gb.png')}"></td>
                        </tr>
                        <tr>
                            <td>File Name:<br><span
                                    class="help">You can upload via the upload button or use FTP to upload to the download directory and enter the details below.<br><br>It is also recommended that the filename and the mask are different to stop people trying to directly link to your downloads.
                            </span></td>
                            <td><input type="text" value="" name="${downloadInstance?.filename}"> <a class="button     "
                                                                                                     id="button-upload">Upload</a>
                            </td>
                        </tr>
                        <tr>
                            <td>Mask:</td>
                            <td><input value="${downloadInstance?.mask}" type="text" name="mask"/></td>
                        </tr>
                        <tr>
                            <td>Total Downloads Allowed:</td>
                            <td><input type="text" size="3" value="${downloadInstance?.remaining}" name="remaining">
                            </td>
                        </tr>
                        <tr>
                            <td>Push to Previous Customers:<br><span
                                    class="help">Check this to update previously purchased versions as well.</span></td>
                            <td><input type="checkbox" value="1" name="update">
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
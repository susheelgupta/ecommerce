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
                <a class="button" onclick="$('#form').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/download'">Cancel</a></div>
        </div>

        <div class="content">
            <form id="form" enctype="multipart/form-data" method="post" action="save">
                <div id="tab-general">
                    <table class="form">
                        <tr>
                            <td><span class="required">*</span>Download Name</td>
                            <td><input type="text" value="" name="name">
                                <img title="English" src="${resource(dir: 'images', file: 'gb.png')}"></td>
                        </tr>
                        <tr>
                            <td>File Name:<br><span
                                    class="help">You can upload via the upload button or use FTP to upload to the download directory and enter the details below.<br><br>It is also recommended that the filename and the mask are different to stop people trying to directly link to your downloads.
                            </span></td>
                            <td><input type="text" value="" name="filename"> <a class="button     "
                                                                                id="button-upload">Upload</a>
                            </td>
                        </tr>
                        <tr>
                            <td>Mask:</td>
                            <td><input value="" type="text" name="mask"/></td>
                        </tr>
                        <tr>
                            <td>Total Downloads Allowed:</td>
                            <td><input type="text" size="3" value="1" name="remaining"></td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
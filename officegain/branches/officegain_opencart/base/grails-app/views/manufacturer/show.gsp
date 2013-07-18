<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <title>Products</title>
    <meta name="layout" content="main">
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/Manufacturer">Manufacturer</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img alt="" src="${resource(dir: 'images', file: 'shipping.png')}"> Manufacturer</h1>

            <div class="buttons"><a class="button" onclick="$('#updateForm').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/manufacturer';">Cancel</a>
            </div>
        </div>

        <div class="content">
            <div class="htabs" id="tabs">
                <a href="#tab-general" style="display: inline;" class="selected">General</a>
            </div>
            <g:form name="updateForm" enctype="multipart/form-data" method="post" action="update"
                    controller="manufacturer">
                <g:hiddenField name="id" id="id" value="${manufacturerInstance.id}"/>
                <div id="tab-general">
                    <table class="form">
                        <tr>
                            <td><span class="required">*</span>Manufacturer Name</td>
                            <td><input type="text" name="name" value="${manufacturerInstance?.name}" size="100"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Stores</td>
                            <td><div class="scrollbox">
                                <input type="checkbox" name="manufacturer_store[]"
                                       value="" checked="checked"/>Default
                            </div></td>
                        </tr>
                        <tr>
                            <td>SEO Keyword:<br><span
                                    class="help">Do not use spaces instead replace spaces with - and make sure the keyword is globally unique.</span>
                            </td>
                            <td><input type="text" value="" name="keyword"></td>
                        </tr>
                        <tr>
                            <td>Image:</td>
                            <td><div class="image"><img id="thumb" alt=""
                                                        src="${resource(dir: 'images', file: 'no_image-100x100.jpg')}"><br>
                                <input type="hidden" id="image" value="${manufacturerInstance?.image}" name="image">
                                <a onclick="image_upload('image', 'thumb');">Browse Files</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
                                        onclick="$('#thumb').attr('src', 'http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/image/cache/no_image-100x100.jpg');
                                        $('#image').attr('value', '');">Clear Image</a></div></td>
                        </tr>
                        <tr>
                            <td>Sort Order:</td>
                            <td><input type="text" size="3" value="${manufacturerInstance?.sortOrder}"
                                       name="sortOrder"/>
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
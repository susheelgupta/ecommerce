<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/lengthClass">Length Class</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'length.png')}" title="Options"
                     onclick="location = '${request.contextPath}/lengthClass'"/> Length Class</h1>

            <div class="buttons">
                <a class="button" onclick="$('#form').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/lengthClass'">Cancel</a></div>
        </div>

        <div class="content">
            <form id="form" enctype="multipart/form-data" method="post" action="save">
                <div id="tab-general">
                    <table class="form">
                        <tr>
                            <td><span class="required">*</span> Length Title:</td>
                            <td><input type="text" value="" name="title">
                                <img title="English" src="${resource(dir: 'images', file: 'gb.png')}"></td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> Length Unit:</td>
                            <td><input type="text" value="" name="unit">
                                <img title="English" src="${resource(dir: 'images', file: 'gb.png')}"></td>
                        </tr>
                        <tr>
                            <td>Value:<span class="help">Set to 1.00000 if this is your default length.</span></td>
                            <td><input type="text" name="value"></td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
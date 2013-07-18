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
        <a href="${request.contextPath}/option">Options</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'information.png')}" title="Options"
                     onclick="location = '${request.contextPath}/option'"/> Options</h1>

            <div class="buttons">
                <a class="button" onclick="$('#form').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/option'">Cancel</a></div>
        </div>
    </div>

    <div class="content">
        <g:form name="form" enctype="multipart/form-data" method="post" action="update" controller="option">
            <g:hiddenField name="id" id="id" value="${optionInstance.id}"/>
            <div id="tab-general">
                <table class="form">
                    <tr>
                        <td><span class="required">*</span>Option Name</td>
                        <td><input type="text" value="${optionDescriptionInstance?.name}" name="name">
                            <img title="English" src="${resource(dir: 'images', file: 'gb.png')}"></td>
                    </tr>
                    <tr>
                        <td>Type:</td>
                        <td><select name="type">
                            <optgroup label="Choose">
                                <option value="select">Select</option>
                                <option value="radio">Radio</option>
                                <option value="checkbox">Checkbox</option>
                                <option value="image">Image</option>
                            </optgroup>
                            <optgroup label="Input">
                                <option value="text">Text</option>
                                <option value="textarea">Textarea</option>
                            </optgroup>
                            <optgroup label="File">
                                <option value="file">File</option>
                            </optgroup>
                            <optgroup label="Date">
                                <option value="date">Date</option>
                                <option value="time">Time</option>
                                <option value="datetime">Date &amp; Time</option>
                            </optgroup>
                        </select></td>
                    </tr>
                    <tr>
                        <td>Sort Order:</td>
                        <td><input type="text" size="3" name="sortOrder" value="${optionInstance?.sortOrder}"></td>
                    </tr>
                </table>
                <table class="list" id="option-value">
                    <thead>
                    <tr>
                        <td class="left"><span class="required">*</span> Option Value Name:</td>
                        <td class="left">Image:</td>
                        <td class="right">Sort Order:</td>
                        <td></td>
                    </tr>
                    </thead>
                    <tr>
                        <td colspan="3"></td>
                        <td class="left"><a class="button">Add Option Value</a></td>
                    </tr>
                </table>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>
<%@ page import="com.officegain.enigma.base.AttributeGroupDescription; com.officegain.enigma.base.AttributeGroup" contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/attribute">Attributes</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'information.png')}" title="Options"
                     onclick="location = '${request.contextPath}/attribute'"/> Attributes</h1>

            <div class="buttons">
                <a class="button" onclick="$('#form').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/attribute'">Delete</a></div>
        </div>
    </div>

    <div class="content">
        <form id="form" enctype="multipart/form-data" method="post" action="save">
            <div id="tab-general">
                <table class="form">
                    <tr>
                        <td><span class="required">*</span>Attribute Name</td>
                        <td><input type="text" value="" name="name">
                            <img title="English" src="${resource(dir: 'images', file: 'gb.png')}"></td>
                    </tr>
                    <tr>
                        <td>Attribute Group:</td>
                        <td>
                            <select name="attributeGroupId">
                                <g:each in="${AttributeGroup.list()}" var="attributeGroup">
                                    <option value="${attributeGroup.id}">${AttributeGroupDescription.findByAttributeGroupId(attributeGroup.id).name}</option>
                                </g:each>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Sort Order:</td>
                        <td><input type="text" size="3" name="sortOrder"></td>
                    </tr>
                </table>
            </div>
        </form>
    </div>
</div>
</body>
</html>
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
            <h1><img src="${resource(dir: 'images', file: 'order.png')}" title="Attributes"
                     onclick="location = '${request.contextPath}/attribute'"/> Attributes</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/attribute/create'">Insert</a>
                <a class="button" onclick="$('#form').submit();">Delete</a></div>
        </div>
    </div>

    <div class="content">
        <form id="form" enctype="multipart/form-data" method="post" action="attribute/delete">
            <table class="list">
                <thead>
                <tr>
                    <td width="1" style="text-align: center;">
                        <input type="checkbox"
                               onclick="$('input[name*=\'selected\']').attr('checked', this.checked);">
                    </td>
                    <td class="left">Attribute Name</td>
                    <td class="left">Attribute Group</td>
                    <td class="right">Sort Order</td>
                    <td class="right">Action</td>
                </tr>
                </thead>
                <tbody>
                <g:each in="${attributeDescriptionMap}" var="entry">
                    <tr>
                        <td style="text-align: center;"><input type="checkbox" value="${entry.getKey().id}"
                                                               name="attributeId" class="check"/></td>
                        <td class="left">${entry.getValue().name}</td>
                        <td class="left">${AttributeGroupDescription.findByAttributeGroupId(AttributeGroup.get(entry.getKey().attributeGroupId).id).name}</td>
                        <td class="right">${entry.getKey().sortOrder}</td>
                        <td class="right">[ <a
                                href="${request.contextPath}/attribute/show/${entry.getKey().id}">Edit</a> ]
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </form>
    </div>
</div>
</body>
</html>

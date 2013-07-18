<%@ page import="com.officegain.enigma.base.Information" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'information.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/information">Information</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'information.png')}" title="Information"
                     onclick="location = '${request.contextPath}/information'"/> Information</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/information/create'">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" name="informationForm" method="post"
                  action="${request.contextPath}/information/delete">
                <g:hiddenField name="informationIds" id="informationIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'informationId\']').attr('checked', this.checked);">
                        </td>
                        <td class="left">Information Title</td>
                        <td class="right">Sort Order</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${informationDescriptionMap}" var="entry">
                        <tr>
                            <td style="text-align: center;"><input type="checkbox" value="${entry.getKey().id}"
                                                                   name="informationId" class="check"/></td>
                            <td class="left">${entry.getValue().title}</td>
                            <td class="right">${entry.getKey().sortOrder}</td>
                            <td class="right">[ <a
                                    href="${request.contextPath}/information/show/${entry.getKey().id}">Edit</a> ]
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

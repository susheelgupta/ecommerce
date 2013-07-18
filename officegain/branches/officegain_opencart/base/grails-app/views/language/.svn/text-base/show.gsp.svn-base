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
        <a href="${request.contextPath}/language">Language</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'language.png')}" title="Language"
                     onclick="location = '${request.contextPath}/language'"/> Language</h1>

            <div class="buttons">
                <a class="button" onclick="$('#updateForm').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/language'">Cancel</a></div>
        </div>

        <div class="content">
            <g:form name="updateForm" method="post" action="update" controller="language">
                <g:hiddenField name="id" id="id" value="${languageInstance.id}"/>
                <div id="tab-general">
                    <table class="form">
                        <tr>
                            <td><span class="required">*</span> Language Name:</td>
                            <td><input type="text" value="${languageInstance?.name}" name="name">
                            </td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> Code:<br><span
                                    class="help">eg: en. Do not change if this is your default language.</span></td>
                            <td><input type="text" value="${languageInstance?.code}" name="code">
                            </td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> Locale:<br><span
                                    class="help">eg: en_US.UTF-8,en_US,en-gb,en_gb,english</span></td>
                            <td><input type="text" value="${languageInstance?.locale}" name="locale">
                            </td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> Image:<br><span class="help">eg: gb.png</span></td>
                            <td><input type="text" value="${languageInstance?.image}" name="image">
                            </td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> Directory:<br><span
                                    class="help">name of the language directory (case-sensitive)</span></td>
                            <td><input type="text" value="${languageInstance?.directory}" name="directory">
                            </td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> Filename:<br><span
                                    class="help">main language filename without extension</span></td>
                            <td><input type="text" value="${languageInstance?.filename}" name="filename">
                            </td>
                        </tr>
                        <tr>
                            <td>Status:<br><span class="help">Hide/Show it in language dropdown</span></td>
                            <td>
                                <g:if test="${languageInstance?.status}">
                                    <select name="status">
                                        <option value="1" selected>Enabled</option>
                                        <option value="0">Disabled</option>
                                    </select>
                                </g:if>
                                <g:else>
                                    <select name="status">
                                        <option value="1">Enabled</option>
                                        <option value="0" selected>Disabled</option>
                                    </select>
                                </g:else>
                            </td>
                        </tr>
                        <tr>
                            <td>Sort Order:</td>
                            <td><input type="text" size="3" value="${languageInstance?.sortOrder}" name="sortOrder">
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
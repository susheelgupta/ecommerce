<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>customerGroup</title>
    <meta name="layout" content="main">
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/customerGroup">Customer Group</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'customer.png')}" alt=""/> Customer Group</h1>

            <div class="buttons">
                <a class="button" onclick="$('#form').submit();">Save</a>
                <a href="${request.contextPath}/customerGroup" class="button">Cancel</a>
            </div>
        </div>

        <div class="content">
            <g:form name="form" method="post" action="update" controller="customerGroup">
                <g:hiddenField name="id" id="id" value="${customerGroupInstance?.id}"/>
                <table class="form">
                    <tr>
                        <td><span class="required">*</span> Customer Group Name:</td>
                        <td><input type="text" value="${customerGroupDescriptionInstance?.name}" name="name">
                            <img title="English" src="${resource(dir: 'images', file: 'gb.png')}">
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td><g:textArea rows="5" cols="40" value="${customerGroupDescriptionInstance?.description}"
                                        name="description"/>
                            <img align="top" title="English" src="${resource(dir: 'images', file: 'gb.png')}">
                        </td>
                    </tr>
                    <tr>
                        <td>Approve New Customers:<br><span
                                class="help">Customers must be approved by and administrator before they can login.</span>
                        </td>
                        <td>
                            <g:if test="${customerGroupInstance?.approval}">
                                <input type="radio" value="1" checked="checked" name="approval"> Yes
                                <input type="radio" value="0" name="approval"> No
                            </g:if>
                            <g:else>
                                <input type="radio" value="1" name="approval"> Yes
                                <input type="radio" value="0" checked="checked" name="approval"> No
                            </g:else>
                    </tr>
                    <tr>
                        <td>Display Company No.:<br><span class="help">Display a company no. field.</span></td>
                        <td>
                            <g:if test="${customerGroupInstance?.companyIdDisplay}">
                                <input type="radio" value="1" checked="checked" name="companyIdDisplay"> Yes
                                <input type="radio" value="0" name="companyIdDisplay"> No
                            </g:if>
                            <g:else>
                                <input type="radio" value="1" name="companyIdDisplay"> Yes
                                <input type="radio" value="0" checked="checked" name="companyIdDisplay"> No
                            </g:else>
                    </tr>
                    <tr>
                        <td>Company No. Required:<br><span
                                class="help">Select which customer groups must enter their company no. for billing addresses before checkout.</span>
                        </td>
                        <td>
                            <g:if test="${customerGroupInstance?.companyIdRequired}">
                                <input type="radio" value="1" checked="checked" name="companyIdRequired"> Yes
                                <input type="radio" value="0" name="companyIdRequired"> No
                            </g:if>
                            <g:else>
                                <input type="radio" value="1" name="companyIdRequired"> Yes
                                <input type="radio" value="0" checked="checked" name="companyIdRequired"> No
                            </g:else>
                    </tr>
                    <tr>
                        <td>Display Tax ID.:<br><span class="help">Display a Tax ID. field for billing addresses.</span>
                        </td>
                        <td>
                            <g:if test="${customerGroupInstance?.taxIdDisplay}">
                                <input type="radio" value="1" checked="checked" name="taxIdDisplay"> Yes
                                <input type="radio" value="0" name="taxIdDisplay"> No
                            </g:if>
                            <g:else>
                                <input type="radio" value="1" name="taxIdDisplay"> Yes
                                <input type="radio" value="0" checked="checked" name="taxIdDisplay"> No
                            </g:else>
                    </tr>
                    <tr>
                        <td>Tax ID Required:<br><span
                                class="help">Select which customer groups must enter their Tax ID for billing addresses before checkout.</span>
                        </td>
                        <td>
                            <g:if test="${customerGroupInstance?.taxIdRequired}">
                                <input type="radio" value="1" checked="checked" name="taxIdRequired"> Yes
                                <input type="radio" value="0" name="taxIdRequired"> No
                            </g:if>
                            <g:else>
                                <input type="radio" value="1" name="taxIdRequired"> Yes
                                <input type="radio" value="0" checked="checked" name="taxIdRequired"> No
                            </g:else>
                    </tr>
                    <tr><td>Sort Order:</td>
                        <td><input type="text" size="2" value="${customerGroupInstance?.sortOrder}" name="sortOrder">
                        </td>
                    </tr>
                </table>
            </g:form>
        </div>
    </div>
</body>
</html>

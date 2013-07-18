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
            <form id="form" enctype="multipart/form-data" method="post" action="save">
                <table class="form">
                    <tr>
                        <td><span class="required">*</span> Customer Group Name:</td>
                        <td><input type="text" value="" name="name">
                            <img title="English" src="${resource(dir: 'images', file: 'gb.png')}">
                        </td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td><g:textArea rows="5" cols="40" name="description"/>
                            <img align="top" title="English" src="${resource(dir: 'images', file: 'gb.png')}">
                        </td>
                    </tr>
                    <tr>
                        <td>Approve New Customers:<br><span
                                class="help">Customers must be approved by and administrator before they can login.</span>
                        </td>
                        <td><input type="radio" value="1" name="approval">
                            Yes<input type="radio" checked="checked" value="0" name="approval"> No</td>
                    </tr>
                    <tr>
                        <td>Display Company No.:<br><span class="help">Display a company no. field.</span></td>
                        <td><input type="radio" value="1" name="companyIdDisplay">
                            Yes<input type="radio" checked="checked" value="0" name="companyIdDisplay"> No</td>
                    </tr>
                    <tr>
                        <td>Company No. Required:<br><span
                                class="help">Select which customer groups must enter their company no. for billing addresses before checkout.</span>
                        </td>
                        <td><input type="radio" value="1" name="companyIdRequired">
                            Yes<input type="radio" checked="checked" value="0" name="companyIdRequired"> No</td>
                    </tr>
                    <tr>
                        <td>Display Tax ID.:<br><span class="help">Display a Tax ID. field for billing addresses.</span>
                        </td>
                        <td><input type="radio" value="1" name="taxIdDisplay">
                            Yes<input type="radio" checked="checked" value="0" name="taxIdDisplay"> No</td>
                    </tr>
                    <tr>
                        <td>Tax ID Required:<br><span
                                class="help">Select which customer groups must enter their Tax ID for billing addresses before checkout.</span>
                        </td>
                        <td><input type="radio" value="1" name="taxIdRequired">
                            Yes<input type="radio" checked="checked" value="0" name="taxIdRequired"> No</td>
                    </tr>
                    <tr><td>Sort Order:</td>
                        <td><input type="text" size="1" value="" name="sortOrder"></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>

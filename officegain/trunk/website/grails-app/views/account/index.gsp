<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Shopkul.com</title>
</head>

<body>
<div id="main_container"><br/><br/>

    <div align="center" style="width: 100%">
        <a href="${request.contextPath}/account">
            <img src="${resource(dir: 'images', file: 'account_settings_selected.png')}" alt="Account Setttings" border="0"/>
        </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="${request.contextPath}/account/address">
            <img src="${resource(dir: 'images', file: 'shipping_address_unselected.png')}" alt="Shipping Address" border="0"/>
        </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="${request.contextPath}/account/orders">
            <img src="${resource(dir: 'images', file: 'my_orders_unselected.png')}" alt="My Orders" border="0"/>
        </a>
    </div>
    <br/>

    <div id="account_settings" align="center" class="cartRow2ValueText" style="font-weight: normal;">
        <br/>
        <br/>

        <div id="messageDiv" class="message">
            <g:if test="${flash.message}">${flash.message}</g:if>
        </div>

        <g:hasErrors bean="${userDetailsCommand?.errors}">
            <div class="message">
                <g:renderErrors bean="${userDetailsCommand}"/>
            </div>
        </g:hasErrors>

        <g:hasErrors bean="${changePasswordCommand?.errors}">
            <div class="message">
                <g:renderErrors bean="${changePasswordCommand}"/>
            </div>
        </g:hasErrors>

        <div id="input_fields_div">
            <table width="100%">
                <tr>
                    <td width="50%" valign="top">
                        <g:form action="updateUserDetails" method="post">
                            <table width="100%">
                                <tbody>
                                <tr>
                                    <td colspan="2" align="center"><b>User Information</b></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">&nbsp;</td>
                                </tr>

                                <tr>
                                    <td align="right"><label for="firstname">First Name</label></td>
                                    <td>
                                        <input type="text" name="firstName" size="30" id="firstName" value="${userDetailsCommand?.firstName}"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"><label for="lastname">Last Name</label></td>
                                    <td>
                                        <input type="text" name="lastName" value="${userDetailsCommand?.lastName}" size="30" id="lastname"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"><label for="gender">Gender</label></td>
                                    <td>
                                        <input type="text" name="gender" value="${userDetailsCommand?.gender}" size="30" id="gender"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"><label for="telephone">Mobile Number</label></td>
                                    <td>
                                        <input type="text" name="telephone" value="${userDetailsCommand?.telephone}" size="30" id="telephone"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label style="color: #0033AA;"></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <input type="image" alt="Update" title="Update" src="${resource(dir: 'images', file: 'update.png')}" id="Update_Button">
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </g:form>
                    </td>
                    <td width="50%" valign="top">
                        <g:form action="passwordUpdate" method="post">
                            <table width="100%">
                                <tbody>
                                <tr>
                                    <td colspan="2" align="center"><b>Change Account Password</b></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right"><label for="password">Old Password *</label></td>
                                    <td><input type="password" name="password" value="${changePasswordCommand?.password}" size="30" id="password"/></td>
                                </tr>
                                <tr>
                                    <td align="right"><label for="newPassword">New Password *</label></td>
                                    <td><input type="password" name="newPassword" value="${changePasswordCommand?.newPassword}" size="30" id="newPassword"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label for="repeatPassword">Repeat Password *</label>
                                    </td>
                                    <td>
                                        <input type="password" name="repeatPassword" value="${changePasswordCommand?.repeatPassword}" size="30"
                                               id="repeatPassword"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label style="color: #0033AA;"></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <span style="color: #FF0000;">&nbsp;</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <input type="image" alt="Update" title="Update" src="${resource(dir: 'images', file: 'update.png')}">
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </g:form>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>
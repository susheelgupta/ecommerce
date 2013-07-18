<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Maali Login</title>
</head>

<body>

<div id="main_container">
    <div id="login" align="center" class="cartRow2ValueText" style="font-weight: normal;">
        <br>
        <br>

        <div style="color: #666666; font-size: 16px;" align="left"
             class="cartRow2KeyText">Signing up to <b>Maali.com</b> is fast and simple.
            <a href="${request.contextPath}/login/auth" style="margin-left: 480px">Register as an Individual</a>
        </div>
        <br/>
        <br>

        <div id="input_fields_div">
            <table>
                <tr>
                    <div id="messageDiv" class="message">
                        <g:if test="${flash.message}">${flash.message}</g:if>
                    </div>
                    <td width="50%" valign="top">
                        <form action='${request.contextPath}/j_spring_security_check' method='POST'>
                            <table>
                                <tr>
                                    <td colspan="2"
                                        align="center"><b>Login</b> to your existing Maali account <br/></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <label for="username">Enter your <b>Email Address</b> *</label>
                                    </td>
                                    <td>
                                        <input type='text' class='text_' name='j_username' id='username' size="30"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"><label for="password">Enter <b>Password</b> *</label></td>
                                    <td>
                                        <input type='password' class='text_' name='j_password' id='password' size="30"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center"><span style="color: #FF0000;">&nbsp;</span> <br/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <input type="image" alt="Log in" title="Log in"
                                               src="${resource(dir: 'images', file: 'login.png')}"
                                               id="login_button"><br>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">Forgot your password? <b>
                                        <g:link controller="register" action="forgotPassword">Click here</g:link></b>.
                                        <br/>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </td>
                    <td width="50%" valign="top">
                        <g:if test='${emailSent}'>
                            <div class="message"><br/> Registraton mail sent to you successfully.</div>
                        </g:if>
                        <g:hasErrors bean="${command?.errors}">
                            <div class="message">
                                <g:renderErrors bean="${command}"/>
                            </div>
                        </g:hasErrors>
                        <g:form controller="register" action="registerInstitution" method="post">
                            <table>
                                <tr>
                                    <td colspan="2" align="center"><b>Create</b> a new Maali account</td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">&nbsp;</td>
                                </tr>
                                %{--<tr>--}%
                                %{--<td align="right"><label for="name">Enter your <b>Name</b> *</label></td>--}%
                                %{--<td><input type="text" name="name" size="30" id="name"--}%
                                %{--value="${command?.name}"/></td>--}%
                                %{--</tr>--}%
                                <tr>
                                    <td align="right"><label for="emailAddress">Enter your <b>Email Address</b> *</label></td>
                                    <td><input type="text" name="emailAddress" size="30" id="emailAddress"
                                               value="${command?.emailAddress}"/></td>
                                </tr>
                                <tr>
                                    <td align="right"><label for="password">Enter <b>Password</b> *</label></td>
                                    <td><input type="password" name="password" size="30" name="password"
                                               value="${command?.password}"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"><label for="repeatPassword"><b>Repeat Password</b> *</label></td>
                                    <td>
                                        <input type="password" name="repeatPassword" size="30" id="repeatPassword"
                                               value="${command?.repeatPassword}"/>
                                    </td>
                                </tr>
                                %{--<tr>--}%
                                %{--<td align="right"><label for="type">Enter your<b>Type</b> *</label></td>--}%
                                %{--<td><input type="text" name="type" size="30" id="type" value="${command?.type}"/></td>--}%
                                %{--</tr>--}%
                                %{--<tr>--}%
                                %{--<td align="right"><label for="address">Enter your <b>Address</b> *</label></td>--}%
                                %{--<td><input type="text" name="address" size="30" id="address" value="${command?.address}"/></td>--}%
                                %{--</tr>--}%
                                %{--<tr>--}%
                                %{--<td align="right"><label for="phone">Enter your <b>Phone No</b> *</label></td>--}%
                                %{--<td><input type="text" name="phone" size="30" id="phone" value="${command?.phone}"/></td>--}%
                                %{--</tr>--}%
                                %{--<tr>--}%
                                %{--<td align="right"><label for="phoneExt">Enter your <b>Phone Ext</b> *</label></td>--}%
                                %{--<td><input type="text" name="phoneExt" size="30" id="phoneExt" value="${command?.phoneExt}"/></td>--}%
                                %{--</tr>--}%
                                %{--<tr>--}%
                                %{--<td align="right"><label for="emailAddress">Enter your <b>Email-1</b> *</label></td>--}%
                                %{--<td><input type="text" name="email1" size="30" id="email1" value="${command?.email1}"/></td>--}%
                                %{--</tr>--}%
                                %{--<tr>--}%
                                %{--<td align="right"><label for="email2">Enter your <b>Email-2</b> *</label></td>--}%
                                %{--<td><input type="text" name="email2" size="30" id="email2" value="${command?.email2}"/></td>--}%
                                %{--</tr>--}%
                                %{--<tr>--}%
                                %{--<td align="right"><label for="currency">Enter your <b>Currency</b> *</label></td>--}%
                                %{--<td><input type="text" name="currency" size="30" id="currency" value="${command?.currency}"/></td>--}%
                                %{--</tr>--}%
                                %{--<tr>--}%
                                %{--<td align="right"><label for="annualMembershipAmount">Enter your <b>Annual Membership Amount</b> *</label></td>--}%
                                %{--<td><input type="text" name="annualMembershipAmount" size="30" id="annualMembershipAmount"--}%
                                %{--value="${command?.annualMembershipAmount}"/></td>--}%
                                %{--</tr>--}%
                                %{--<tr>--}%
                                %{--<td align="right"><label for="emailAddress">Enter your <b>Membership Fee</b> *</label></td>--}%
                                %{--<td><g:checkBox name="membershipFee" value="${command?.membershipFee}"/></td>--}%
                                %{--</tr>--}%

                                <tr>
                                    <td colspan="2" align="center">
                                        <input type="image" alt="Registration" title="Registration"
                                               src="${resource(dir: 'images', file: 'registration.png')}"
                                               id="Registration_button" style="padding: 1px;">
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <span style="font-size: 90%; color: #666666;">While creating a new account, give a frequently used email address. All correspondence will be done through this address.</span>
                                        <br>
                                    </td>
                                </tr>
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
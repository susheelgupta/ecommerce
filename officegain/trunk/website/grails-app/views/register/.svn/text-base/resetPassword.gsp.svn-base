<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
</head>

<body>
<div id="main_container"><br>
    <table width="98%" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
        <tbody>
        <tr>
            <td>
                <h1 align="left">Reset your password</h1>

                <g:if test="${flash.message}">
                    <div class="message">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${command?.errors}">
                    <div class="message"><g:renderErrors bean="${command}"/></div>
                </g:hasErrors>

                <div style="font-family: Verdana, Arial, sans-serif;">
                    <br>

                    <div align="justify" style="font-size: 12px; color: #333333">
                        <br>

                        <p>Type the new password twice to sign in to your ShopKul Account.</p>
                        <br>

                        <form action="resetPassword" method="post">
                            <g:hiddenField name='t' value='${token}'/>
                            <table>
                                <tr>
                                    <td>
                                        <label>Password <input type="password" name="password" size="18" value="${command?.password}"></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Password <input type="password" name="repeatPassword" size="18" value="${command?.repeatPassword}"></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="submit" value="Submit" class="button">
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                    <br>
                </div>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
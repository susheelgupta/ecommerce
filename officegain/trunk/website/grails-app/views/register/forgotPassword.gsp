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
                <h1 align="left">Forgot your password</h1>

                <g:if test="${flash.message}">
                    <div class="message">${flash.message}</div>
                </g:if>
                <g:if test="${emailSent}">
                    <div class="message"><g:message code="spring.security.ui.forgotPassword.sent"/></div>
                </g:if>
                <div style="font-family: Verdana, Arial, sans-serif;">
                    <br>

                    <div align="justify" style="font-size: 12px; color: #333333">
                        <br>

                        <p>To reset your password, type the full email address you use to sign in to your ShopKul Account.</p>
                        <br>

                        <form action="forgotPassword" method="post">
                            <label>Email address <input type="text" name="emailAddress" size="18"></label>
                            <input type="submit" value="Submit" class="button">
                        </form>
                        <br>
                        <br>

                        <p>If you have forgotten user primary email address(username) then you will have to create a new ShopKul Account.</p>
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
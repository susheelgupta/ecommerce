<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="login_layout"/>
</head>

<body>
<div id="content">
    <div class="box"
         style="width: 400px; min-height: 300px; margin-top: 40px; margin-left: auto; margin-right: auto;">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'lockscreen.png')}"
                     alt=""/> Please enter your login details.</h1>
        </div>

        <div class="content" style="min-height: 150px; overflow: hidden;">
            %{--<div class="warning">Invalid token session. Please login again.</div>--}%

            <div id="messageDiv" class="message">
                <g:if test="${flash.message}">${flash.message}</g:if>
            </div>


            <form action="${request.contextPath}/j_spring_security_check" method="post" id="form">
                <table style="width: 100%;">
                    <tr>
                        <td style="text-align: center;" rowspan="4"><img
                                src="${resource(dir: 'images', file: 'login.png')}"
                                alt="Please enter your login details."/>
                        </td>
                    </tr>
                    <tr>
                        <td>Username:<br/>
                            <input type="text" class='text_' name='j_username' id='username' style="margin-top: 4px;"/>
                            <br/>
                            <br/>
                            Password:<br/>
                            <input type="password" class='text_' name='j_password' id='password'
                                   style="margin-top: 4px;"/>
                            <br/>
                            <g:link controller="register" action="forgotPassword">Forgotten Password</g:link>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: right;"><a onclick="$('#form').submit();" id="login_button"
                                                          class="button">Login</a>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
</body>
</html>
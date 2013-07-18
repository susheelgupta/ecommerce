<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>:: Maali ::</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'stylesheet.css')}" type="text/css">
</head>

<body>
<div class="header">
    <div class="logodiv"><img src="${resource(dir: 'images', file: 'logo.png')}" alt="Logo"/></div>

    <div class="maindiv"><div class="headerdivone"><a href="#;" class="buttons">Login</a></div></div>
</div>

<div class="header1">
</div>

<div class="bodyarea">
    <div class="loginbox">
        <div class="rowone">Sign Up & Start Right Away</div>

        <div class="rowtwo"><img src="${resource(dir: 'images', file: 'register_fb_button.png')}" alt="#;" width="208" height="33"/></div>

        <div class="rowthree"><img src="${resource(dir: 'images', file: 'or_image.png')}" alt="Or" width="427" height="12"/></div>

        <div>
            <g:if test='${emailSent}'>
                <div class="message"><br/> Registraton mail sent to you successfully.</div>
            </g:if>
            <g:hasErrors bean="${command?.errors}">
                <div class="message">
                    <g:renderErrors bean="${command}"/>
                </div>
            </g:hasErrors>

            <g:form controller="register" action="register" method="post" name="registerForm">

                <div class="rowfour">
                    <div class="title">Email</div>

                    <div class="textfield">
                        <input type="text" class="inputfield" name="emailAddress" id="emailAddress" value="${command?.emailAddress}"/>
                    </div>
                </div>

                <div class="rowfour paddingtop">
                    <div class="title">Password</div>

                    <div class="textfield">
                        <input type="password" class="inputfield" name="password" id="password" value="${command?.password}"/>
                    </div>
                </div>

                <div class="rowfour paddingtop">
                    <div class="title">Confirm Password</div>

                    <div class="textfield">
                        <input type="password" name="repeatPassword" class="inputfield" id="repeatPassword" value="${command?.repeatPassword}"/>
                    </div>
                </div>

                <div class="rowfour paddingtop">
                    <div class="title"></div>

                    <div class="textfield">
                        <div class="textfield"><a href="" onclick="document.getElementById('registerForm').submit();
                        return false;" class="reg_button">REGISTER</a></div>
                    </div>
                </div>
            </g:form>
        </div>

        <div class="rowfour paddingtop">
            <div class="title"></div>

            <div class="textfield blksmall">By clicking the register button above, you agree to
            the Runtastic terms of service.</div>
        </div>
    </div>
</div>

<div class="footer">
    <div class="maindiv">
        <div class="footerpanel"><strong>APPS</strong><br/>
            <a href="#;" class="whitelink">ANDROID</a><br/>
            <a href="#;" class="whitelink">BLACKBERRY</a><br/>
            <a href="#;" class="whitelink">IOS</a><br/>
            <a href="#;" class="whitelink">WINDOWS</a><br/>
            <a href="#;" class="whitelink">SYMBION</a></div>

        <div class="footerpanel"><strong>MAALI.COM</strong><br/>
            <a href="#;" class="whitelink">ABOUT US</a><br/>
            <a href="#;" class="whitelink">FORUMS</a><br/>
            <a href="#;" class="whitelink">BLOGS</a><br/>
            <a href="#;" class="whitelink">WHY MAALI?</a><br/>
            <a href="#;" class="whitelink">TESTIMONIALS</a><br/>
            <a href="#;" class="whitelink">CONTACT</a><br/>
            <a href="#;" class="whitelink">Q &amp; A</a>
        </div>

        <div class="footerpanel"><strong>GET IN TOUCH</strong><br/>
            1800 200 200<br/>
            info@maali.com<br/>
        </div>

        <div class="footerpanel">TOOLS<br/>
            <a href="#;" class="whitelink">TOOL FOR MAALI.COM</a><br/>
            <a href="#;" class="whitelink">MAALI.COM TOOL</a><br/>
            <a href="#;" class="whitelink">ANOTHER TOOL</a><br/>
        </div>

        <div class="footerpane2">
            <div class="footerraw1"><strong>SUBSCRIBE FOR NEWSLETTER</strong></div>

            <div class="footerraw1"><input type="text" name="textfield" class="footerinput" id="textfield"/></div>

            <div class="footerraw1 padtb"><a href="#;" class="buttons">Subscribe</a></div>
        </div>
    </div>
</div>

<div class="endfooter">
    <div class="maindiv">Copyright © 2013 maali.com all rights reserved</div>
</div>
</body>
</html>

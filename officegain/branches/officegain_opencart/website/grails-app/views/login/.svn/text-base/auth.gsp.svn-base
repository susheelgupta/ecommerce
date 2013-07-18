<%--
  Created by IntelliJ IDEA.
  User: Susheel
  Date: 1/16/13
  Time: 12:51 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.cookie.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.colorbox.js')}"></script>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'colorbox.css')}" media="screen"/>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'tabs.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'common.js')}"></script>
    <meta name="layout" content="main"/>

</head>

<body>
<div id="notification"></div>

<div id="column-right">
    <div class="box">
        <div class="box-heading">Account</div>

        <div class="box-content">
            <ul>
                <li><a href="#">Login</a> / <a
                        href="#">Register</a>
                </li>
                <li><a href="#">Forgotten Password</a>
                </li>
                <li><a href="#">My Account</a>
                </li>
                <li><a href="#">Wish List</a>
                </li>
                <li><a href="#">Order History</a>
                </li>
                <li><a href="#">Downloads</a>
                </li>
                <li><a href="#">Returns</a></li>
                <li><a href="#">Transactions</a>
                </li>
                <li><a href="#">Newsletter</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div id="content">  <div class="breadcrumb">
    <a href="http://localhost/opencart_v1.5.4.1/upload/index.php?route=common/home">Home</a>
&raquo; <a href="http://localhost/opencart_v1.5.4.1/upload/index.php?route=account/account">Account</a>
&raquo; <a href="http://localhost/opencart_v1.5.4.1/upload/index.php?route=account/login">Login</a>
</div>
    <h1>Account Login</h1>
    <div class="login-content">
        <div class="left">
            <h2>New Customer</h2>
            <div class="content">
                <p><b>Register Account</b></p>
                <p>By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.</p>
                <a href="http://localhost/opencart_v1.5.4.1/upload/index.php?route=account/register" class="button">Continue</a></div>
        </div>
        <div class="right">
            <h2>Returning Customer</h2>
            <form action="${request.contextPath}/Login" method="post" enctype="multipart/form-data">
                <div class="content">
                    <p>I am a returning customer</p>
                    <b>E-Mail Address:</b><br />
                    <input type="text" name="email" value="" />
                    <br />
                    <br />
                    <b>Password:</b><br />
                    <input type="password" name="password" value="" />
                    <br />
                    <a href="#">Forgotten Password</a><br />
                    <br />
                    <input type="submit" value="Login" class="button" />
                </div>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
    if (e.keyCode == 13) {
        $('#login').submit();
    }
});
//--></script>





</body>
</html>
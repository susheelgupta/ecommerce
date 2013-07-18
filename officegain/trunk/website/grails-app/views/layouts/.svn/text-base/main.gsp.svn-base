<%@ page import="com.officegain.enigma.base.Customer" %>
<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <g:javascript library="jquery"/>
    <resource:accordion skin="default"/>
    <resource:carousel/>
    <resource:treeView/>
    <r:require module="jquery-ui"/>
    <r:layoutResources/>
    <g:layoutHead/>
    <resource:autoComplete skin="default"/>
</head>

<body>
<table id="header">
    <tr>
        <td width="30%">
            <div id="logo">
                <table cellpadding="0" cellspacing="0" border="0">
                    <tr>
                        <td>
                            <a href="${request.contextPath}/" style="text-decoration: none">
                                <img src="${resource(dir: 'images', file: 'officegain_logo.png')}" alt="Officegain"/>
                                <br/>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <a href="/" style="text-decoration: none">
                                <font style="font-size: 13px" face="comic sans ms">Discover and Buy Products</font>
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </td>
        <td width="70%" valign="top">
            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td align="right" style="padding: 10px;">
                        <table cellpadding="0" cellspacing="0" border="0">
                            <tr>
                                <td>
                                    <a href="${request.contextPath}/">
                                        <img src="${resource(dir: 'images', file: 'home_icon.jpg')}"
                                             alt="Officegain.com"
                                             border="0"
                                             style="background: transparent;"/>
                                    </a>
                                </td>
                                <td>&nbsp;&nbsp;<a href="${request.contextPath}/">Home</a>&nbsp; | &nbsp;&nbsp;</td>
                                <td>
                                    &nbsp;|&nbsp;
                                    <a href="${request.contextPath}/login">
                                        <img src="${resource(dir: 'images', file: 'login_icon.png')}"
                                             alt="Officegain.com"
                                             border="0"
                                             style="background: transparent;"/>
                                    </a>
                                </td>
                                <td>&nbsp;&nbsp;
                                    <sec:ifNotLoggedIn><a
                                            href="${request.contextPath}/login">Login / SignUp</a></sec:ifNotLoggedIn>
                                    <sec:ifLoggedIn>Hi <sec:username/> <a
                                            href="${request.contextPath}/logout">Logout</a></sec:ifLoggedIn>
                                </td>
                                <td>&nbsp;&nbsp;|&nbsp;&nbsp;
                                    <a href="${request.contextPath}/cart">
                                        <img src="${resource(dir: 'images', file: 'cart_icon.png')}" alt="ShopKul.com"
                                             border="0" style="background: transparent;"/>
                                    </a>
                                </td>
                                <td>&nbsp;&nbsp;<a
                                        href="${request.contextPath}/cart">Officegain Cart</a>&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    <a href="${request.contextPath}/account">
                                        <img src="${resource(dir: 'images', file: 'account_icon.jpg')}" border="0"/>
                                    </a>
                                </td>
                                <td>&nbsp;&nbsp;<a href="${request.contextPath}/account">My Account</a>
                                </td>
                                <td>&nbsp;&nbsp;|&nbsp;&nbsp;
                                    <a href="${request.contextPath}/faq">
                                        <img src="${resource(dir: 'images', file: 'help_icon.jpg')}" border="0"/>
                                    </a>
                                </td>
                                <td>&nbsp;&nbsp;<a href="${request.contextPath}/faq">Help &amp; FAQ</a></td>
                                <td>&nbsp;&nbsp;|&nbsp;
                                    <a href="${request.contextPath}/contact">
                                        <img src="${resource(dir: 'images', file: 'email.gif')}" border="0"
                                             align="bottom"/>
                                    </a>
                                </td>
                                <td>&nbsp;&nbsp;<a href="${request.contextPath}/contact">Contact Us</a></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:form method="get" controller="GenericSearchable">
                            <richui:autoComplete name="q"
                                                 action="${createLinkTo('dir': 'GenericSearchable/searchAJAX')}"/>
                            <g:submitButton name="search"/>
                        </g:form>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div id="opening-shortly" class="center_title_bar" align="right"
                             style="color:#FF9900">Free Shipping In India&nbsp;&nbsp;&nbsp;&nbsp;</div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<div id="menu_tab">
    <ul class="menu">
    </ul>
</div>

<div id="main_container">
    <g:layoutBody/>
</div>

<div class="footer_bg"><!--Start_Company-->
    <div class="cl10">&nbsp;</div>
    <table width="100%" cellpadding="5" cellspacing="5">
        <tr>
            <td align="center" style="margin-left: 20%">
                <div style="margin-left: 5%">
                    <div style="width: 20%;" class="footer_data" align="left">
                        <b>Support</b>
                        <br/>
                        <a title="Contact Us" href="${request.contextPath}/contact">Contact Us</a>
                        <br/>
                        <a title="Payments" href="${request.contextPath}/payment">Payments</a>
                        <br/>
                        <a title="Shipping &amp; Returns"
                           href="${request.contextPath}/shippingInfo">Shipping &amp; Returns</a>
                        <br/>
                        <a title="Help &amp; FAQs" href="${request.contextPath}/faq">Help &amp; FAQs</a>
                        <br/>
                    </div>

                    <div style="width: 20%;" class="footer_data" align="left"><b>About Us</b>
                        <br/>
                        <a title="About Us" href="${request.contextPath}/about">About us</a><br/>
                    </div>

                    <div style="width: 15%;" class="footer_data" align="left"><b>Browse</b><br/>
                        <a title="" href="${request.contextPath}/product/list">Products List</a><br/>
                        <a title="" href="${request.contextPath}/manufacturer/list">Manufacturers List</a><br/>

                    </div>

                    <div style="width: 20%;" class="footer_data">&nbsp;</div>

                    <div style="width: 20%;" class="footer_data" align="left">
                        <div id="poDiv">
                            <img border="1" src="${resource(dir: 'images', file: 'payment_options.GIF')}"
                                 alt="Axis Bank"/>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="footer_data_small" align="center">
                    <table style="padding: 5px 5px 5px 5px;" width="100%">
                        <tr>
                            <td align="left" width="30%">Usage Policies: &nbsp;<a
                                    href="${request.contextPath}/terms">Terms Of Use</a> &nbsp;
                                <a href="${request.contextPath}/privacy">Privacy</a> &nbsp;
                                <a href="${request.contextPath}/security">Security</a>
                            </td>
                            <td align="left" style="margin-left: 30%"
                                width="70%">&copy;  Copyright 2012, all rights reserved with Officegain</td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    <!--End_Company--></div>
</body>
</html>

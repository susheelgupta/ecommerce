<%--
  Created by IntelliJ IDEA.
  User: Susheel
  Date: 12/19/12
  Time: 4:05 PM
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
    <meta charset="UTF-8"/>
    <title><g:layoutTitle default="OfficeCart"/></title>
    %{--<meta name="description" content="My Store"/>--}%
    <link rel="icon" href="${resource(dir: 'images', file: 'cart.png')}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'stylesheet.css')}"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'carousel.css')}" media="screen"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'slideshow.css')}" type="text/css" media="screen">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.7.1.min.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-ui-1.8.16.custom.min.js')}"></script>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'jquery-ui-1.8.16.custom.css')}"/>

    <!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'ie7.css')}" />
    <![endif]-->
    <!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'ie6.css')}" />
    <script type="text/javascript" src="${resource(dir: 'js', file: 'DD_belatedPNG_0.0.8a-min.js')}"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('#logo img');
    </script>
    <![endif]-->
    <g:layoutHead/>
</head>

<body>
<div id="container">
<div id="header">
    <div id="logo">
        <a href="#">
            <img src="${resource(dir: 'images', file: 'logo.png')}" title="Your Store" alt="Your Store"/>
        </a>
    </div>

    <form action="#" method="post"
          enctype="multipart/form-data">
        <div id="currency">Currency<br/>
            <a title="Euro" onclick="$('input[name=\'currency_code\']').attr('value', 'EUR');
            $(this).parent().parent().submit();">€</a>
            <a title="Pound Sterling" onclick="$('input[name=\'currency_code\']').attr('value', 'GBP');
            $(this).parent().parent().submit();">£</a>
            <a title="US Dollar"><b>$</b></a>
            <input type="hidden" name="currency_code" value=""/>
            <input type="hidden" name="redirect"
                   value="#"/>
        </div>
    </form>

    <div id="cart">
        <div class="heading">
            <h4>Shopping Cart</h4>
            <a><span id="cart-total">0 item(s) - $0.00</span></a></div>

        <div class="content">
            <div class="empty">Your shopping cart is empty!</div>
        </div>
    </div>

    <div id="search">
        <div class="button-search"></div>
        <input type="text" name="filter_name" value="Search" onclick="this.value = '';"
               onkeydown="this.style.color = '#000000';"/>
    </div>

    <div id="welcome">
        Welcome visitor you can
        <a href="${request.contextPath}/login">login</a> or
        <a href="${request.contextPath}/account/register">create an account</a>.
    </div>

    <div class="links"><a href="${request.contextPath}">Home</a><a
            href="#" id="wishlist-total">Wish List (0)</a><a
            href="#">My Account</a><a
            href="#">Shopping Cart</a><a
            href="#">Checkout</a></div>
</div>

<div id="menu">
    <ul>
        <li><a href="${request.contextPath}/category/list/24">Desktops</a>

            <div>
                <ul>
                    <li><a href="${request.contextPath}/category">PC</a>
                    </li>
                    <li><a href="${request.contextPath}/category">Mac</a>
                    </li>
                </ul>
            </div>
        </li>
        <li><a href="#">Laptops &amp; Notebooks</a>

            <div>
                <ul>
                    <li><a href="#">Macs</a>
                    </li>
                    <li><a href="#">Windows</a>
                    </li>
                </ul>
            </div>
        </li>
        <li><a href="#">Components</a>

            <div>
                <ul>
                    <li><a href="#">Mice and Trackballs</a>
                    </li>
                    <li><a href="#">Monitors</a>
                    </li>
                    <li><a href="#">Printers</a>
                    </li>
                    <li><a href="#">Scanners</a>
                    </li>
                    <li><a href="#">Web Cameras</a>
                    </li>
                </ul>
            </div>
        </li>
        <li><a href="#">Tablets</a>
        </li>
        <li><a href="#">Software</a>
        </li>
        <li><a href="#">Phones &amp; PDAs</a>
        </li>
        <li><a href="#">Cameras</a>
        </li>
        <li><a href="#">MP3 Players</a>

            <div>
                <ul>
                    <li><a href="#">test 11</a>
                    </li>
                    <li><a href="#">test 12</a>
                    </li>
                    <li><a href="#">test 15</a>
                    </li>
                    <li><a href="#">test 16</a>
                    </li>
                    <li><a href="#">test 17</a>
                    </li>
                </ul>
                <ul>
                    <li><a href="#">test 18</a>
                    </li>
                    <li><a href="#">test 19</a>
                    </li>
                    <li><a href="#">test 20</a>
                    </li>
                    <li><a href="#">test 21</a>
                    </li>
                    <li><a href="#">test 22</a>
                    </li>
                </ul>
                <ul>
                    <li><a href="#">test 23</a>
                    </li>
                    <li><a href="#">test 24</a>
                    </li>
                    <li><a href="#">test 4</a>
                    </li>
                    <li><a href="#">test 5</a>
                    </li>
                    <li><a href="#">test 6</a>
                    </li>
                </ul>
                <ul>
                    <li><a href="#">test 7</a>
                    </li>
                    <li><a href="#">test 8</a>
                    </li>
                    <li><a href="#">test 9</a>
                    </li>
                </ul>
            </div>
        </li>
    </ul>

</div>
<g:layoutBody/>
<div id="footer">
    <div class="column">
        <h3>Information</h3>
        <ul>
            <li><a href="#">About Us</a>
            </li>
            <li><a href="#">Delivery Information</a>
            </li>
            <li><a href="#">Privacy Policy</a>
            </li>
            <li><a href="#">Terms &amp; Conditions</a>
            </li>
        </ul>
    </div>

    <div class="column">
        <h3>Customer Service</h3>
        <ul>
            <li><a href="#">Contact Us</a>
            </li>
            <li><a href="#">Returns</a>
            </li>
            <li><a href="#">Site Map</a>
            </li>
        </ul>
    </div>

    <div class="column">
        <h3>Extras</h3>
        <ul>
            <li><a href="#">Brands</a>
            </li>
            <li><a href="#">Gift Vouchers</a>
            </li>
            <li><a href="#">Affiliates</a>
            </li>
            <li><a href="#">Specials</a>
            </li>
        </ul>
    </div>

    <div class="column">
        <h3>My Account</h3>
        <ul>
            <li><a href="#">My Account</a>
            </li>
            <li><a href="#">Order History</a>
            </li>
            <li><a href="#">Wish List</a>
            </li>
            <li><a href="#">Newsletter</a>
            </li>
        </ul>
    </div>
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<div id="powered">Powered By <a href="http://www.opencart.com">OpenCart</a><br/> Your Store &copy; 2012</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div>
</body>
</html>
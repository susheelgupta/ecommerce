<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Officegain</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery-ui-1.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'stylesheet.css')}" type="text/css">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-ui-1.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'superfish.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'tabs.js')}"></script>
    <script type="text/javascript">
        //-----------------------------------------
        // Confirm Actions (delete, uninstall)
        //-----------------------------------------
        $(document).ready(function () {
            // Confirm Delete
            $('#form').submit(function () {
                if ($(this).attr('action').indexOf('delete', 1) != -1) {
                    if (!confirm('Delete/Uninstall cannot be undone! Are you sure you want to do this?')) {
                        return false;
                    }
                }
            });

            // Confirm Uninstall
            $('a').click(function () {
                if ($(this).attr('href') != null && $(this).attr('href').indexOf('uninstall', 1) != -1) {
                    if (!confirm('Delete/Uninstall cannot be undone! Are you sure you want to do this?')) {
                        return false;
                    }
                }
            });
        });
    </script>
</head>

<body>
<div id="container">
<div id="header">
<div class="div1">
    <div class="div2">
        <img src="${resource(dir: 'images', file: 'logo.png')}" alt="OfficeGain"/></div>

    <div class="div3"><img src="${resource(dir: 'images', file: 'lock.png')}" alt=""
                           style="position: relative; top: 3px;"/>&nbsp;You are logged in as <span><sec:username/></span></div>
</div>

<div id="menu">
<ul class="left" style="display: none;">
    <li id="dashboard"><a
            href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=common/home&amp;token=916f23eeaa53b6034fdb1107f3c8ad47"
            class="top">Dashboard</a></li>
    <li id="catalog"><a class="top">Catalog</a>
        <ul>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=catalog/category&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Categories</a>
            </li>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=catalog/product&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Products</a>
            </li>
            <li><a class="parent">Attributes</a>
                <ul>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=catalog/attribute&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Attributes</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=catalog/attribute_group&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Attribute Groups</a>
                    </li>
                </ul>
            </li>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=catalog/option&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Options</a>
            </li>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=catalog/manufacturer&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Manufacturers</a>
            </li>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=catalog/download&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Downloads</a>
            </li>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=catalog/review&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Reviews</a>
            </li>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=catalog/information&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Information</a>
            </li>
        </ul>
    </li>
    <li id="extension"><a class="top">Extensions</a>
        <ul>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=extension/module&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Modules</a>
            </li>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=extension/shipping&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Shipping</a>
            </li>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=extension/payment&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Payments</a>
            </li>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=extension/total&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Order Totals</a>
            </li>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=extension/feed&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Product Feeds</a>
            </li>
        </ul>
    </li>
    <li id="sale"><a class="top">Sales</a>
        <ul>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=sale/order&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Orders</a>
            </li>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=sale/return&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Returns</a>
            </li>
            <li><a class="parent">Customers</a>
                <ul>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=sale/customer&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Customers</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=sale/customer_group&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Customer Groups</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=sale/customer_blacklist&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">IP Blacklist</a>
                    </li>
                </ul>
            </li>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=sale/affiliate&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Affiliates</a>
            </li>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=sale/coupon&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Coupons</a>
            </li>
            <li><a class="parent">Gift Vouchers</a>
                <ul>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=sale/voucher&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Gift Vouchers</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=sale/voucher_theme&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Voucher Themes</a>
                    </li>
                </ul>
            </li>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=sale/contact&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Mail</a>
            </li>
        </ul>
    </li>
    <li id="system"><a class="top">System</a>
        <ul>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=setting/store&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Settings</a>
            </li>
            <li><a class="parent">Design</a>
                <ul>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=design/layout&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Layouts</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=design/banner&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Banners</a>
                    </li>
                </ul>
            </li>
            <li><a class="parent">Users</a>
                <ul>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=user/user&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Users</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=user/user_permission&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">User Groups</a>
                    </li>
                </ul>
            </li>
            <li><a class="parent">Localisation</a>
                <ul>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=localisation/language&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Languages</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=localisation/currency&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Currencies</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=localisation/stock_status&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Stock Statuses</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=localisation/order_status&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Order Statuses</a>
                    </li>
                    <li><a class="parent">Returns</a>
                        <ul>
                            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=localisation/return_status&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Return Statuses</a>
                            </li>
                            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=localisation/return_action&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Return Actions</a>
                            </li>
                            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=localisation/return_reason&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Return Reasons</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=localisation/country&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Countries</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=localisation/zone&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Zones</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=localisation/geo_zone&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Geo Zones</a>
                    </li>
                    <li><a class="parent">Taxes</a>
                        <ul>
                            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=localisation/tax_class&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Tax Classes</a>
                            </li>
                            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=localisation/tax_rate&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Tax Rates</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=localisation/length_class&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Length Classes</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=localisation/weight_class&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Weight Classes</a>
                    </li>
                </ul>
            </li>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=tool/error_log&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Error Logs</a>
            </li>
            <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=tool/backup&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Backup / Restore</a>
            </li>
        </ul>
    </li>
    <li id="reports"><a class="top">Reports</a>
        <ul>
            <li><a class="parent">Sales</a>
                <ul>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=report/sale_order&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Orders</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=report/sale_tax&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Tax</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=report/sale_shipping&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Shipping</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=report/sale_return&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Returns</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=report/sale_coupon&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Coupons</a>
                    </li>
                </ul>
            </li>
            <li><a class="parent">Products</a>
                <ul>
                    <li><a href="${request.contextPath}/product">Viewed</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=report/product_purchased&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Purchased</a>
                    </li>
                </ul>
            </li>
            <li><a class="parent">Customers</a>
                <ul>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=report/customer_online&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Customers Online</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=report/customer_order&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Orders</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=report/customer_reward&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Reward Points</a>
                    </li>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=report/customer_credit&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Credit</a>
                    </li>
                </ul>
            </li>
            <li><a class="parent">Affiliates</a>
                <ul>
                    <li><a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=report/affiliate_commission&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Commission</a>
                    </li>
                </ul>
            </li>
        </ul>
    </li>
    <li id="help"><a class="top">Help</a>
        <ul>
            <li><a onClick="window.open('http://www.opencart.com');">Homepage</a></li>
            <li><a onClick="window.open('http://www.opencart.com/index.php?route=documentation/introduction');">Documentation</a>
            </li>
            <li><a onClick="window.open('http://forum.opencart.com');">Support Forum</a></li>
        </ul>
    </li>
</ul>
<ul class="right">
    <li id="store"><a onClick="window.open('http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/');"
                      class="top">Store Front</a>
        <ul>
        </ul>
    </li>
    <li id="store"><a class="top"
                      href="${request.contextPath}/logout">Logout</a>
    </li>
</ul>
<script type="text/javascript"><!--
$(document).ready(function () {
    $('#menu > ul').superfish({
        hoverClass:'sfHover',
        pathClass:'overideThisToUse',
        delay:0,
        animation:{height:'show'},
        speed:'normal',
        autoArrows:false,
        dropShadows:false,
        disableHI:false, /* set to true to disable hoverIntent detection */
        onInit:function () {
        },
        onBeforeShow:function () {
        },
        onShow:function () {
        },
        onHide:function () {
        }
    });

    $('#menu > ul').css('display', 'block');
});

function getURLVar(urlVarName) {
    var urlHalves = String(document.location).toLowerCase().split('?');
    var urlVarValue = '';

    if (urlHalves[1]) {
        var urlVars = urlHalves[1].split('&');

        for (var i = 0; i <= (urlVars.length); i++) {
            if (urlVars[i]) {
                var urlVarPair = urlVars[i].split('=');

                if (urlVarPair[0] && urlVarPair[0] == urlVarName.toLowerCase()) {
                    urlVarValue = urlVarPair[1];
                }
            }
        }
    }

    return urlVarValue;
}

$(document).ready(function () {
    route = getURLVar('route');

    if (!route) {
        $('#dashboard').addClass('selected');
    } else {
        part = route.split('/');

        url = part[0];

        if (part[1]) {
            url += '/' + part[1];
        }

        $('a[href*=\'' + url + '\']').parents('li[id]').addClass('selected');
    }
});
//--></script>
</div>
</div>
<g:layoutBody/>
<!--[if IE]>
<script type="text/javascript" src="view/javascript/jquery/flot/excanvas.js"></script>
<![endif]-->
<script type="text/javascript" src="view/javascript/jquery/flot/jquery.flot.js"></script>
<script type="text/javascript"><!--
function getSalesChart(range) {
    $.ajax({
        type:'get',
        url:'index.php?route=common/home/chart&token=916f23eeaa53b6034fdb1107f3c8ad47&range=' + range,
        dataType:'json',
        async:false,
        success:function (json) {
            var option = {
                shadowSize:0,
                lines:{
                    show:true,
                    fill:true,
                    lineWidth:1
                },
                grid:{
                    backgroundColor:'#FFFFFF'
                },
                xaxis:{
                    ticks:json.xaxis
                }
            }

            $.plot($('#report'), [json.order, json.customer], option);
        }
    });
}

getSalesChart($('#range').val());
//--></script>
</div>

<div id="footer"><a href="${resource(con)}">Officegain</a> &copy; 2009-2012 All Rights Reserved.<br/>Version 0.0.1
</div>
</body></html>
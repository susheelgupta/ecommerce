<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Officecart</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'stylesheet.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery-ui-1.8.16.custom.css')}" type="text/css">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.7.1.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery-ui-1.8.16.custom.min.js')}" type="text/javascript"></script>
    <script src="${resource(dir: 'js', file: 'superfish.js')}" type="text/javascript"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'menu.js')}"></script>
    <g:layoutHead/>
</head>

<body>
<div id="container">
    <div id="header">
        <div class="div1">
            <div class="div2">
                <img src="${resource(dir: 'images', file: 'logo.png')}" title="Administration"
                     onclick="location = '${request.contextPath}/common/home'"/>
            </div>

            <div class="div3"><img src="${resource(dir: 'images', file: 'lock.png')}" alt=""
                                   style="position: relative; top: 3px;"/>&nbsp;You are logged in as <span><sec:username/></span>
            </div>
        </div>

        <div id="menu">
            <ul class="left" style="display: none;">
                <li id="dashboard"><a href="${request.contextPath}/common" class="top">Dashboard</a></li>
                <li id="catalog"><a class="top">Catalog</a>
                    <ul>
                        <li><a href="${request.contextPath}/category">Categories</a></li>
                        <li><a href="${request.contextPath}/product">Products</a></li>
                        <li><a class="parent">Attributes</a>
                            <ul>
                                <li><a href="${request.contextPath}/attribute">Attributes</a></li>
                                <li><a href="${request.contextPath}/attributeGroup">Attribute Groups</a></li>
                            </ul>
                        </li>
                        <li><a href="${request.contextPath}/option">Options</a></li>
                        <li><a href="${request.contextPath}/manufacturer">Manufacturers</a></li>
                        <li><a href="${request.contextPath}/download">Downloads</a></li>
                        <li><a href="${request.contextPath}/review">Reviews</a></li>
                        <li><a href="${request.contextPath}/information">Information</a></li>
                    </ul>
                </li>
                <li id="extension"><a class="top">Extensions</a>
                    <ul>
                        <li><a href="${request.contextPath}/module">Modules</a></li>
                        <li><a href="${request.contextPath}/shipping">Shipping</a></li>
                        <li><a href="${request.contextPath}/payment">Payments</a></li>
                        <li><a href="${request.contextPath}/total">Order Totals</a></li>
                        <li><a href="${request.contextPath}/feed">Product Feeds</a></li>
                    </ul>
                </li>
                <li id="sale"><a class="top">Sales</a>
                    <ul>
                        <li><a href="${request.contextPath}/order">Orders</a></li>
                        <li><a href="${request.contextPath}/return">Returns</a></li>
                        <li><a class="parent">Customers</a>
                            <ul>
                                <li><a href="${request.contextPath}/customer">Customers</a></li>
                                <li><a href="${request.contextPath}/customerGroup">Customer Groups</a></li>
                                <li><a href="${request.contextPath}/customerIpBlacklist">IP Blacklist</a></li>
                            </ul>
                        </li>
                        <li><a href="${request.contextPath}/affiliate">Affiliates</a></li>
                        <li><a href="${request.contextPath}/coupon">Coupons</a></li>
                        <li><a class="parent">Gift Vouchers</a>
                            <ul>
                                <li><a href="${request.contextPath}/voucher">Gift Vouchers</a></li>
                                <li><a href="${request.contextPath}/voucherTheme">Voucher Themes</a></li>
                            </ul>
                        </li>
                        <li><a href="${request.contextPath}/contact">Mail</a></li>
                    </ul>
                </li>
                <li id="system"><a class="top">System</a>
                    <ul>
                        <li><a href="${request.contextPath}/setting/store">Settings</a></li>
                        <li><a class="parent">Design</a>
                            <ul>
                                <li><a href="${request.contextPath}/design/layout">Layouts</a></li>
                                <li><a href="${request.contextPath}/design/banner">Banners</a></li>
                            </ul>
                        </li>
                        <li><a class="parent">Users</a>
                            <ul>
                                <li><a href="${request.contextPath}/user">Users</a></li>
                                <li><a href="${request.contextPath}/userGroup">User Groups</a></li>
                            </ul>
                        </li>
                        <li><a class="parent">Localisation</a>
                            <ul>
                                <li><a href="${request.contextPath}/language">Languages</a></li>
                                <li><a href="${request.contextPath}/Currency">Currencies</a></li>
                                <li><a href="${request.contextPath}/stockStatus">Stock Statuses</a></li>
                                <li><a href="${request.contextPath}/orderStatus">Order Statuses</a></li>
                                <li><a class="parent">Returns</a>
                                    <ul>
                                        <li><a href="${request.contextPath}/returnStatus">Return Statuses</a>
                                        </li>
                                        <li><a href="${request.contextPath}/returnAction">Return Actions</a>
                                        </li>
                                        <li><a href="${request.contextPath}/returnReason">Return Reasons</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="${request.contextPath}/country">Countries</a></li>
                                <li><a href="${request.contextPath}/zone">Zones</a></li>
                                <li><a href="${request.contextPath}/geoZone">Geo Zones</a></li>
                                <li><a class="parent">Taxes</a>
                                    <ul>
                                        <li><a href="${request.contextPath}/taxClass">Tax Classes</a></li>
                                        <li><a href="${request.contextPath}/taxRate">Tax Rates</a></li>
                                    </ul>
                                </li>
                                <li><a href="${request.contextPath}/lengthClass">Length Classes</a></li>
                                <li><a href="${request.contextPath}/weightClass">Weight Classes</a></li>
                            </ul>
                        </li>
                        <li><a href="${request.contextPath}/tool/error">Error Logs</a></li>
                        <li><a href="${request.contextPath}/tool/backup">Backup / Restore</a></li>
                    </ul>
                </li>
                <li id="reports"><a class="top">Reports</a>
                    <ul>
                        <li><a class="parent">Sales</a>
                            <ul>
                                <li><a href="${request.contextPath}/saleOrder">Orders</a></li>
                                <li><a href="${request.contextPath}/saleTax">Tax</a></li>
                                <li><a href="${request.contextPath}/saleShipping">Shipping</a></li>
                                <li><a href="${request.contextPath}/saleReturns">Returns</a></li>
                                <li><a href="${request.contextPath}/saleCoupons">Coupons</a></li>
                            </ul>
                        </li>
                        <li><a class="parent">Products</a>
                            <ul>
                                <li><a href="${request.contextPath}/productViewed">Viewed</a></li>
                                <li><a href="${request.contextPath}/productPurchased">Purchased</a></li>
                            </ul>
                        </li>
                        <li><a class="parent">Customers</a>
                            <ul>
                                <li><a href="${request.contextPath}/customerOnline">Customers Online</a></li>
                                <li><a href="${request.contextPath}/customerOrder">Orders</a></li>
                                <li><a href="${request.contextPath}/customerReward">Reward Points</a></li>
                                <li><a href="${request.contextPath}/customerCredit">Credit</a></li>
                            </ul>
                        </li>
                        <li><a class="parent">Affiliates</a>
                            <ul>
                                <li><a href="${request.contextPath}/affiliateCommission">Commission</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li id="help"><a class="top">Help</a>
                    <ul>
                        <li><a onClick="window.open('${request.contextPath}');">Homepage</a></li>
                        <li><a onClick="window.open('${request.contextPath}');">Documentation</a></li>
                        <li><a onClick="window.open('${request.contextPath}');">Support Forum</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="right">
                <li id="store"><a onClick="window.open('${request.contextPath}');" class="top">Store Front</a></li>
                <li id="logout"><a class="top" href="${request.contextPath}/logout">Logout</a></li>
            </ul>
        </div>
    </div>
    <g:layoutBody/>
</div>

<div id="footer">
    <a href="${request.contextPath}">OfficeCart</a> &copy; 2009-2012 All Rights Reserved.<br/>Version 0.0.1
</div>
</body>
</html>
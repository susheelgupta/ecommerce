<%@ page import="com.officegain.enigma.admin.AdminUtil; com.officegain.enigma.base.Category" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/admin/index.php?route=common/home&amp;token=916f23eeaa53b6034fdb1107f3c8ad47">Home</a>
    </div>
    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'home.png')}" alt="" /> Dashboard</h1>
        </div>
        <div class="content">
            <div class="overview">
                <div class="dashboard-heading">Overview</div>
                <div class="dashboard-content">
                    <table>
                        <tr>
                            <td>Total Sales:</td>
                            <td>$0.00</td>
                        </tr>
                        <tr>
                            <td>Total Sales This Year:</td>
                            <td>$0.00</td>
                        </tr>
                        <tr>
                            <td>Total Orders:</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td>No. of Customers:</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td>Customers Awaiting Approval:</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td>Reviews Awaiting Approval:</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td>No. of Affiliates:</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td>Affiliates Awaiting Approval:</td>
                            <td>0</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="statistic">
                <div class="range">Select Range:          <select id="range" onchange="getSalesChart(this.value)">
                    <option value="day">Today</option>
                    <option value="week">This Week</option>
                    <option value="month">This Month</option>
                    <option value="year">This Year</option>
                </select>
                </div>
                <div class="dashboard-heading">Statistics</div>
                <div class="dashboard-content">
                    <div id="report" style="width: 390px; height: 170px; margin: auto;"></div>
                </div>
            </div>
            <div class="latest">
                <div class="dashboard-heading">Latest 10 Orders</div>
                <div class="dashboard-content">
                    <table class="list">
                        <thead>
                        <tr>
                            <td class="right">Order ID</td>
                            <td class="left">Customer</td>
                            <td class="left">Status</td>
                            <td class="left">Date Added</td>
                            <td class="right">Total</td>
                            <td class="right">Action</td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="center" colspan="6">No results!</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

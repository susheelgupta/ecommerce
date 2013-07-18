<%@ page import="com.officegain.enigma.base.OrderTotal" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Shopkul.com</title>
</head>

<body>
<div id="main_container">
    <br/>
    <br/>

    <div align="center" style="width: 100%">
        <a href="${request.contextPath}/account">
            <img src="${resource(dir: 'images', file: 'account_settings_unselected.png')}" alt="Account Setttings"
                 border="0"/>
        </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="${request.contextPath}/account/address">
            <img src="${resource(dir: 'images', file: 'shipping_address_unselected.png')}" alt="Shipping Address"
                 border="0"/>
        </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="${request.contextPath}/account/orders">
            <img src="${resource(dir: 'images', file: 'my_orders_selected.png')}" alt="My Orders" border="0"/>
        </a>
    </div>
    <br/>

    <div class="cartTopContent" style="color: #000000">Your Order Details<br/>
    </div>
    <g:each in="${orderInstances}" var="orderInstance">
        <table width="100%" border="0">
            <tr>
                <td width="60%" align="left">
                    <br/>
                    <br/>

                    <div class="cartTopContent" style="color: #000000">
                        Order Id:
                        <span style="font-weight: normal;">
                            ${orderInstance.id}
                        </span>
                        <br/>
                        Order Status:
                        <span style="font-weight: normal;">
                            ${orderInstance.ordersStatus.name}
                        </span>
                    </div>
                </td>
                <td width="40%" align="center">
                    <div class="cartTopContent" style="color: #000000">
                        Order Created on:
                        <span style="font-weight: normal;">
                            ${orderInstance.datePurchased}
                        </span>
                        <br/>
                    </div>
                </td>
            </tr>
        </table>
        <table width="90%" border="0" style="margin-left: 5%;">
            <tr>
                <td width="20%">
                    <table id="cartTable" cellspacing="0" cellpadding="0" align="left" border="0">
                        <tbody>
                        <tr>
                            <td class="cartTop">
                                <div class="cartTopContent">Shipping Address</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="cartLineBreak cartRow2KeyText" width="100%" valign="top" style="padding: 10px;">
                                <b>${orderInstance.customerName}</b>
                                <br/>
                                <b>${orderInstance.customerStreetAddress}</b>
                                <br/>
                                ${orderInstance.customerCity} - ${orderInstance.customerPostalCode}
                                <br/>
                                ${orderInstance.customerState}
                                <br/>
                                ${orderInstance.customerCountry}
                                <br/>
                                ${orderInstance.customerTelephone}
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </td>
                <td width="80%">
                    <table id="cartTable" cellspacing="0" cellpadding="0" align="left" width="100%">
                        <tbody>
                        <tr>
                            <td class="cartTop">
                                <div class="cartTopContent">Books</div>
                            </td>
                            <td class="cartTop">
                                <div class="cartTopContent">MRP</div>
                            </td>
                            <td class="cartTop">
                                <div class="cartTopContent">Amount</div>
                            </td>
                            <td class="cartTop">
                                <div class="cartTopContent">SubTotal</div>
                            </td>
                        </tr>
                        <g:each in="${orderInstance.orderProducts}" var="orderProduct">
                            <tr>
                                <td width="50%" valign="top" style="padding: 20px;"
                                    class="cartMiddleRowLineBreak cartRow2ValueText">
                                    ${orderProduct.productName}
                                    <br/>
                                    <span style="font-weight: normal">by</span>
                                    <span style="color: #888888">${orderProduct.productModel}</span>
                                </td>
                                <td class="cartMiddleRowLineBreak cartRow2ValueText">
                                    <img style="margin-right: 2px; vertical-align: middle;" alt="Rs"
                                         src="${resource(dir: 'images', file: 'inr_symbol.gif')}">${Math.round(orderProduct.productPrice)}
                                </td>
                                <td class="cartMiddleRowLineBreak cartRow2ValueText">
                                    <img style="margin-right: 2px; vertical-align: middle;" alt="Rs"
                                         src="${resource(dir: 'images', file: 'inr_symbol.gif')}">${Math.round(orderProduct.productPrice)} * ${Math.round(orderProduct.productQuantity)}
                                </td>
                                <td class="cartMiddleRowLineBreak cartRow2ValueText">
                                    <img style="margin-right: 2px; vertical-align: middle;" alt="Rs"
                                         src="${resource(dir: 'images', file: 'inr_symbol.gif')}">${Math.round(orderProduct.productPrice * orderProduct.productQuantity)}
                                </td>
                            </tr>
                        </g:each>
                        <tr>
                            <td align="right" colspan="4">
                                <table width="100%" cellspacing="5" cellpadding="0" border="0" align="right"
                                       style="font-size: 18px; color: rgb(0, 0, 0);">
                                    <tbody>
                                    <tr>
                                        <td width="80%" align="right">Total</td>
                                        <td width="20%" align="left"
                                            style="color: rgb(102, 102, 102); padding-left: 20px;">
                                            <img style="margin-right: 2px; vertical-align: middle;" alt=""
                                                 src="${resource(dir: 'images', file: 'inr_symbol.gif')}"/>
                                            ${OrderTotal.findByTitleAndOrder('Total', orderInstance).value}
                                    </tr>

                                    <tr>
                                        <td width="80%" align="right">Tax</td>
                                        <td width="20%" align="left"
                                            style="color: rgb(102, 102, 102); padding-left: 20px;">
                                            <img style="margin-right: 2px; vertical-align: middle;" alt=""
                                                 src="${resource(dir: 'images', file: 'inr_symbol.gif')}">${Math.round(OrderTotal.findByTitleAndOrder('Tax', orderInstance).value)}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="80%" align="right">Grand Total</td>
                                        <td width="20%" style="color: rgb(102, 102, 102); padding-left: 20px;">
                                            <img style="margin-right: 2px; vertical-align: middle;" alt=""
                                                 src="${resource(dir: 'images', file: 'inr_symbol.gif')}">${Math.round(OrderTotal.findByTitleAndOrder('Grand Total', orderInstance).value)}
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <br/>
                    <br/>
                </td>
            </tr>
        </table>
    </g:each>
</div>
</body>
</html>
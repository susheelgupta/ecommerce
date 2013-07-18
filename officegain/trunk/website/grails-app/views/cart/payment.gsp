<%@ page import="com.officegain.enigma.base.OrderTotal; com.officegain.enigma.base.Product; com.officegain.enigma.base.Manufacturer;org.springframework.context.annotation.Bean;" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Shopkul.com</title>
</head>

<body>
<div id="main_container"><br>
<table align="center" style="vertical-align: middle">
    <tbody>
    <tr>
        <td><img border="0" alt="Shipping Address" src="${resource(dir: 'images', file: 'shipping_address_unselected.png')}"></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img align="middle" src="${resource(dir: 'images', file: 'arrow.png')}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td><img border="0" alt="Review &amp; Pay" src="${resource(dir: 'images', file: 'review_and_pay_selected.png')}"></td>
    </tr>
    </tbody>
</table><br>
<table width="90%" border="0" style="margin-left: 5%;">
<tbody>
<tr>
    <td colspan="2"><br><br>

        <div style="color: #000000" class="cartTopContent">Your Order Details<br> <br>
            Order Id:
            <span style="font-weight: normal;">
                ${orderInstance.id}
            </span>
        </div>
    </td>
</tr>
<tr>
    <td width="30%" valign="top">
        <table width="100%" cellspacing="0" cellpadding="0">
            <tbody>
            <tr>
                <td>
                    <table width="100%" cellspacing="0" cellpadding="0" border="0" align="left" id="cartTable">
                        <tbody>
                        <tr>
                            <td class="cartTop">
                                <div class="cartTopContent">Shipping Address</div>
                            </td>
                        </tr>
                        <tr>
                            <td width="100%" valign="top" style="padding: 10px;" class="cartLineBreak cartRow2KeyText">
                                <b>${orderInstance.customerName}</b>
                                <br>${orderInstance.customerStreetAddress}
                                <br>${orderInstance.customerState} - ${orderInstance.customerPostalCode}
                                <br>${orderInstance.customerCity}
                                <br>${orderInstance.customerCountry}
                                <br>Ph-${orderInstance.customerTelephone}
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <br>
                </td>
            </tr>
            <tr>
                <td><br>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <g:link controller="cart" action="showAddresses">
                        <img border="0" src="${resource(dir: 'images', file: 'change_shipping_address.png')}" alt="Change Shipping Address">
                    </g:link>
                </td>
            </tr>
            </tbody>
        </table>
    </td>
    <td width="70%" valign="top">
        <table width="100%" cellspacing="0" cellpadding="0" align="left" id="cartTable">
            <tbody>
            <tr>
                <td class="cartTop">
                    <div class="cartTopContent">
                        Books
                    </div>
                </td>
                <td class="cartTop">
                    <div class="cartTopContent">
                        MRP
                    </div>
                </td>
                <td class="cartTop">
                    <div class="cartTopContent">
                        Amount
                    </div>
                </td>
                <td class="cartTop">
                    <div class="cartTopContent">
                        SubTotal
                    </div>
                </td>
            </tr>
            <g:each in="${orderProducts}" var="orderProduct">
                <tr>
                    <td width="50%" valign="top" class="cartMiddleRowLineBreak cartRow2ValueText" style="padding: 20px;">${orderProduct.productName}<br>
                        <span style="font-weight: normal">
                            by
                        </span>
                        <span style="color: #888888">
                            ${orderProduct.productName}
                        </span>
                    </td>
                    <td class="cartMiddleRowLineBreak cartRow2ValueText">
                        <img src="${resource(dir: 'images', file: 'inr_symbol.gif')}" alt="Rs"
                             style="margin-right: 2px; vertical-align: middle;">${orderProduct.productPrice}
                    </td>
                    <td class="cartMiddleRowLineBreak cartRow2ValueText">
                        <img src="${resource(dir: 'images', file: 'inr_symbol.gif')}" alt="Rs"
                             style="margin-right: 2px; vertical-align: middle;">${orderProduct.productPrice}*${orderProduct.productQuantity}
                    </td>
                    <td class="cartMiddleRowLineBreak cartRow2ValueText"><img src="${resource(dir: 'images', file: 'inr_symbol.gif')}" alt="Rs"
                                                                              style="margin-right: 2px; vertical-align: middle;">${Math.round(orderProduct.productPrice * orderProduct.productQuantity)}
                    </td>
                </tr>
            </g:each>
            <tr>
                <td align="right" colspan="4">
                    <table width="100%" cellspacing="5" cellpadding="0" border="0" align="right" style="font-size: 18px; color: rgb(0, 0, 0);">
                        <tbody>
                        <tr>
                            <td width="80%" align="right">Total</td>
                            <td width="20%" align="left" style="color: rgb(102, 102, 102); padding-left: 20px;">
                                <img src="${resource(dir: 'images', file: 'inr_symbol.gif')}" alt=""
                                     style="margin-right: 2px; vertical-align: middle;">${Math.round(OrderTotal.findByTitleAndOrder('Total', orderInstance).value)}
                            </td>
                        </tr>
                        <tr>
                            <td width="80%" align="right">Tax</td>
                            <td width="20%" align="left" style="color: rgb(102, 102, 102); padding-left: 20px;">
                                <img src="${resource(dir: 'images', file: 'inr_symbol.gif')}" alt=""
                                     style="margin-right: 2px; vertical-align: middle;">${Math.round(OrderTotal.findByTitleAndOrder('Tax', orderInstance).value)}
                            </td>
                        </tr>
                        <tr>
                            <td width="80%" align="right">Grand Total</td>
                            <td width="20%" style="color: rgb(102, 102, 102); padding-left: 20px;">
                                <img src="${resource(dir: 'images', file: 'inr_symbol.gif')}" alt=""
                                     style="margin-right: 2px; vertical-align: middle;">${Math.round(OrderTotal.findByTitleAndOrder('Grand Total', orderInstance).value)}
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
    <td colspan="2"><br><br>
    </td>
</tr>
<tr colspan="2">
    <td><br><br>
    </td>
</tr>
<tr>
    <td width="100%" colspan="2">
        <table width="100%" cellspacing="0" cellpadding="0" border="0" align="left" id="cartTable">
            <tbody>
            <tr>
                <td colspan="4" class="cartTop">
                    <div class="cartTopContent">Payment Options</div>
                </td>
            </tr>
            <tr>
                <td width="25%" valign="top" style="padding: 10px;" class="cartLineBreak cartRow2KeyText">Pay by <big><strong>Credit Card</strong></big><br><br>
                    <input type="image" src="${resource(dir: 'images', file: 'pay_using_creditcard.png')}" alt="Pay Using Credit Card" name="cc" id="cc"
                           title="Pay using VISA and Mastercard Credit Cards">
                </td>
                <td width="25%" valign="top" style="padding: 10px;" class="cartLineBreak cartRow2KeyText">Pay by <big><strong>Net Banking</strong></big><br><br>
                    <select onchange="" style="width: 150px;" name="pay_netBankingCards" id="pay_netBankingCards">
                        <option value="0">Select Bank</option>
                        <option value="ABN_N">ABN AMRO Bank</option>
                        <option value="UTI_N">AXIS Bank</option>
                        <option value="ALB_N">Allahabad Bank</option>
                        <option value="BOBAH_N">Bank of Bahrain and Kuwait</option>
                        <option value="BOBCO_N">Bank of Baroda Corp Accnt</option>
                        <option value="BOB_N">Bank of Baroda Retail Accnt</option>
                        <option value="BOI_N">Bank of India</option>
                        <option value="BOM_N">Bank of Maharashtra</option>
                        <option value="BOR_N">Bank of Rajasthan</option>
                        <option value="CBIBAN_N">Citibank</option>
                        <option value="CITIUB_N">City Union Bank</option>
                        <option value="COP_N">Corporation Bank</option>
                        <option value="DEUNB_N">Deutsche Bank</option>
                        <option value="DHNB_N">Dhanlaxmi Bank</option>
                        <option value="FDEB_N">Federal Bank</option>
                        <option value="HDEB_N">HDFC Bank</option>
                        <option value="IDEB_N">ICICI Bank</option>
                        <option value="IDBI_N">IDBI Bank</option>
                        <option value="ING_N">ING Vysya Bank</option>
                        <option value="NIIB_N">IndusInd Bank</option>
                        <option value="JKB_N">Jammu &amp; Kashmir Bank</option>
                        <option value="KTKB_N">Karnataka Bank</option>
                        <option value="KVB_N">Karur Vysya Bank</option>
                        <option value="NKMB_N">Kotak Mahindra Bank</option>
                        <option value="LVB_N">Lakshmi Vilas Bank</option>
                        <option value="OBC_N">Oriental Bank of Commerce</option>
                        <option value="PNBCO_N">Punjab National Bank Corp Accnt</option>
                        <option value="NPNB_N">Punjab National Bank Retail Accnt</option>
                        <option value="SIB_N">South Indian Bank</option>
                        <option value="STDC_N">Standard Chartered Bank</option>
                        <option value="SBI_N">State Bank of India</option>
                        <option value="SBT_N">State Bank of Travancore</option>
                        <option value="SYNBK_N">Syndicate Bank</option>
                        <option value="UNI_N">Union Bank of India</option>
                        <option value="VJYA_N">Vijaya Bank</option>
                        <option value="YES_N">YES Bank</option>
                    </select><br><br>
                    <input type="image" src="${resource(dir: 'images', file: 'pay_using_netbanking.png')}" alt="Pay Using Net Banking" name="nb" id="nb"
                           title="Pay Using Net Banking">
                </td>
                <td width="25%" valign="top" style="padding: 10px;" class="cartLineBreak cartRow2KeyText">
                    Pay by <big><strong>ATM</strong>/<strong>Debit Card</strong></big><br><br>
                    <select id="pay_debitCards" style="width: 150px;" name="pay_debitCards">
                        <option value="0">Select Bank</option>
                        <option value="CANVIS_N">Canara Bank</option>
                        <option value="CBIDEB_N">Citibank</option>
                        <option value="PNBVIS_N">Punjab National Bank</option>
                        <option value="SBIDB_N">State Bank of India</option>
                        <option value="UNIDB_N">Union Bank of India</option>
                        <option value="Oth">Other Banks</option>
                    </select><br><br>
                    <input type="image" src="${resource(dir: 'images', file: 'pay_using_debit_card.png')}" alt="Pay Using Debit Card" name="dc" id="dc"
                           title="Pay Using Debit Card">
                </td>
                <td width="25%" valign="top" style="padding: 10px;" class="cartLineBreak cartRow2KeyText">
                    Pay by <big><strong>Cheque/DD</strong></big><br><br>
                    <input type="image" src="${resource(dir: 'images', file: 'pay_using_chequeordd.png')}" class="orange_button" alt="Pay Using Cheque or DD"
                           name="ch" id="ch" title="Pay Using Cheque or DD">
                </td>
            </tr>
            </tbody>
        </table><br>
    </td>
</tr>
<tr>
    <td colspan="2"><br>
        <br>Please note:<br>
        <span>
            Checkout has been temporarily disabled. We regret the inconvenience caused and will update you as soon as it is back up again. Thank you!
        </span><br><br>
        <span>
            <small>By clicking on a "Pay" button above, you agree to Shopkul.com
                <a href="javascript:void(0); " onclick="return window.open('/terms');">Terms of Use
                </a> and agree to have read and understood the
                <a href="javascript:void(0); " onclick="return window.open('/privacy');">Privacy Policy
                </a>.
            </small>
        </span>
    </td>
</tr>
</tbody>
</table>
</div>
</body>
</html>
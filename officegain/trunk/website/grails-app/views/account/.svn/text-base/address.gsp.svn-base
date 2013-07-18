<%@ page import="com.officegain.enigma.base.Country" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Shopkul.com</title>
</head>

<body>
<div id="main_container">
    <br>
    <br>

    <div align="center" style="width: 100%">
        <a href="${request.contextPath}/account">
            <img border="0" alt="Account Settings"
                 src="${resource(dir: 'images', file: 'account_settings_unselected.png')}">
        </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="${request.contextPath}/account/address">
            <img border="0" alt="Shipping Address" src="${resource(dir: 'images', file: 'shipping_address_selected.png')}">
        </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="${request.contextPath}/account/orders">
            <img border="0" alt="My Orders" src="${resource(dir: 'images', file: 'my_orders_unselected.png')}">
        </a>
    </div>
    <br>
    <g:hasErrors bean="${command?.errors}">
        <div class="message">
            <g:renderErrors bean="${command}"/>
        </div>
    </g:hasErrors>
    <div id="messageDiv" class="message" align="center">
        <g:if test="${flash.message}"><h3><b>${flash.message}</b></h3></g:if>
    </div>
    <table width="100%">
        <tr>
            <td>
                <div align="center">
                    <div class="express_checkout_field_box">
                        <div style="color: rgb(0, 0, 0); font-size: 14px;" class="register_title">
                            <b>Existing Address</b>
                        </div>
                        <br>
                        <br>
                        <table width="100%">
                            <g:each in="${addressInstances}" var="addressInstance">
                                <tr>
                                    <td width="50%" align="center">
                                        <g:form action="deleteAddress" method="post">
                                            <input type="hidden" name="id" value="${addressInstance.id}">

                                            <div class="order_page_address_info" id="">
                                                <span>
                                                    <b>${addressInstance.firstName}</b>
                                                </span>
                                                <br>
                                                <span style="word-wrap: break-word">${addressInstance.streetAddress}</span>
                                                <br>
                                                <span>${addressInstance.city}</span><span>-${addressInstance.postalCode}</span>
                                                <br>
                                                <span>${addressInstance.state}</span>
                                                <br>
                                                <span>${addressInstance.country.name}</span>
                                                <br>
                                                <span>Phone: ${addressInstance.telephone}</span>
                                                <br>
                                            </div>
                                            <input type="image" src="${resource(dir: 'images', file: 'delete_this_address.png')}" alt="Delete this address">
                                            <br>
                                        </g:form>
                                    </td>
                                </tr>
                            </g:each>
                        </table>
                    </div>
                </div>
            </td>
        </tr>
    </table>

    <div align="center" style="font-size: 20px;">OR</div>
    <table width="100%">
        <tr>
            <td>
                <div align="center">
                    <div align="center" style="width: 50%" id="expressCheckoutDiv">
                        <g:form action='addAddress' method="post">
                            <div class="express_checkout_field_box">
                                <div style="color: rgb(0, 0, 0); font-size: 14px;" class="address_title">
                                    Enter a <b>New Shipping Address</b>
                                </div>

                                <div class="clearAll spacer15"></div>
                                <label for="address_name">Name <span class="mf">*</span></label>

                                <div class="flLt">
                                    <input type="text" id="address_name" style="width: 142px; border: 1px solid rgb(204, 204, 204); padding: 2px 3px;"
                                           name="firstName" value="${command?.firstName}">
                                </div>

                                <div class="clearAll spacer8"></div>
                                <label for="address_street_address">Address<span class="mf">*</span></label>

                                <div class="flLt">
                                    <textarea id="address_street_address" name="streetAddress" cols="2" rows="2"
                                              style="width: 300px; border: 1px solid rgb(204, 204, 204); padding: 2px 3px; height: 35px;">${command?.streetAddress}</textarea>
                                </div>

                                <div class="clearAll spacer8"></div>
                                <label for="address_city">City <span class="mf">*</span></label>

                                <div class="flLt">
                                    <input type="text" id="address_city" style="width: 90px; border: 1px solid rgb(204, 204, 204); padding: 2px 3px;"
                                           name="city" value="${command?.city}"/>
                                </div>
                                <label for="address_state" style="width: 60px; padding-right: 5px;">State <span class="mf">*</span></label>

                                <div class="flLt">
                                    <select id="address_state" style="width: 145px; border: 1px solid rgb(204, 204, 204); padding: 2px 3px;" name="state">
                                        <option value="default">Select</option>
                                        <option value="Andaman and Nicobar">Andaman &amp; Nicobar</option>
                                        <option value="Andhra Pradesh">Andhra Pradesh</option>
                                        <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                        <option value="Assam">Assam</option>
                                        <option value="Bihar">Bihar</option>
                                        <option value="Chandigarh">Chandigarh</option>
                                        <option value="Chattisgarh">Chattisgarh</option>
                                        <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                                        <option value="Daman and Diu">Daman &amp; Diu</option>
                                        <option value="Delhi">Delhi</option>
                                        <option value="Goa">Goa</option>
                                        <option value="Gujarat">Gujarat</option>
                                        <option value="Haryana">Haryana</option>
                                        <option value="Himachal Pradesh">Himachal Pradesh</option>
                                        <option value="Jammu and Kashmir">Jammu &amp; Kashmir</option>
                                        <option value="Jharkhand">Jharkhand</option>
                                        <option value="Karnataka">Karnataka</option>
                                        <option value="Kerala">Kerala</option>
                                        <option value="Madhya Pradesh">Madhya Pradesh</option>
                                        <option value="Maharashtra">Maharashtra</option>
                                        <option value="Manipur">Manipur</option>
                                        <option value="Meghalaya">Meghalaya</option>
                                        <option value="Mizoram">Mizoram</option>
                                        <option value="Nagaland">Nagaland</option>
                                        <option value="Orissa">Orissa</option>
                                        <option value="Punjab">Punjab</option>
                                        <option value="Rajasthan">Rajasthan</option>
                                        <option value="Sikkim">Sikkim</option>
                                        <option value="Tamil Nadu">Tamil Nadu</option>
                                        <option value="Tripura">Tripura</option>
                                        <option value="Uttar Pradesh">Uttar Pradesh</option>
                                        <option value="Uttarakhand">Uttarakhand</option>
                                        <option value="West Bengal">West Bengal</option>
                                    </select>
                                </div>

                                <div class="clearAll spacer8"></div>
                                <label for="country">Country <span class="mf">*</span></label>

                                <div class="flLt">
                                    <g:select id="country" style="width: 90px; border: 1px solid rgb(204, 204, 204); padding: 2px 3px;" name="country"
                                              from="${Country.list()}" optionKey="id" optionValue="name"/>
                                </div>
                                <label for="address_postcode" style="width: 68px; padding-right: 5px;">PinCode<span class="mf">*</span></label>

                                <div class="flLt">
                                    <input type="text" id="address_postcode" style="width: 135px; border: 1px solid rgb(204, 204, 204); padding: 2px 3px;"
                                           name="postalCode" value="${command?.postalCode}">
                                </div>

                                <div class="clearAll spacer8"></div>
                                <label for="address_mobile_number" style="width: 120px; padding: 4px 5px 0pt 10px;">Mobile <span class="mf">*</span></label>

                                <div class="flLt">
                                    <input type="text" id="address_mobile_number" style="width: 90px; border: 1px solid rgb(204, 204, 204); padding: 2px 3px;"
                                           name="telephone" value="${command?.telephone}">
                                </div>

                                <div class="clearAll spacer15"></div>
                                <span style="font: 12px Verdana,Arial,sans-serif; color: #FF0000;" id="wrong_data_alert">&nbsp;</span>
                                <br>

                                <div class="clearAll spacer15"></div>
                                <input type="image" src="${resource(dir: 'images', file: 'submit.png')}" alt="Submit">

                                <div class="clearAll spacer20"></div>
                            </div>
                        </g:form>
                    </div>
                </div>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
<%@ page import="com.officegain.enigma.base.Country; com.officegain.enigma.base.Product; com.officegain.enigma.base.Manufacturer;org.springframework.context.annotation.Bean;" %>
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
        <td><img border="0" alt="Shipping Address" src="${resource(dir: 'images', file: 'shipping_address_selected.png')}"></td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img align="middle" src="${resource(dir: 'images', file: 'arrow.png')}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td><img border="0" alt="Review &amp; Pay" src="${resource(dir: 'images', file: 'review_and_pay_unselected.png')}"></td>
    </tr>
    </tbody>
</table><br>
<table width="100%">
    <tbody>
    <tr>
        <td>
            <div align="center">
                <div class="express_checkout_field_box">
                    <div style="color: rgb(0, 0, 0); font-size: 14px;" class="register_title">
                        Choose an <b>Existing Address</b>
                    </div><br><br>
                    <table width="100%">
                        <tbody>
                        <tr>
                        <td width="50%" align="center">
                        <g:each in="${addressInstances}" var="addressInstance">
                            <tr>
                                <td width="50%" align="center">
                                    <g:form action="changeAddress" method="post">
                                        <input type="hidden" name="id" value="${addressInstance.id}">

                                        <div class="order_page_address_info" id="">
                                            <span>
                                                <b>${addressInstance.firstName}</b>
                                            </span><br>
                                            <span style="word-wrap: break-word">
                                                ${addressInstance.streetAddress}
                                            </span><br>
                                            <span>
                                                ${addressInstance.city}
                                            </span>
                                            <span>
                                                -${addressInstance.postalCode}
                                            </span><br>
                                            <span>
                                                ${addressInstance.state}
                                            </span><br>
                                            <span>
                                                ${addressInstance.country.name}
                                            </span><br>
                                            <span>
                                                Phone: ${addressInstance.telephone}
                                            </span><br>
                                        </div>
                                        <input type="image" src="${resource(dir: 'images', file: 'use_this_address.png')}" alt="Use this address"><br>
                                    </g:form>
                                </td>
                            </tr>
                        </g:each>
                        </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </td>
    </tr>
    </tbody>
</table><br><br>

<div align="center" style="font-size: 20px;">OR
</div>
<table width="100%">
    <tbody>
    <tr>
        <td>
            <div align="center">
                <div align="center" style="width: 50%" id="expressCheckoutDiv">
                    <form action="addAddress" method="post">
                        <div class="express_checkout_field_box">
                            <div style="color: rgb(0, 0, 0); font-size: 14px;" class="address_title">
                                Enter a <b>New Shipping Address</b>
                            </div>

                            <div class="clearAll spacer15">
                            </div>
                            <label for="address_name">Name
                                <span class="mf">*
                                </span>
                            </label>

                            <div class="flLt">
                                <input type="text" id="address_name" style="width: 142px; border: 1px solid rgb(204, 204, 204); padding: 2px 3px;"
                                       name="firstName">
                            </div>

                            <div class="clearAll spacer8">
                            </div>
                            <label for="address_street_address">Address
                                <span class="mf">*
                                </span>
                            </label>

                            <div class="flLt">
                                <textarea id="address_street_address"
                                          style="width: 300px; border: 1px solid rgb(204, 204, 204); padding: 2px 3px; overflow: auto; height: 35px;"
                                          name="streetAddress" cols="2" rows="2">
                                </textarea>
                            </div>

                            <div class="clearAll spacer8">
                            </div>
                            <label for="address_city">City
                                <span class="mf">*
                                </span>
                            </label>

                            <div class="flLt">
                                <input type="text" id="address_city" style="width: 90px; border: 1px solid rgb(204, 204, 204); padding: 2px 3px;"
                                       name="city">
                            </div>
                            <label for="address_state" style="width: 60px; padding-right: 5px;">State
                                <span class="mf">*
                                </span>
                            </label>

                            <div class="flLt">
                                <select id="address_state" style="width: 145px; border: 1px solid rgb(204, 204, 204); padding: 2px 3px;"
                                        name="state">
                                    <option value="0">Select</option>
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
                            <label for="address_postcode" style="width: 68px; padding-right: 5px;">Pincode
                                <span class="mf">*
                                </span>
                            </label>

                            <div class="flLt"><input type="text" id="address_postcode"
                                                     style="width: 135px; border: 1px solid rgb(204, 204, 204); padding: 2px 3px;" name="postalCode">
                            </div>

                            <div class="clearAll spacer8"></div>
                            <label for="address_mobile_number" style="width: 120px; padding: 4px 5px 0pt 10px;">Mobile
                                <span class="mf">*
                                </span>
                            </label>

                            <div class="flLt">
                                <input type="text" id="address_mobile_number" style="width: 90px; border: 1px solid rgb(204, 204, 204); padding: 2px 3px;"
                                       name="telephone">
                                <input type="hidden" id="address__csrf_token" value="9561bc6f7b126f595ce3a8b6455cf653" name="address[_csrf_token]">
                            </div>

                            <div class="clearAll spacer15"></div>
                            <span style="font: 12px Verdana,Arial,sans-serif; color: #FF0000;" id="wrong_data_alert">&nbsp;
                            </span><br>

                            <div class="clearAll spacer15"></div>
                            <input type="image" src="${resource(dir: 'images', file: 'submit.png')}" alt="Submit">

                            <div class="clearAll spacer20"></div>
                        </div>
                    </form>
                </div>
            </div>
        </td>
    </tr>
    </tbody>
</table>
</div>
</body>
</html>

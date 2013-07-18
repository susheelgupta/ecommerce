<%@ page import="com.officegain.enigma.base.Product; com.officegain.enigma.base.Manufacturer;org.springframework.context.annotation.Bean;" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Shopkul.com</title>
</head>

<body>
<div id="main_container">
    <div id="messageDiv" class="message" align="center">
        <g:if test="${flash.message}"><h3><b>${flash.message}</b></h3></g:if>
    </div>
    <g:if test="${shoppingCarts==null || shoppingCarts.size()==0}">
        <div align="center" class="cartTopContent">
            Your shopping cart is empty.
        </div>
        <br/><br/>

        <div align="center" style="padding-right: 20px;">
            <a href="${request.contextPath}/product/list">
                <img border="0" src="${resource(dir: 'images', file: 'go_to_homepage.png')}" alt="Go to Homepage" title="Go to Homepage"/>
            </a>
        </div>
        <br/><br/>
    </g:if>
    <g:else>
        <table width="70%" cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td align="center" class="cartTopContent"><br/>
                    Shopping Cart <br/>
                </td>
            </tr>
            <tr>
                <td>
                    <br/>

                    <div align="right" style="padding-right: 20px;">
                        <table>
                            <tr>
                                <td>
                                    <g:link controller="product" action="list">
                                        <img border="0" src="${resource(dir: 'images', file: 'add_more_books.png')}" alt="Add More Books"
                                             title="Add More Products"/>
                                    </g:link>
                                </td>
                                <td>
                                    <g:link action="checkOut">
                                        <img border="0" src="${resource(dir: 'images', file: 'checkout.png')}" alt="Checkout" title="Checkout"/>
                                    </g:link>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <br/>
                </td>
            </tr>
            <tr>
                <td>
                    <table id="cartTable" width="100%" cellspacing="0" cellpadding="0" align="center" border="0">
                        <tbody>
                        <tr>
                            <td class="cartTop">
                                <div class="cartTopContent">Products</div>
                            </td>
                        </tr>
                        <g:each in="${shoppingCarts}" var="shoppingCart">
                            <g:form action="updateProduct">
                                <input type="hidden" id="id" name="id" value="${shoppingCart.productId}"/>
                                <tr>
                                    <td width="20%" class="cartRow2KeyText">
                                        Product
                                    </td>
                                    <td class="cartRow2ValueText">
                                        :${Product.get(shoppingCart.productId).name}
                                        <br/> &nbsp;
                                        <span style="font-weight: normal">
                                            by
                                        </span>
                                        ${Product.get(shoppingCart.productId).manufacturer.name}
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"><label for="quantity">Qty</label></td>
                                    <td>
                                        <input type="text" size="1" name="quantity" id="quantity" value="${shoppingCart.quantity}"/>
                                        <input type="image" src="${resource(dir: 'images', file: 'update.png')}" alt="Update" title="Update"/>
                                    </td>

                                </tr>
                            </g:form>
                            <tr>
                                <td>
                                    <div>
                                        <g:form action="deleteProduct">
                                            <input type="hidden" id="id" name="id" value="${shoppingCart.productId}"/>
                                            <tr>
                                                <td>
                                                    <input type="image" src="${resource(dir: 'images', file: 'delete_this_address.png')}" alt="Delete"
                                                           title="Delete"/>
                                                </td>
                                            </tr>
                                        </g:form>
                                    </div>
                                </td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>

                    <div align="right" style="padding-right: 20px;">
                        <table>
                            <tr>
                                <td>
                                    <g:link controller="product" action="list">
                                        <img border="0" src="${resource(dir: 'images', file: 'add_more_books.png')}" alt="Add More Books"
                                             title="Add More Products"/>
                                    </g:link>
                                </td>
                                <td>
                                    <g:link action="checkOut">
                                        <img border="0" src="${resource(dir: 'images', file: 'checkout.png')}" alt="Checkout" title="Checkout"/>
                                    </g:link>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </g:else>
</div>
</body>
</html>
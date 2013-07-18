<%@ page import="com.officegain.enigma.website.WebsiteUtil; com.officegain.enigma.base.Manufacturer; com.officegain.enigma.base.Product;" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.raty.min.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'product.js')}"></script>
    <title>${product.name}</title>
    <resource:carousel/>
</head>

<body>
<div id="main_content">
    <input type="image" style="display: none"
           src="${resource(dir: 'images', file: 'star-off.png')}"
           alt="add to cart">

    <div class="center_content">
        <table>
            <tr>
                <td>
                    <div class="prod_box_big">
                        <table>
                            <tr>
                                <td>
                                    <div class="center_prod_box_big">
                                        <table id="mainTable" width="100%">
                                            <tr>
                                                <td valign="top">
                                                    <div class="product_img_big">
                                                        <richui:carousel direction="horizontal">
                                                            <g:each in="${product.productImages}" var="productImage">
                                                                <richui:carouselItem>
                                                                    <img src="${WebsiteUtil.productImageUrl(productImage)}"
                                                                         alt="${product.name}">
                                                                </richui:carouselItem>
                                                            </g:each>
                                                        </richui:carousel>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="details_big_box" style="width: 100%;">
                                                        <table>
                                                            <tr>
                                                                <td width="70%">
                                                                    <h1>${product.name}</h1>
                                                                    by
                                                                    <h2 style="display:inline;padding: 0px">
                                                                        <span class="manufacturer_blue">
                                                                            ${product.manufacturer.name}
                                                                        </span>
                                                                    </h2>(Manufacturer)
                                                                </td>
                                                                <td width="30%" valign="bottom">
                                                                    <g:if test="${product.available}">
                                                                        <g:form controller="cart" action="addProduct">
                                                                            <g:link controller="cart"
                                                                                    action="addProduct">
                                                                                <input type="image"
                                                                                       src="${resource(dir: 'images', file: 'add_to_cart.png')}"
                                                                                       alt="add to cart">
                                                                                <g:hiddenField name="id"
                                                                                               value="${product.id}"/>
                                                                            </g:link>
                                                                        </g:form>
                                                                    </g:if>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <table width="100%">
                                                            <tr>
                                                                <td width="50%">
                                                                    <div class="specifications"
                                                                         style="border-top: 1px dotted #CCCCCC;">
                                                                        <br>
                                                                        Officegain's Price:<span class="blue"><span
                                                                            class="price">${product.getCustomerPricing()}</span>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>

                                                        <div class="specifications">
                                                            <span class="price" style="font-size: 16px;">
                                                                <g:if test="${product.available}"><b>In Stock</b></g:if>
                                                                <g:else><b>Stock Out</b></g:else>
                                                            </span>
                                                            <br>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>

                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>

        <div class="center_prod_box_big_lower" style="margin-left: 20px; width: 935px;">
            <table>
                <tr>
                    <td valign="top" width="1000px">
                        <table cellpadding="5" cellspacing="5">
                            <g:if test="${product.description &&((String)product.description).length()>0}">
                                <tr>
                                    <td>
                                        <h1 style="text-align: left; font-size: 12px; font-family: Verdana, Arial, sans-serif;">
                                            Product Description of  ${product.name}</h1>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="text-align: justify; font-size: 12px; font-family: Verdana, Arial, sans-serif">${product.description}</div>
                                    </td>
                                </tr>
                            </g:if>
                            <tr>
                                <td>
                                    <div class="item_left_column" style="border-top-width: 0px; width: 900px;">
                                        <b><span class="item_desc_title">Product Details of ${product.name}</span></b>
                                        <span class="product_details_keys">Title:</span>
                                        <span class="product_details_values"><b><h2>${product.name}</h2></b></span>
                                        <br>
                                        <span class="product_details_keys">Manufacturer:</span>
                                        <span class="product_details_values"><b><h2>${product.manufacturer.name}</h2>
                                        </b></span>
                                        <br>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="star" data-rating="0"></div>

                                    <div class="item_left_column" style="border-top-width: 0px; width: 900px;">
                                        <g:form method="post" controller="product" action="customerReview">
                                            <g:hiddenField name="id" value="${product.id}"/>
                                            <g:hiddenField id="rating" name="rating" value="0"/>
                                            <b><span class="item_desc_title">Product Review</span></b>
                                            <g:textArea name="comment" style="width: 900px;" value=""/>
                                            <g:submitButton name="Submit" style="margin-left: 845px;"/>
                                        </g:form>
                                    </div>
                                </td>
                            </tr>
                            <%
                                if (reviewList.size() != 0) {
                                    for (reviewInstance in reviewList) {
                            %>
                            <tr>
                                <td>
                                    <div class="star" data-rating="${reviewInstance.rating}" data-readonly="true"></div>

                                    <div class="item_left_column" style="border-top-width: 0px; width: 880px;">
                                        <g:hiddenField name="id" value="${product.id}"/>
                                        <g:textArea readonly="true" name="comment"
                                                    style="background-color: #ffffb2;border: none;width: 880px; padding: 10px"
                                                    value="${reviewInstance.comment}"/>
                                        <b>
                                            <span class="item_right_column">${reviewInstance.customer.firstName} ${reviewInstance.customer.lastName}</span>
                                        </b>
                                    </div>
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>